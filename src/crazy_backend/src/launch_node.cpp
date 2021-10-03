#include "ros/ros.h"
#include <iostream>
#include "crazy_msgs/status.h"
#include "crazy_msgs/nodeReady.h"
#include "crazy_msgs/ranger.h"
#include "crazyswarm/Takeoff.h"
#include "crazyswarm/Land.h"

class launchNode {
    public:
        launchNode () 
        {
            bool launch_ready, ranger_start = 0; 
            int ranger_count = 0;
            ros::Rate loop_rate(10);

            ROS_INFO("Create Subscribers");
            //Create Subscribers to system status and ranger data
            system_sub = n.subscribe("/system_status", 1000, &launchNode::statusCallback, this);
            ranger_sub = n.subscribe("/ranger_data", 1000, &launchNode::rangerCallback, this);

            ROS_INFO("Creating Publisher");
            //Creating Publisher to system_status
            system_pub = n.advertise<crazy_msgs::status>("/system_status", 1000);
            launch_pub = n.advertise<crazy_msgs::nodeReady>("/launch_ready", 1000);

            ROS_INFO("Creating Service Clients");
            ros::ServiceClient takeoff_client = n.serviceClient<crazyswarm::Takeoff>("/cf1/takeoff");
            ros::ServiceClient land_client = n.serviceClient<crazyswarm::Land>("/cf1/land");

            while (ros::ok()) {
                //Print Launch Ready
                crazy_msgs::nodeReady launchReady;
                //Wait for existence of necessary services
                takeoff_client.waitForExistence();
                land_client.waitForExistence();
                launchReady.status = 1;
                launch_pub.publish(launchReady);
                ROS_INFO("Launch Ready");
                if (launch_ready) {
                    if (ranger_count >= 10) {
                        ROS_INFO("Launching");
                        //sleep five seconds
                        ros::Duration(5.0).sleep();
                        //launch
                        crazyswarm::Takeoff takeoffMsg;
                        takeoffMsg.request.groupMask = 0;
                        takeoffMsg.request.height = 1.0;
                        takeoffMsg.request.duration = ros::Duration(2.5);
                        takeoff_client.call(takeoffMsg);
                        //sleep ten seconds
                        ros::Duration(7.5).sleep();
                        //land
                        crazyswarm::Land landMsg;
                        landMsg.request.groupMask = 0;
                        landMsg.request.height = 0.4;
                        landMsg.request.duration = ros::Duration(2.5);
                        land_client.call(landMsg);
                        //Set system_status to Launched
                        crazy_msgs::status statusMsg;
                        statusMsg.status = "LAUNCHED";
                        system_pub.publish(statusMsg);
                    } else{
                        ROS_INFO("Waiting for Ranger Trigger");
                    }
                }
                ros::spinOnce();
                loop_rate.sleep();
            }
        }

        void statusCallback(const crazy_msgs::status& msg) 
        {
            if (msg.status == "READY") {
                launch_ready = 1; 
            } else {
                launch_ready = 0;
            }
        }
        void rangerCallback(const crazy_msgs::ranger& msg) 
        {
            if (msg.up < 508.0) {
                ++ranger_count; 
            }
        }
    private:
        ros::NodeHandle n;
        ros::Subscriber system_sub;
        ros::Subscriber ranger_sub;
        ros::Publisher system_pub;
        ros::Publisher launch_pub;
        bool launch_ready;
        bool ranger_start;
        int ranger_count;
};
int main (int argc, char **argv) {
    ROS_INFO("Initializing node");
    ros::init(argc, argv, "launch_node");
    ROS_INFO("Creating arbiterNode object");
    launchNode launchNode;
    return 0; 
}
