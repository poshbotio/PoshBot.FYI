function Search-PoshBotFYI {
    [PoshBot.BotCommand(
        CommandName = 'how'
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
        New-PoshBotTextResponse -Text 'There are no FYIs currently registered :(' -AsCode
        return
    }

    # Search FYIs
    $results = [System.Collections.ArrayList]::new()
    foreach ($item in $currentFYIs) {
        $searchResult = Communary.PASM\Select-FuzzyString -Search $FYI -Data $item.FYI -CalculateScore
        if ($searchResult) {
            $searchResult | Add-Member -MemberType NoteProperty -Name Item -Value $item
            $results.Add($searchResult) > $null
        }
    }

    if ($results.Count -eq 0) {
        New-PoshBotCardResponse -Type Warning -Text "Couldn't find a matching FYI :("
        return
    }

    # Sort by relevance
    $relevantResults = $results |
        Sort-Object -Property Score -Descending |
        Select-Object -First 10 |
        Sort-Object -Property @{e={$_.item.LastUpdated}} -Descending

    # Return response
    $nl = [Environment]::NewLine
    $response = @("Here is what I found:$nl")
    $relevantResults | ForEach-Object {
        $response += '{0}At *{1}* `@{2}` wrote in `#{3}`: {4}' -f $nl, $_.Item.LastUpdated, $_.Item.AddedBy, $_.Item.Channel, $_.Item.FYI
    }
    $text = $response -join $nl
    Write-Output $text
}
