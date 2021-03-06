﻿# Add-AADAppRoleAssignment
## SYNOPSIS
Adds an Azure AD App Role Assignment for the given user to the given servcie principal
## SYNTAX
```powershell
Add-AADAppRoleAssignment [-ServicePrincipal] <Object[]> [-User] <Object[]> [[-BaseURL] <String>] [[-APIVersion] <String>] [[-RoleID] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
Adds an Azure AD App Role Assignment for the given user to the given servcie principal
## PARAMETERS
### -ServicePrincipal &lt;Object[]&gt;
MSGraphAPI.DirectoryObject.ServicePrincipal retruned by the Get-AADServicePrincipal* cmdlets
```
Required?                    true
Position?                    1
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
Accept wildcard characters?  false
```
### -User &lt;Object[]&gt;
MSGraphAPI.DirectoryObject.User object returnedfrom the Get-AADUser* cmdltes
```
Required?                    true
Position?                    2
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
Accept wildcard characters?  false
```
### -BaseURL &lt;String&gt;
The Azure AD Graph Base URL. This is not required. Deafult
     https://graph.windows.net
```
Required?                    false
Position?                    3
Default value                https://graph.windows.net
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -APIVersion &lt;String&gt;
version og the API to use. Default is 1.6
```
Required?                    false
Position?                    4
Default value                1.6
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -RoleID &lt;String&gt;
This is the Role ID that will be added for the user. The dafault is 00000000-0000-0000-0000-000000000000
```
Required?                    false
Position?                    5
Default value                00000000-0000-0000-0000-000000000000
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
MSGraphAPI.DirectoryObject.AppRoleAssignment
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>Add-AADAppRoleAssignment -ServicePrincipal $AADServicePrincipal -User $AADUser
```


