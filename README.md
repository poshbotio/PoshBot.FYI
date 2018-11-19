# PoshBot.FYI

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
