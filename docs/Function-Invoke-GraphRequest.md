﻿# Invoke-GraphRequest
## SYNOPSIS
Submits an access reqest to the Graph API
## SYNTAX
```powershell
Invoke-GraphRequest [-AccessToken] <Object> [-Uri] <Uri> [-Method] {Default | Get | Head | Post | Put | Delete | Trace | Options | Merge | Patch} [[-Body] <Object>] [[-Headers] <IDictionary>] [[-TimeoutSec] <Int32>] [[-ContentType] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
## DESCRIPTION
This is esentially an Invoke-ebRequest wrapper that handles the Access Token lifecycle and Authorization header. This requires a valid Access Token in the form of a MSGraphAPI.Oauth.AccessToken and returns a MSGraphAPI.RequestResult Object
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
### -Uri &lt;Uri&gt;
Specifies the Uniform Resource Identifier (URI) of the Internet resource to which the web request is sent. Enter a URI. This parameter supports HTTP, HTTPS, FTP, and FILE values.
```
Required?                    true
Position?                    2
Default value
Accept pipeline input?       false
Accept wildcard characters?  false
```
### -Method &lt;WebRequestMethod&gt;
Specifies the method used for the web request. The acceptable values for this parameter are:

- Default

- Delete

- Get

- Head

- Merge

- Options

- Patch

- Post

- Put

- Trace
```
Required?                    true
Position?                    3
Default value                Default
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -Body &lt;Object&gt;
Specifies the body of the request. The body is the content of the request that follows the headers.

The Body parameter can be used to specify a list of query parameters or specify the content of the response.

When the input is a GET request and the body is an IDictionary (typically, a hash table), the body is added to the URI as query parameters. For other GET requests, the body is set as the value of the request body in the standard name=value format.

When the body is a form, or it is the output of an Invoke-GraphRequest call, Windows PowerShell sets the request content to the form fields.
```
Required?                    false
Position?                    4
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -Headers &lt;IDictionary&gt;
Specifies the headers of the web request. Enter a hash table or dictionary.

Any Authirzation header supplied here will be overwritten by what is provided in the Access Token.

To set UserAgent headers, use the UserAgent parameter. You cannot use this parameter to specify UserAgent or cookie headers.
```
Required?                    false
Position?                    5
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -TimeoutSec &lt;Int32&gt;
Specifies how long the request can be pending before it times out. Enter a value in seconds. The default value, 0, specifies an indefinite time-out.

A Domain Name System (DNS) query can take up to 15 seconds to return or time out. If your request contains a host name that requires resolution, and you set TimeoutSec to a value greater than zero, but less than 15 seconds, it can take 15 seconds or more before a WebException is thrown, and your request times out.
```
Required?                    false
Position?                    6
Default value                0
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -ContentType &lt;String&gt;
Specifies the content type of the web request.

The default value is 'application/json'
```
Required?                    false
Position?                    7
Default value                application/json
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
PS C:\>Invoke-GraphRequest -AccessToken $value1 -Uri 'Value2' -Method $value3
```


