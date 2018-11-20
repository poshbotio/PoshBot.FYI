@{
    PSDependOptions = @{
        Target = 'CurrentUser'
    }
    Pester           = @{
        Version = 'latest'
        Parameters = @{
            SkipPublisherCheck = $true
        }
    }
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
