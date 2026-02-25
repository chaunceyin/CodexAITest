#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WS_DIR="$REPO_ROOT/ros2_ws"

if [ ! -f /opt/ros/humble/setup.bash ]; then
  echo "[ERROR] 未找到 /opt/ros/humble/setup.bash，请先安装 ROS 2 Humble。"
  exit 1
fi

if ! command -v colcon >/dev/null 2>&1; then
  echo "[ERROR] 未找到 colcon，请先安装 colcon。"
  echo "        Ubuntu 示例：sudo apt install python3-colcon-common-extensions"
  exit 1
fi

# shellcheck source=/dev/null
source /opt/ros/humble/setup.bash

cd "$WS_DIR"
colcon build
# shellcheck source=/dev/null
source install/setup.bash

exec ros2 run demo_ros2_cpp hello_node
