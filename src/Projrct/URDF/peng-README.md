URDF的逻辑是，
moveit启动时，里面的battery_sleeve.launch---ur10e_moveit_planning_execution.launch---move_group.launch---planning_context.launch--(find ur_socket_describe)/urdf/mir_ur.xacro最后一个是启动自己的urdf

自己的urdf定义在ur_socket_describe/urdf/mir_ur.xacro，这里面把各个组成的urdf都拿过来并且拼接在一起。具体包括：

机械臂的，在本URDF/ur_description/urdf/inc/mir_ur10e_macro.xacro"
小车的从官方的小车包里调过来的
箱体在 mir_box
末端执行器在 end_effector
