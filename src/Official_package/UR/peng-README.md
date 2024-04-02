URs是驱动，不用动，其中后四个文件夹应该都有用到

ur10e是moveit配置文件，里面的battery_sleeve.launch---ur10e_moveit_planning_execution.launch---move_group.launch---planning_context.launch--(find ur_socket_describe)/urdf/mir_ur.xacro最后一个是启动自己的urdf
这其中的srdf是与仿真相关的启动文件，如果要仿真可能会用到<param name="$(arg robot_description)_semantic" textfile="$(find ur10e_moveit_config)/config/ur10e_socket_edit.srdf" /> 


example_organization_ur_launch这个是UR的启动，ip要在这里改（ex_mir_ur10e.launch里）
