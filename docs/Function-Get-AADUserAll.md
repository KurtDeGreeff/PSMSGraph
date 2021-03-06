﻿# Get-AADUserAll
## SYNOPSIS
Returns All Azure AD Users
## SYNTAX
```powershell
Get-AADUserAll [-AccessToken] <Object> [[-filter] <String>] [[-BaseUrl] <String>] [[-APIVersion] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
Returns All Azure AD Users
## PARAMETERS
### -AccessToken &lt;Object&gt;
MSGraphAPI.Oauth.AccessToken object obtained from Get-GraphOauthAccessToken.
```
Required?                    true
Position?                    1
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
Accept wildcard characters?  false
```
### -filter &lt;String&gt;
The Azure AD Graph API $filter to be applied. The string will be url encoded.
```
Required?                    false
Position?                    2
Default value
Accept pipeline input?       true (ByPropertyName)
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
### -APIVersion &lt;String&gt;
version of the API to use. Default is 1.6
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
MSGraphAPI.DirectoryObject.User
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$AADUsers = Get-AADUserAll -AccesToken $GraphAccessToken
```


