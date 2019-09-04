properties {
    # Disable "compiling" module into monolithinc PSM1.
    # This modifies the default behavior from the "Build" task
    # in the PowerShellBuild shared psake task module
    $PSBPreference.Build.CompileModule = $true
}

task default -depends Test

task Build -FromModule PowerShellBuild -Version '0.4.0'

task CopyToPoshBotPlugins -depends Build {
    Copy-Item -Path $PSBPreference.Build.ModuleOutDir -Destination "~/.poshbot/plugins/$($PSBPreference.General.ModuleName)" -Recurse -Force
}
