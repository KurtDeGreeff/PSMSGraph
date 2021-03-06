﻿# Remove-AADAppRoleAssignment
## SYNOPSIS
Removes an App Role Assignment
## SYNTAX
```powershell
Remove-AADAppRoleAssignment [-AppRoleAssignment] <Object[]> [[-BaseUrl] <String>] [[-APIVersion] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
Removes an App Role Assignment. This can be used to remove a users access to an Azure AD SaaS Application (Service Principal)
## PARAMETERS
### -AppRoleAssignment &lt;Object[]&gt;
MSGraphAPI.DirectoryObject.AppRoleAssignment object
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
version og the API to use. Default is 1.6
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
MSGraphAPI.RequestResult
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$Results = $AADAppAssignments | Remove-AADAppRoleAssignment
```


