﻿# Update-GraphOAuthAccessToken
## SYNOPSIS
Refreshes a Graph Oauth Access Token
## SYNTAX
```powershell
Update-GraphOAuthAccessToken [-AccessToken] <PSObject[]> [[-BaseUrl] <String>] [[-RenewalPeriod] <Int32>] [-Force] [-PassThru] [<CommonParameters>]
```
## DESCRIPTION
Requests a refresh of the Graph OAuth Access Token from Graph.
## PARAMETERS
### -AccessToken &lt;PSObject[]&gt;
Graph OAUth Access Token Object created by Get-GraphOAuthAccessToken.
```
Required?                    true
Position?                    1
Default value
Accept pipeline input?       true (ByValue, ByPropertyName)
Accept wildcard characters?  false
```
### -BaseUrl &lt;String&gt;
Base Url for the OAuth Submission end point. This is not required. Defaults to 
    https://login.microsoftonline.com/common/oauth2/token
```
Required?                    false
Position?                    2
Default value                https://login.microsoftonline.com/common/oauth2/token
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -RenewalPeriod &lt;Int32&gt;
The renewal period in seconds. The default is 300 (5 minutes). This is the number of seconds before the expiration date that a token will be refreshed. This will prevent the access_token from being expired should the time between the token provider and the local system be offset. If the token is already expired, this will be ignored.
```
Required?                    false
Position?                    3
Default value                300
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -Force &lt;SwitchParameter&gt;
By default, a Token will not be renewed if it is not expired. Using force will attempt a token refresh the token even if it is not expired.
```
Required?                    false
Position?                    named
Default value                False
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -PassThru &lt;SwitchParameter&gt;
Indicates that the cmdlet sends items from the interactive window down the pipeline as input to other commands. By default, this cmdlet does not generate any output.
```
Required?                    false
Position?                    named
Default value                False
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
PS C:\>$GraphToken = $GraphToken | Update-GraphOAuthAccessToken
```


