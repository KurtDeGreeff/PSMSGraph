﻿# New-GraphOauthAccessToken
## SYNOPSIS
Creates an MSGraphAPI.Oauth.AccessToken Object
## SYNTAX
```powershell
New-GraphOauthAccessToken [-Application] <Object> [-AccessTokenCredential] <PSCredential> [-RefreshTokenCredential] <PSCredential> [-RequestedDate] <DateTime> [-Response] <PSObject> [-ResponseHeaders] <PSObject> [-LastRequestDate] <DateTime> [[-Session] <WebRequestSession>] [[-GUID] <Guid>] [<CommonParameters>]
```
## DESCRIPTION
This creates a MSGraphAPI.Oauth.AccessToken object. This only creates the objects used in this module. It does not make any API calls. To retrieve an OAuth Access Token, use Get-GraphOauthAccessToken
## PARAMETERS
### -Application &lt;Object&gt;
A MSGraphAPI.Application object. See New-GraphApplication
```
Required?                    true
Position?                    1
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -AccessTokenCredential &lt;PSCredential&gt;
A PSCredential Object containing the access_token as a password. Username is ignored.
```
Required?                    true
Position?                    2
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -RefreshTokenCredential &lt;PSCredential&gt;
A PSCredential Object containing the refresh_token as a password. Username is ignored.
```
Required?                    true
Position?                    3
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -RequestedDate &lt;DateTime&gt;
The date and time the current access_token was requested
```
Required?                    true
Position?                    4
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -Response &lt;PSObject&gt;
A PSObject containing the last response from the API converted from JSON and striped of the access_token and refresh_token
```
Required?                    true
Position?                    5
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -ResponseHeaders &lt;PSObject&gt;
A headers dictionary retruned from the API.
```
Required?                    true
Position?                    6
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -LastRequestDate &lt;DateTime&gt;
A datetime of the last API call made using thie token.
```
Required?                    true
Position?                    7
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -Session &lt;WebRequestSession&gt;
The Session object used to access the API. This creates a consistent experience accross API cals by mimicing a browser session.
```
Required?                    false
Position?                    8
Default value
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -GUID &lt;Guid&gt;
A GUID to identify the Graph OAuth Token Object. If one is not provided, a new GUID will be generated. This is used for internal reference only and is not consumed by the Graph API.
```
Required?                    false
Position?                    9
Default value                [Guid]::NewGuid()
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
## INPUTS

## OUTPUTS
MSGraphAPI.Oauth.AccessToken
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>New-GraphOauthAccessToken -Application $GraphApp -AccessTokenCredential $AccessTokenCredential -RefreshTokenCredential $RefreshTokenCredential -RequestedDate (get-date) -Response $Response -ResponseHeaders $Result.Headers -LastRequestDate (get-date)
```


