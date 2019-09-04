@{
    PSDependOptions = @{
        Target = 'CurrentUser'
    }
    Pester = @{
        Version    = 'latest'
        Parameters = @{
            SkipPublisherCheck = $true
        }
    }
    PoshBot          = '0.11.8'
    psake            = '4.8.0'
    BuildHelpers     = '2.0.10'
    PowerShellBuild  = '0.4.0'
    'Communary.PASM' = '1.0.43'
}
