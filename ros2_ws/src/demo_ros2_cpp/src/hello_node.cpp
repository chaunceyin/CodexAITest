#include <chrono>
#include <memory>

#include "rclcpp/rclcpp.hpp"

using namespace std::chrono_literals;

class HelloNode : public rclcpp::Node {
public:
  HelloNode() : Node("hello_node") {
    RCLCPP_INFO(this->get_logger(), "Hello from ROS 2 C++ (demo_ros2_cpp)!");

    timer_ = this->create_wall_timer(1s, [this]() {
      RCLCPP_INFO(this->get_logger(), "Node is alive...");
    });
  }

private:
  rclcpp::TimerBase::SharedPtr timer_;
};

int main(int argc, char * argv[]) {
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<HelloNode>());
  rclcpp::shutdown();
  return 0;
}
