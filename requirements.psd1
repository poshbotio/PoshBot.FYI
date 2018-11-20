@{
    PSDependOptions = @{
        Target = 'CurrentUser'
    }
    Pester           = '4.4.2'
    psake            = @{
        Parameters = @{
            AllowPreRelease = $true
            RequiredVersion = '4.8.0-alpha'
        }
    }
    BuildHelpers     = '2.0.0'
    PowerShellBuild  = '0.2.0'
    'Communary.PASM' = '1.0.43'
}
