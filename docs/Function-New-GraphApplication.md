﻿# New-GraphApplication
## SYNOPSIS
Creates a Graph Application object
## SYNTAX
```powershell
New-GraphApplication [-Name] <String> [-ClientCredential] <PSCredential> [-RedirectUri] <String> [-Tenant] <String> [[-Description] <String>] [[-GUID] <Guid>] [<CommonParameters>]
```
## DESCRIPTION
Creates a Graph Application object containing data used by various cmdltes to define the parameters of the App registered on Azure AD. This does not make any calls to Azure or the Gtaph API. The Application will be inbeded in the Graph OAuthToken objects.

    The MSGraphAPI.Application object contains the following properties:

    Name             Name of the Application

    Description      Description of the Application

    UserAgent        The User-Agent header the Application will use to access the Graph API

    ClientID         The Client ID of the Registered Azure App

    RedirectUri      The Redirect URI of the Registered Azure App

    ClientCredential A PS Crednetial containing the Client ID as the username and the Client Secret as the password

    UserCredential   The Reddit Username and password of the developer account used for a Script application

    GUID             A GUID to identitfy the application wihin this module (not consumed or used by Azure or Graph)
## PARAMETERS
### -Name &lt;String&gt;
Name of the Graph App. This does not need to match the name registered on Azure. It is used for convenient identification and ducomentation purposes only.
```
Required?                    true
Position?                    1
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -ClientCredential &lt;PSCredential&gt;
A PScredential object containging the Client ID as the Username and the Client Secret as the password.
```
Required?                    true
Position?                    2
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -RedirectUri &lt;String&gt;
Redirect URI as registered on Azure for the App. This must match exactly as entered in the App definition or authentication will fail.
```
Required?                    true
Position?                    3
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -Tenant &lt;String&gt;
The Azure/Office365 Tenant ID. e.g. adadtum.onmicrosft.com
```
Required?                    true
Position?                    4
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -Description &lt;String&gt;
Description of the Graph App. This is not required or used for anything. It is provided for convenient identification and documentation purposes only.
```
Required?                    false
Position?                    5
Default value
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
### -GUID &lt;Guid&gt;
A GUID to identify the application. If one is not perovided, a new GUID will be generated.
```
Required?                    false
Position?                    6
Default value                [system.guid]::NewGuid()
Accept pipeline input?       true (ByPropertyName)
Accept wildcard characters?  false
```
## INPUTS

## OUTPUTS
MSGraphAPI.Application
## NOTES

## EXAMPLES
### EXAMPLE 1
```powershell
PS C:\>$ClientCredential = Get-Credential

PS C:\> $Params = @{
Name = 'MyGraphApp'
Description = 'My Graph Application!'
ClientCredential = $ClientCredential
RedirectUri = 'https://adataum/ouath?'
UserAgent = 'Windows:PowerShell:GraphApplication'
}
PS C:\> $GraphApp = New-GraphApplication @Params
```


