﻿# Get-AADGroupMembers
## SYNOPSIS
Returns the members for the given Group
## SYNTAX
```powershell
Get-AADGroupMembers [-Group] <Object[]> [[-BaseUrl] <String>] [[-APIVersion] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
Returns the members for the given Group
## PARAMETERS
### -Group &lt;Object[]&gt;
A MSGraphAPI.DirectoryObject.Group object retruned by Get-AADGroup* cmdlets
```
Required?                    true
Position?                    1
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
Accept wildcard characters?  false
```
### -BaseUrl &lt;String&gt;
The Azure AD Graph Base URL. This is not required. Deafult 
    https://graph.windows.net
```
Required?                    false
Position?                    2
Default value                https://graph.windows.net
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -APIVersion &lt;String&gt;
version of the API to use. Default is 1.6
```
Required?                    false
Position?                    3
Default value                1.6
Accept pipeline input?       true (ByPropertyName)
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
MSGraphAPI.DirectoryObject.User
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$AADGroupMembers = $AADGroup | Get-AADGroupMembers
```


