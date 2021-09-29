#include "ros/ros.h"
#include "crazyswarm/GenericLogData.h"
#include "crazy_msgs/ranger.h"
#include "crazy_msgs/stateEstimate.h"
#include <iostream>

void sensorCallback(const crazyswarm::GenericLogData msg) {
    // Publish to the two other topics you are publishing to

    //print the data you are seeing:
    //std::cout << msg.values[0] << "\n";
    //float dataArray[] = msg.data.values;
    //ROS_INFO("I heard: [%f]", msg.values[0]);

    //ROS_INFO("Publishing State Estimate");
    //crazy_backend::stateEstimate stateMsg;
    //stateMsg.data = {msg.data[0], msg.data[1], msg.data[2]}
    //state_pub.publish(stateMsg);

    //ROS_INFO("Publishing Ranger Data");
    //crazy_backend::ranger rangerMsg;
    //rangerMsg.data = {msg.data[3], msg.data[4], msg.data[5], msg.data[6], msg.data[7], msg.data[8]}
    //state_pub.publish(rangerMsg);

}

int main (int argc, char **argv) {
    ROS_INFO("Initializing node");
    ros::init(argc, argv, "sensor_interface");
    ros::NodeHandle n;
    //ROS_INFO("Creating Subscriber");
    //Subscribe to crazy_log
    //ros::Subscriber sub = n.subscribe("/cf1/crazylog", 1000, sensorCallback);

    ROS_INFO("Creating Publishers");
    //Create Publishers
    //ros::Publisher state_pub = n.advertise<stateEstimate>("stateEstimate_data", 1000);
    //ros::Publisher range_pub = n.advertise<crazy_backend::ranger>("ranger_data", 1000);


    ros::spin();

    return 0; 
}
