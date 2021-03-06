workspace "vulkan-test"
   configurations { "Debug", "Release" }

project "vulkan-test"
	kind "ConsoleApp"
	language "C++"
	architecture "x64"
	cppdialect "C++17"
	toolset "clang"
	targetdir "bin/%{cfg.buildcfg}"
	defines{"WIN32", "_CONSOLE"}

	files { 
		"src/**.h", "src/**.hpp",
		"src/**.c", "src/**.cpp"
	}

	-- DEPENDENCIES

	includedirs { 
		"deps/include",
		"C:/VulkanSDK/1.2.170.0/Include"
	 }

	libdirs {
		"deps/glfw",
		"C:/VulkanSDK/1.2.170.0/Lib"
	}

	links {
		"glfw3",
		"vulkan-1"
	}

	-- add your dlls here to be copied to build folder:
	--postbuildcommands {
	--	"{COPY} pathtodll/file.dll %{cfg.targetdir}"
	--}

	buildoptions{
		"-openmp",
		"-verbose"
	}

	filter "configurations:Debug"
		defines{"_DEBUG"}
		symbols "On"

	filter "configurations:Release"
		defines {"NDEBUG"}
		optimize "On"