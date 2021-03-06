﻿# Get-AADGroupByDisplayName
## SYNOPSIS
Retrieves an Azure AD Group by the Display name
## SYNTAX
```powershell
Get-AADGroupByDisplayName [-AccessToken] <Object> [-DisplayName] <String[]> [[-BaseUrl] <String>] [[-APIversion] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
Retrieves an Azure AD Group by the Display Name
## PARAMETERS
### -AccessToken &lt;Object&gt;
MSGraphAPI.Oauth.AccessToken object obtained from Get-GraphOauthAccessToken.
```
Required?                    true
Position?                    1
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -DisplayName &lt;String[]&gt;
The Group's Display Name. This must be an exact match and does not support wildcards
```
Required?                    true
Position?                    2
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
Accept wildcard characters?  false
```
### -BaseUrl &lt;String&gt;
The Azure AD Graph Base URL. This is not required. Deafult 
    https://graph.windows.net
```
Required?                    false
Position?                    3
Default value                https://graph.windows.net
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -APIversion &lt;String&gt;
version og the API to use. Default is 1.6
```
Required?                    false
Position?                    4
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
MSGraphAPI.DirectoryObject.ServicePrincipal
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$AADGroup = Get-AADGroupByDisplayName -AccessToken $GraphAccessToken -DisplayName 'Adataum Finance'
```


