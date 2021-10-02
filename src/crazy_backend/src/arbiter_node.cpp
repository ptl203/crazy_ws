#include "ros/ros.h"
#include <iostream>
#include "crazy_msgs/status.h"
#include "crazy_msgs/nodeReady.h"

class arbiterNode {
    public:
        arbiterNode () 
        {
            //Status Variables
            bool launch_status, task_status, land_status = 0;

            ROS_INFO("Create Subscribers");
            //Create Subscribers
            launch_sub = n.subscribe("/launch_ready", 1000, &arbiterNode::launchCallback, this);
            task_sub = n.subscribe("/task_ready", 1000, &arbiterNode::taskCallback, this);
            land_sub = n.subscribe("/land_ready", 1000, &arbiterNode::landCallback, this);

            ROS_INFO("Creating Publisher");
            //Creating Publisher
            status_pub = n.advertise<crazy_msgs::status>("system_status", 1000);
            ROS_INFO("Created Publisher");

            while (1) {
                crazy_msgs::status statusMsg;
                if (launch_status && task_status && land_status) {
                    statusMsg.status = "READY";
                    status_pub.publish(statusMsg);
                    break;
                } else {
                    statusMsg.status = "INITIALIZING";
                    status_pub.publish(statusMsg);
                }
                ros::spinOnce();
            }
        }

        void launchCallback(const crazy_msgs::nodeReady& msg) 
        {
            // Update launch_status variable
            arbiterNode::launch_status = msg.status;
        }
        void taskCallback(const crazy_msgs::nodeReady& msg) 
        {
            // Update launch_status variable
            arbiterNode::task_status = msg.status;
        }
        void landCallback(const crazy_msgs::nodeReady& msg) 
        {
            // Update launch_status variable
            arbiterNode::land_status = msg.status;
        }
    private:
        ros::NodeHandle n;
        ros::Subscriber launch_sub;
        ros::Subscriber task_sub;
        ros::Subscriber land_sub;
        bool launch_status;
        bool task_status;
        bool land_status;
        ros::Publisher status_pub;
};
int main (int argc, char **argv) {
    ROS_INFO("Initializing node");
    ros::init(argc, argv, "arbiter_node");
    ROS_INFO("Creating arbiterNode object");
    arbiterNode arbiterNode;
    return 0; 
}
