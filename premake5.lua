project "GLM"
	kind "StaticLib"
	language "C"

    	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
		includedirs { "../GLM/" }

		files
		{
			"glm/**.hpp",
			"glm/**.cpp",
			"glm/**.inl"
		}
    
		filter "system:windows"
			systemversion "latest"
			staticruntime "On"

			defines 
			{ 
				"_GLM_WIN32",
				"_CRT_SECURE_NO_WARNINGS"
			}

		filter "configurations:Debug"
			runtime "Debug"
			symbols "on"

		filter "configurations:Release"
			runtime "Release"
			optimize "on"
