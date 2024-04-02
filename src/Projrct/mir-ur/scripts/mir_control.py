#!/usr/bin/env python
import rospy
import sys
from move_base_msgs.msg import MoveBaseActionGoal
from geometry_msgs.msg import Pose
import math
import tf

''' Send the MiR Robot to a goal and check if it is already there '''

class mirControler():
	def __init__(self):
		# Init empty variables
		self.actPose = Pose()
		self.targetPose = Pose()

		# Init Subscriber and Publisher
		rospy.Subscriber("/robot_pose", Pose, self.robotPose_callback, queue_size=1)		# get actual pose of robot
		self.pub = rospy.Publisher('move_base/goal', MoveBaseActionGoal, queue_size=10)		# published pose to drive to

		# Wait for publisher to be registered
		rospy.sleep(1)

	def robotPose_callback(self, data):
		self.actPose = data
		# print("self.actPose:",data)


	# Check if robot is at goal within thresholds
	# 这里输入的是位置允许误差，角度允许误差，当前角度rz
	def isAtGoal(self, thresholdP, thresholdO, rz):
		(r, p, y) = tf.transformations.euler_from_quaternion([self.actPose.orientation.x, self.actPose.orientation.y, self.actPose.orientation.z,self.actPose.orientation.w])
		
		print(math.fabs(self.actPose.position.x - self.targetPose.position.x))
		print(math.fabs(self.actPose.position.y - self.targetPose.position.y))
		print(math.fabs(y - float(rz) * math.pi/180))

		print(y)

		if math.fabs(self.actPose.position.x - self.targetPose.position.x) < thresholdP:
			if math.fabs(self.actPose.position.y - self.targetPose.position.y) < thresholdP:
				# if math.fabs(self.actPose.orientation.z - self.targetPose.orientation.z) < thresholdO:
				if math.fabs(y - float(rz) * math.pi/180) < thresholdO:
					return True
		return False

	# Send the MiR to a goal position
	def moveToGoal(self, x, y, rz):
		# Transform rz to radians
		rz = float(rz) * math.pi/180

		# Calculate orientation of robot in quaternions
		quats = tf.transformations.quaternion_from_euler(0, 0, rz)

		# Store the target position for isAtGoal-check
		self.targetPose.position.x = float(x)
		self.targetPose.position.y = float(y)
		self.targetPose.orientation.z = float(quats[2])
		self.targetPose.orientation.w = float(quats[3])

		# Build MiR-Message (lines which are commented out are not in MiR-Messages from the web interface)
		mirGoalMsg = MoveBaseActionGoal()
		#mirGoalMsg.header.stamp = rospy.Time.now()						# optional
		mirGoalMsg.header.frame_id = '/map' 							# Note: the frame_id must be map
		#mirGoalMsg.goal.target_pose.header.stamp = rospy.Time.now()	# optional
		mirGoalMsg.goal.target_pose.header.frame_id = '/map'			# Note: the frame_id must be map
		mirGoalMsg.goal.target_pose.pose.position.x = float(x)
		mirGoalMsg.goal.target_pose.pose.position.y = float(y)
		mirGoalMsg.goal.target_pose.pose.position.z = 0 				# z must be 0.0 (no height in the map)

		mirGoalMsg.goal.target_pose.pose.orientation.z = float(quats[2])
		mirGoalMsg.goal.target_pose.pose.orientation.w = float(quats[3])
		#mirGoalMsg.goal_id.stamp = rospy.Time.now()					# optional
		#mirGoalMsg.goal_id.id = '10'									# optional
		
		# Publish Message -> Send MiR to goal
		self.pub.publish(mirGoalMsg)
		print ("Sent MiR to goal: x " + str(x) + ", y " + str(y) + ", rz " + str(rz))
	
	def MIR_move(self, x, y, rz):
		pos_x = x
		pose_y = y
		rz = rz
		self.moveToGoal(pos_x, pose_y, rz)
		# while not mir.isAtGoal(0.2,0.1):

		# 这里调节mir移动后允许的最大误差，xy方向上和角度方向上，这个是他自己认为的他动过后的位置和世界坐标系的误差。--------------------------------
		# 但是因为激光雷达也有误差，点云和真实匹配的误差导致他对自己位置的判断本身就不准，所以误差只会更大------------------------------------------
		while not self.isAtGoal(0.07,0.07, rz):
			self.moveToGoal(pos_x, pose_y, rz)
			rospy.sleep(4)
		return True

if __name__ == '__main__':
	rospy.init_node('mirControl', anonymous=True, disable_signals=True)
	mir = mirControler()
	(r, p, y) = tf.transformations.euler_from_quaternion([mir.actPose.orientation.x, mir.actPose.orientation.y, mir.actPose.orientation.z, mir.actPose.orientation.w])
	print((mir.actPose.position.x,mir.actPose.position.y,mir.actPose.position.z),(r, p,y * 180/math.pi))
	pos_x = 17.100
	pose_y = 3.350
	rz = -160.55
	mir.MIR_move(pos_x, pose_y, rz)
	# pos_x = 18.500
	# pose_y = 4.450
	# rz = 0
	# mir.MIR_move(pos_x, pose_y, rz)
	# pos_x = 19.800
	# pose_y = 5.950
	# rz = 90.0
	# mir.MIR_move(pos_x, pose_y, rz)
	# pos_x = 18.350
	# pose_y = 8.150
	# rz = 180.0
	# mir.MIR_move(pos_x, pose_y, rz)
	# pos_x = 18.500
	# pose_y = 4.450
	# rz = 0
	# mir.MIR_move(pos_x, pose_y, rz)