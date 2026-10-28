project "JoltPhysics"
    kind "StaticLib"
    staticruntime "On"
    
    language "C++"
    cppdialect "C++17"
    
    includedirs
    {
        "./"
    }
    
    files
    {
        "Jolt/**.h",
        "Jolt/**.hpp",
        "Jolt/**.c",
        "Jolt/**.cpp"
    }
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        defines
        {
            "JPH_ENABLE_ASSERTS"
        }

    filter "configurations:Development"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        symbols "off"