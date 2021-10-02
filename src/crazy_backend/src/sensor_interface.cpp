#include "ros/ros.h"
#include "crazyswarm/GenericLogData.h"
#include "crazy_msgs/ranger.h"
#include "crazy_msgs/stateEstimate.h"
#include <iostream>

class sensorInterface {
    public:
        sensorInterface () 
        {
            ROS_INFO("Creating Publishers");
            //Create Publishers
            state_pub = n.advertise<crazy_msgs::stateEstimate>("stateEstimate_data", 1000);
            ranger_pub = n.advertise<crazy_msgs::ranger>("ranger_data", 1000);

            ROS_INFO("Creating Subscriber");
            //Subscribe to crazy_log
            sub = n.subscribe("/cf1/crazylog", 1000, &sensorInterface::sensorCallback, this);
            ROS_INFO("Created Subscriber");
        }

        void sensorCallback(const crazyswarm::GenericLogData& msg) 
        {
            // Publish to the two other topics you are publishing to

            //print the data you are seeing:
            //ROS_INFO("I heard: [%f]", msg.values[0]);

            ROS_INFO("Publishing State Estimate");
            crazy_msgs::stateEstimate stateMsg;
            stateMsg.x = msg.values[0];
            stateMsg.y = msg.values[1];
            stateMsg.z = msg.values[2];

            state_pub.publish(stateMsg);

            ROS_INFO("Publishing Ranger Data");
            crazy_msgs::ranger rangerMsg;
            rangerMsg.front = msg.values[3];
            rangerMsg.back = msg.values[4];
            rangerMsg.up = msg.values[5];
            rangerMsg.down = msg.values[6];
            rangerMsg.left = msg.values[7];
            rangerMsg.right = msg.values[8];

            ranger_pub.publish(rangerMsg);
        }
    private:
        ros::NodeHandle n;
        ros::Publisher state_pub;
        ros::Publisher ranger_pub;
        ros::Subscriber sub;
};
int main (int argc, char **argv) {
    ROS_INFO("Initializing node");
    ros::init(argc, argv, "sensor_interface");
    ROS_INFO("Creating SubPub Object");
    sensorInterface sensorinterface;
    ROS_INFO("Spinning ROS");
    ros::spin();

    return 0; 
}
