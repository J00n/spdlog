project "Spdlog"
    kind "SharedLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "src/**.h",
        "src/**.cpp"
    }

    defines
    {
        "SPDLOG_COMPILED_LIB"
    }

    includedirs
    {
        "src",
        "include"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
