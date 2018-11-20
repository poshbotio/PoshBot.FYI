@{
    PSDependOptions = @{
        Target = 'CurrentUser'
    }
    Pester           = '4.4.2'
    psake            = @{
        Version         = '4.8.0'
        AllowPreRelease = $true
    }
    BuildHelpers     = '2.0.0'
    PowerShellBuild  = '0.2.0'
    'Communary.PASM' = '1.0.43'
}
