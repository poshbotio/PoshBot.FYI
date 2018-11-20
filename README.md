# PoshBot.FYI

| AppVeyor | PS Gallery | License
|----------|------------|---------|
[![AppVeyor Build Status][appveyor-badge]][appveyor-build] | [![PowerShell Gallery][psgallery-badge]][psgallery] | [![License][license-badge]][license]

PoshBot plugin for quick and dirty FYI-type documentation in chat.

<p align="center">
    <img style="width:150px;" src="./media/fyi.jpg" alt="FYI icon">
</p>

## Overview

**PoshBot.FYI** is a [PoshBot](https://github.com/poshbotio/PoshBot) plugin that implements immutable documentation similar to [Etsy's experiment](https://codeascraft.com/2018/10/10/etsys-experiment-with-immutable-documentation/).

## Installation

To install the module from the PowerShell Gallery:

```powershell
PS C:\> Install-Module -Name PoshBot.FYI -Repository PSGallery
```

To install the plugin from within PoshBot:

```
!install-plugin PoshBot.FYI
```

## Examples

To enter a quick FYI note, use the `fyi` command.

```
!fyi to use the foo module you need to install the baz plugin first
```

To search previously entered FYIs, use the `how` command.

```
!how foo module
```

[appveyor-badge]: https://ci.appveyor.com/api/projects/status/sq3cliffmny8h81l?svg=true
[appveyor-build]: https://ci.appveyor.com/project/devblackops/poshbot-fyi
[psgallery-badge]: https://img.shields.io/powershellgallery/dt/poshbot.fyi.svg
[psgallery]: https://www.powershellgallery.com/packages/poshbot.fyi
[license-badge]: https://img.shields.io/github/license/poshbotio/poshbot.fyi.svg
[license]: https://raw.githubusercontent.com/poshbotio/PoshBot.FYI/master/LICENSE
