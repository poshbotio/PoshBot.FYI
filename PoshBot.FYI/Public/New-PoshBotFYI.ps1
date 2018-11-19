function New-PoshBotFYI {
    [PoshBot.BotCommand(
        CommandName = 'fyi'
    )]
    [cmdletbinding()]
    param(
        [parameter(Mandatory, ValueFromRemainingArguments)]
        [string]$FYI
    )

    # Get current FYIs
    $currentFYIs = @(Get-PoshBotStatefulData -Name FYIs -ValueOnly)
    if (-not $currentFYIs) {
       $currentFYIs = @()
    }

    # Resolve channel and calling user
    $channel = $global:PoshBotContext.ToName
    if ([string]::IsNullOrEmpty($channel)) {
        $channel = 'unknown'
    }
    $addedBy = $global:PoshBotContext.FromName
    if ([string]::IsNullOrEmpty($addedBy)) {
        $addedBy = 'unknown'
    }

    # Add FYI
    $item = [pscustomobject]@{
        PSTypeName  = 'PoshBot.FYI.Item'
        FYI         = $FYI
        AddedBy     = $addedBy
        Channel     = $channel
        LastUpdated = [datetime]::UtcNow.ToString('u')
    }
    $currentFYIs += $item
    Set-PoshBotStatefulData -Value $currentFYIs -Name FYIs -Depth 10

    $response = "OK, new FYI [$FYI] added."
    New-PoshBotTextResponse -Text $response -AsCode
}
