#include <iostream>
#include "GLFW/glfw3.h"

int main(int argc, char* argv[]) {
	glfwInit();

	glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);

	GLFWwindow* window = glfwCreateWindow(800, 600, "Vulkan", nullptr, nullptr);

	glfwDestroyWindow(window);

	glfwTerminate();

	return EXIT_SUCCESS;
}