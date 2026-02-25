# CodexAITest
用于测试 Codex。现在项目已调整为 **ROS 2 C++** 示例工作区，方便团队直接使用 C++ 编写 ROS 2 节点。

## 项目结构
- `ros2_ws/`：ROS 2 工作区
- `ros2_ws/src/demo_ros2_cpp/`：示例 C++ 包（`ament_cmake`）

## 快速开始（ROS 2 C++）
> 以 Ubuntu + ROS 2 Humble 为例。

1. 安装 ROS 2 并加载环境：
   ```bash
   source /opt/ros/humble/setup.bash
   ```
2. 在仓库根目录构建工作区：
   ```bash
   cd ros2_ws
   colcon build
   ```
3. 加载本地工作区环境：
   ```bash
   source install/setup.bash
   ```
4. 运行示例 C++ 节点：
   ```bash
   ros2 run demo_ros2_cpp hello_node
   ```

## 后续建议
- 在 `demo_ros2_cpp/src/` 中继续添加发布者、订阅者、服务、参数等节点。
- 如需拆分模块，可在 `ros2_ws/src/` 下新增更多 `ament_cmake` 包。
