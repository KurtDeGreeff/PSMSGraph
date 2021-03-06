﻿# Get-GraphOauthAccessToken
## SYNOPSIS
Retieves an OAuth Access Token from Microsoft
## SYNTAX
```powershell
Get-GraphOauthAccessToken [-AuthenticationCode] <Object> [[-BaseURL] <String>] [[-Resource] <String>] [[-ResultVariable] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
A detailed description of the Get-GraphOauthAccessToken function.
## PARAMETERS
### -AuthenticationCode &lt;Object&gt;
The Authentication Code returned from Get-GraphOauthAuthorizationCode
```
Required?                    true
Position?                    1
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
Accept wildcard characters?  false
```
### -BaseURL &lt;String&gt;
The Base URL used for retrieving OAuth Acces Tokens. This is not required. the default is

https://login.microsoftonline.com/common/oauth2/token
```
Required?                    false
Position?                    2
Default value                https://login.microsoftonline.com/common/oauth2/token
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -Resource &lt;String&gt;
The resource for which the OAuth Access token will be requested. The default is

    https://graph.microsoft.com

You must set the resource to match the endpoints your token will be valid for.

    Microsft Graph:              https://outlook.office.com
    Azure AD Graph API:          https://graph.windows.net
    Office 365 Unified Mail API: https://outlook.office.com

If you need to access more than one resrouce, you will need to request multiple OAuth Access Tokens and use the correct tokens for the correct endpoints.
```
Required?                    false
Position?                    3
Default value                https://graph.microsoft.com
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -ResultVariable &lt;String&gt;
Name of a varibale to store the result from the Invoke-WebRequest. This should be used for debugging only as it stores the access_token and refresh_tokens in memory as plain text.
```
Required?                    false
Position?                    4
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
MSGraphAPI.Oauth.AccessToken
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$GraphAccessToken = Get-GraphOauthAccessToken -AuthenticationCode $GraphAuthCode
```


