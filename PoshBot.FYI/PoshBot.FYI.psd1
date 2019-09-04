@{
    RootModule        = 'PoshBot.FYI.psm1'
    ModuleVersion     = '0.1.1'
    GUID              = '5afcd9ce-c02a-4a48-bdbb-8a8b391fc7c3'
    Author            = 'Brandon Olin'
    CompanyName       = 'Unknown'
    Copyright         = '(c) Brandon Olin. All rights reserved.'
    Description       = 'PoshBot plugin for quick and dirty documentation management in chat.'
    PowerShellVersion = '5.0'
    RequiredModules   = @('PoshBot', 'Communary.PASM')
    FunctionsToExport = '*'
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @()
    PrivateData       = @{
        PSData = @{
            Tags         = @('PoshBot', 'Documentation', 'FYI', 'HowTo')
            LicenseUri   = 'https://raw.githubusercontent.com/poshbotio/PoshBot.FYI/master/LICENSE'
            ProjectUri   = 'https://github.com/poshbotio/PoshBot.FYI'
            IconUri      = 'https://raw.githubusercontent.com/poshbotio/PoshBot.FYI/master/media/fyi.jpg'
            ReleaseNotes = 'https://raw.githubusercontent.com/poshbotio/PoshBot.FYI/master/CHANGELOG.md'
        }
    }
}


