#include "ros/ros.h"
#include <iostream>
#include "crazy_msgs/status.h"
#include "crazy_msgs/nodeReady.h"
#include "crazy_msgs/ranger.h"

class launchNode {
    public:
        launchNode () 
        {
            bool launch_ready, ranger_ready = 0; 
            ROS_INFO("Create Subscribers");
            //Create Subscribers to system status and ranger data
            system_sub = n.subscribe("/system_status", 1000, &launchNode::statusCallback, this);
            ranger_sub = n.subscribe("/ranger_data", 1000, &launchNode::rangerCallback, this);

            ROS_INFO("Creating Publisher");
            //Creating Publisher to system_status
            system_pub = n.advertise<crazy_msgs::status>("/system_status", 1000);
            launch_pub = n.advertise<crazy_msgs::nodeReady>("/launch_ready", 1000);

            while (1) {
                //Print Launch Ready
                crazy_msgs::nodeReady launchReady;
                launchReady.status = 1;
                launch_pub.publish(launchReady);
                if (launch_ready) {
                    if(ranger_ready) {
                        //do stuff
                    }
                }
                ros::spinOnce();
            }
        }

        void statusCallback(const crazy_msgs::status& msg) 
        {
            if (msg.status = "READY") {
                launch_ready = 1; 
            }
        }
        void rangerCallback(const crazy_msgs::nodeReady& msg) 
        {
            //Update launch_status variable
            //arbiterNode::task_status = msg.status;
        }
    private:
        ros::NodeHandle n;
        ros::Subscriber system_sub;
        ros::Subscriber ranger_sub;
        ros::Publisher system_pub;
        ros::Publisher launch_pub;
        bool launch_ready;
        bool ranger_ready;
};
int main (int argc, char **argv) {
    ROS_INFO("Initializing node");
    ros::init(argc, argv, "launch_node");
    ROS_INFO("Creating arbiterNode object");
    launchNode launchNode;
    return 0; 
}
