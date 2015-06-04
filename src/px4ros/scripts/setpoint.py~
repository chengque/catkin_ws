#!/usr/bin/env python
# vim:set ts=4 sw=4 et:
#
# Copyright 2015 UAVenture AG.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
# Updated: Tarek Taha : tarek.taha@kustar.ac.ae
#    - Changed topic names after re-factoring : https://github.com/mavlink/mavros/issues/233
 
import rospy
import thread
import threading
import time
 
from geometry_msgs.msg import PoseStamped, Quaternion
from math import *
from mavros.srv import CommandBool
from mavros.utils import *
from std_msgs.msg import Header
from std_msgs.msg import String
from sensor_msgs.msg import Imu
from sensor_msgs.msg import Temperature
from tf.transformations import quaternion_from_euler
 
class Setpoint:
 
    def __init__(self, pub, rospy):
        self.pub = pub
        self.rospy = rospy
 
        self.x = 0.0
        self.y = 0.0
        self.z = 0.0
 
        try:
            thread.start_new_thread( self.navigate, () )
        except:
            print "Error: Unable to start thread"
 
        # TODO(simon): Clean this up.
        self.done = False
        self.done_evt = threading.Event()
        sub = rospy.Subscriber('/mavros/imu/temperature', Temperature, self.reached)
 
    def navigate(self):
        rate = self.rospy.Rate(10) # 10hz
 
        msg = PoseStamped()
        msg.header = Header() 
        msg.header.frame_id = "base_footprint"
        msg.header.stamp = rospy.Time.now()
 
        while 1:
            msg.pose.position.x = self.x
            msg.pose.position.y = self.y
            msg.pose.position.z = self.z
 
            # For demo purposes we will lock yaw/heading to north.
            yaw_degrees = 0  # North
            yaw = radians(yaw_degrees)
            quaternion = quaternion_from_euler(0, 0, yaw)
            msg.pose.orientation = Quaternion(*quaternion)
 
            self.pub.publish(msg)
 
            rate.sleep()
 
    def set(self, x, y, z, delay=0, wait=True):
        self.done = False
        self.x = x
        self.y = y
        self.z = z
 
        if wait:
            rate = rospy.Rate(5)
            while not self.done:
                rate.sleep()
 
        time.sleep(delay)
 
 
    def reached(self, topic):
            #print topic.pose.position.z, self.z, abs(topic.pose.position.z - self.z)
            #print str(topic.linear_acceleration_covariance[0])+','+str(topic.linear_acceleration_covariance[1])+','+str(topic.linear_acceleration_covariance[2])+':'+str(topic.linear_acceleration_covariance[3])+','+str(topic.linear_acceleration_covariance[4])+','+str(topic.linear_acceleration_covariance[5])+':'+str(topic.linear_acceleration_covariance[6])+','+str(topic.linear_acceleration_covariance[7])+','+str(topic.linear_acceleration_covariance[8])+':';
            print topic.temperature
 
def setpoint_demo():
    pub = rospy.Publisher('/mavros/setpoint_position/local_position', PoseStamped, queue_size=10)
 
    rospy.init_node('pose', anonymous=True)
    rate = rospy.Rate(50) 
 
    setpoint = Setpoint(pub, rospy)
 
    print "Climb"
    setpoint.set(0.0, 0.0, 3.0, 0)
    setpoint.set(0.0, 0.0, 10.0, 5)
 
    print "Sink"
    setpoint.set(0.0, 0.0, 8.0, 5)
 
    print "Fly to the right"
    setpoint.set(10.0, 4.0, 8.0, 5)
 
    print "Fly to the left"
    setpoint.set(0.0, 0.0, 8.0, 5)
 
    offset_x = 0.0
    offset_y = 0.0
    offset_z = 10.0
    sides = 360
    radius = 20
 
    print "Fly in a circle"
    setpoint.set(0.0, 0.0, 10.0, 3)   # Climb to the starting height first
   
 
 
if __name__ == '__main__':
    setpoint_demo()
