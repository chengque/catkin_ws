/**
 * @brief PX4Flow plugin
 * @file px4flow.cpp
 * @author M.H.Kabir <mhkabir98@gmail.com>
 * @author Vladimir Ermakov <vooon341@gmail.com>
 *
 * @addtogroup plugin
 * @{
 */
/*
 * Copyright 2014 M.H.Kabir.
 *
 * This file is part of the mavros package and subject to the license terms
 * in the top-level LICENSE file of the mavros repository.
 * https://github.com/mavlink/mavros/tree/master/LICENSE.md
 */
#include "ros/ros.h"
#include <mavros/mavros_plugin.h>
#include <pluginlib/class_list_macros.h>


#include <mavros/Control_Refs.h>
#include <std_msgs/Float32MultiArray.h>

namespace mavplugin {
/**
 * @brief PX4 Optical Flow plugin
 *
 * This plugin can publish data from PX4Flow camera to ROS
 */
class ControlRefsPlugin : public MavRosPlugin {
public:
	ControlRefsPlugin() :
		flow_nh("~controlrefs"),
		uas(nullptr)
	{ };

	void initialize(UAS &uas_)
	{
		uas = &uas_;

		flow_nh.param<std::string>("frame_id", frame_id, "controlrefs");

		//Default rangefinder is Maxbotix HRLV-EZ4
		flow_nh.param("ranger_fov", ranger_fov, 0.0);	// TODO
		flow_nh.param("ranger_min_range", ranger_min_range, 0.3);
		flow_nh.param("ranger_max_range", ranger_max_range, 5.0);

		flow_rad_pub = flow_nh.advertise<mavros::Control_Refs>("ControlRefs", 10);
		ROS_INFO("initialize:%d",MAVLINK_MSG_ID_CONTROL_REFS);
	}

	const message_map get_rx_handlers() {
		return {
			       MESSAGE_HANDLER(MAVLINK_MSG_ID_CONTROL_REFS, &ControlRefsPlugin::handle_optical_flow_rad),
		};
	}

private:
	ros::NodeHandle flow_nh;
	UAS *uas;

	std::string frame_id;

	int ranger_type;
	double ranger_fov;
	double ranger_min_range;
	double ranger_max_range;

	ros::Publisher flow_rad_pub;

	void handle_optical_flow_rad(const mavlink_message_t *msg, uint8_t sysid, uint8_t compid) {
		mavlink_control_refs_t flow_rad;
		mavlink_msg_control_refs_decode(msg, &flow_rad);
		ROS_INFO("message controlrefs");
		std_msgs::Header header;
		header.stamp = ros::Time::now();
		header.frame_id = frame_id;

		/* Raw message with axes mapped to ROS conventions and temp in degrees celsius
		 * The optical flow camera is essentially an angular sensor, so conversion is like
		 * gyroscope. (body-fixed NED -> ENU)
		 */
/*
		Float32MultiArray flow_rad_msg ;

		flow_rad_msg.data[0]=flow_rad->theta;
		flow_rad_msg.data[1]=flow_rad->phi;
		flow_rad_msg.data[2]=flow_rad->psi;
		flow_rad_msg.data[3]=flow_rad->thrust;
*/
		auto control_ref_msg = boost::make_shared<mavros::Control_Refs>();

		control_ref_msg->theta=flow_rad.theta;
		control_ref_msg->phi=flow_rad.phi;
		control_ref_msg->psi=flow_rad.psi;
		control_ref_msg->thrust=flow_rad.thrust;
		/*control_ref_msg->theta=11;
		control_ref_msg->phi=2;
		control_ref_msg->psi=3;
		control_ref_msg->thrust=4;*/
		flow_rad_pub.publish(control_ref_msg);
	}
};
};	// namespace mavplugin

PLUGINLIB_EXPORT_CLASS(mavplugin::ControlRefsPlugin, mavplugin::MavRosPlugin)

