﻿# Import-GraphApplication
## SYNOPSIS
Imports an exported Graph Application Object
## SYNTAX
```powershell
Import-GraphApplication -Path <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]



Import-GraphApplication -LiteralPath <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
Imports an exported Graph Application Object and retruns a Graph Application Object.
## PARAMETERS
### -Path &lt;String[]&gt;
Specifies the XML files where the Graph Application Object was exported.
```
Required?                    true
Position?                    named
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
Accept wildcard characters?  false
```
### -LiteralPath &lt;String[]&gt;
Specifies the XML files where the Graph Application Object was exported. Unlike Path, the value of the LiteralPath parameter is used exactly as it is typed. No characters are interpreted as wildcards. If the path includes escape characters, enclose it in single quotation marks. Single quotation marks tell Windows PowerShell not to interpret any characters as escape sequences.
```
Required?                    true
Position?                    named
Default value
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -WhatIf &lt;SwitchParameter&gt;

```
Required?                    false
Position?                    named
Default value
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -Confirm &lt;SwitchParameter&gt;

```
Required?                    false
Position?                    named
Default value
Accept pipeline input?       false
Accept wildcard characters?  false
```
## INPUTS

## OUTPUTS
MSGraphAPI.Application
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$GraphApp = Import-GraphApplication -Path 'c:\GraphApp.xml'
```


