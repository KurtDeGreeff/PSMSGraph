﻿# Export-GraphApplication
## SYNOPSIS
Exports a Graph Application object to a file.
## SYNTAX
```powershell
Export-GraphApplication -Path <String> [-Encoding <String>] -Application <PSObject> [-WhatIf] [-Confirm] [<CommonParameters>]



Export-GraphApplication -LiterlPath <String> [-Encoding <String>] -Application <PSObject> [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
Used to Export a Graph Application object to a file so it can later be imported.
## PARAMETERS
### -Path &lt;String&gt;
Specifies the path to the file where the XML representation of the Graph Application object will be stored
```
Required?                    true
Position?                    named
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -LiterlPath &lt;String&gt;
Specifies the path to the file where the XML representation of the Graph Application object will be stored. Unlike Path, the value of the LiteralPath parameter is used exactly as it is typed. No characters are interpreted as wildcards. If the path includes escape characters, enclose it in single quotation marks. Single quotation marks tell Windows PowerShell not to interpret any characters as escape sequences.
```
Required?                    true
Position?                    named
Default value
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -Encoding &lt;String&gt;
Specifies the type of encoding for the target file. The acceptable values for this parameter are:

-- ASCII
-- UTF8
-- UTF7
-- UTF32
-- Unicode
-- BigEndianUnicode
-- Default
-- OEM

The default value is Unicode.
```
Required?                    false
Position?                    named
Default value                Unicode
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -Application &lt;PSObject&gt;
Graph Application Object to be exported.
```
Required?                    true
Position?                    named
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
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
System.IO.FileInfo, System.IO.FileInfo
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$GraphApp | Export-RedditApplication -Path 'c:\GraphApp.xml'
```


