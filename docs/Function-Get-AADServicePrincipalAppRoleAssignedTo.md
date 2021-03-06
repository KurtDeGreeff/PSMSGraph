﻿# Get-AADServicePrincipalAppRoleAssignedTo
## SYNOPSIS
Returns the App Role Assigmnets for the given Service Principal
## SYNTAX
```powershell
Get-AADServicePrincipalAppRoleAssignedTo [-ServicePrincipal] <Object[]> [[-BaseUrl] <String>] [[-APIVersion] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
Returns the App Role Assigmnets for the given Service Principal. this can be used to see what users have been assigned access to an Azure AD SaaS Application (Service Principal)
## PARAMETERS
### -ServicePrincipal &lt;Object[]&gt;
A MSGraphAPI.DirectoryObject.ServicePrincipal object retruned by Get-AADServicePrinicpalbyDisplayName or Get-AADServicePrinicpalbyId
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
MSGraphAPI.DirectoryObject.AppRoleAssignment
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$AADAppAssignments = $AADServicePrincipal | Get-AADServicePrincipalAppRoleAssignedTo
```


