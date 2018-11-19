properties {
    # Disable "compiling" module into monolithinc PSM1.
    # This modifies the default behavior from the "Build" task
    # in the PowerShellBuild shared psake task module
    $CompileModule = $true
}

task default -depends Test

task Build -FromModule PowerShellBuild -Version 0.2.0

task CopyToPoshBotPlugins -depends Build {
    Copy-Item -Path $moduleOutDir -Destination ~/.poshbot/plugins/$moduleName -Recurse -Force
}
