﻿# Get-GraphOauthAuthorizationCode
## SYNOPSIS
Retrieves an OAuth Authorization code form Microsoft
## SYNTAX
```powershell
Get-GraphOauthAuthorizationCode [-Application] <Object> [[-BaseURL] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
Retrieves an OAuth Authorization code form Microsoft for a given Graph Application. This commandlet requires an interactive session as you will need to provide your credentials and authorize the Graph Application. The OAuth Authorization code will be used to obtain an OAuth Access Token.
## PARAMETERS
### -Application &lt;Object&gt;
MSGraphAPI.Application object (See New-GraphApplication)
```
Required?                    true
Position?                    1
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
Accept wildcard characters?  false
```
### -BaseURL &lt;String&gt;
The base URL for obtaining an OAuth Authorization Code form Microsoft. This is provided in the event that a different URL is required. The default is 

    https://login.microsoftonline.com/common/oauth2/authorize
```
Required?                    false
Position?                    2
Default value                https://login.microsoftonline.com/common/oauth2/authorize
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
MSGraphAPI.Oauth.AuthorizationCode
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$GraphAuthCode = Get-GraphOauthAuthorizationCode -Application $GraphApp
```


