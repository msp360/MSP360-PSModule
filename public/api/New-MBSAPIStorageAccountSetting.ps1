function New-MBSAPIStorageAccountSetting {
    <#
    .SYNOPSIS
    Creates MBS.API.StorageAccountSetting type object.
    
    .DESCRIPTION
    Returns StorageAccountSetting type object 
    
    .PARAMETER DisplayName
    Storage account display name
    
    .PARAMETER AmazonS3
    Specify for Amazon S3 storage settings
    
    .PARAMETER AmazonS3China
    Specify for Amazon S3 China storage settings
    
    .PARAMETER Azure
    Specify for Azure storage settings
    
    .PARAMETER OpenStack
    Specify for OpenStack storage settings
    
    .PARAMETER OracleCloud
    Specify for OracleCloud storage settings
    
    .PARAMETER S3Compatible
    Specify for S3Compatible storage settings
    
    .PARAMETER Scality
    Specify for Scality storage settings
    
    .PARAMETER CenturyLink
    Specify for CenturyLink storage settings
    
    .PARAMETER ArubaCloud
    Specify for ArubaCloud storage settings
    
    .PARAMETER BackblazeB2
    Specify for Backblaze B2 storage settings
    
    .PARAMETER Cloudian
    Specify for Cloudian storage settings
    
    .PARAMETER Connectria
    Specify for Connectria storage settings
    
    .PARAMETER Constant
    Specify for Constant storage settings
    
    .PARAMETER DreamObjects
    Specify for DreamObjects storage settings
    
    .PARAMETER Dunkel
    Specify for Dunkel storage settings
    
    .PARAMETER GreenQloud
    Specify for GreenQloud storage settings
    
    .PARAMETER HostEurope
    Specify for HostEurope storage settings
    
    .PARAMETER Seeweb
    Specify for Seeweb storage settings
    
    .PARAMETER ThinkOn
    Specify for ThinkOn storage settings
    
    .PARAMETER Tiscali
    Specify for Tiscali storage settings
    
    .PARAMETER Walrus
    Specify for Walrus storage settings
    
    .PARAMETER FS
    Specify for file system storage settings
    
    .PARAMETER GoogleCloudPlatform
    Specify for Google Cloud Platform settings
    
    .PARAMETER Wasabi
    Specify for Wasabi settings
    
    .PARAMETER Minio
    Specify for Minio settings
    
    .PARAMETER ServiceAccountEmail
    Service Account Email
    
    .PARAMETER BinaryKeyAsBase64
    Binary Key as Base64 string
    
    .PARAMETER ProjectID
    Project ID
    
    .PARAMETER AccountName
    Account name
    
    .PARAMETER SharedKey
    Shared key
    
    .PARAMETER Login
    User Login
    
    .PARAMETER Pass
    User Password
    
    .PARAMETER Path
    Path to local or shared folder
    
    .PARAMETER AccessKey
    Access key
    
    .PARAMETER SecretKey
    Secret key
    
    .PARAMETER IsGovCloud
    Gov Cloud. Required only Amazon S3
    
    .PARAMETER UseNativeMultipartUpload
    Use Native Multipart Upload. Required for Aruba Cloud, Backblaze B2, Connectria, Constant, DreamObjects, Dunkel, GreenQloud, HostEurope, Seeweb, ThinkOn, Tiscali and Walrus accounts
    
    .PARAMETER HTTPEnpoint
    HTTP endpoint
    
    .PARAMETER HTTPSEndpoint
    HTTPS endpoint
    
    .PARAMETER SignatureVersion
    Signature version. Required for S3Compatible accounts
    
    .PARAMETER IgnoreCertificate
    Ignore SSL certificate
    
    .PARAMETER NotCheckCredentials
    Do not check credentials (no public access)
    
    .PARAMETER UserName
    User name
    
    .PARAMETER ApiKey
    Api Key
    
    .PARAMETER AuthService
    Authentication service
    
    .PARAMETER KeyStoneVersion
    Keystone version
    
    .PARAMETER TenantType
    Tenant Type. Required for Key stone version 2
    
    .PARAMETER Tenant
    Tenant
    
    .PARAMETER UseInternalURLs
    Use internal URLs. Required for Key stone version 2 and 3
    
    .PARAMETER DomainType
    Domain Type. Required for Key stone version 3
    
    .PARAMETER Domain
    Domain. Required for Key stone version 3
    
    .PARAMETER UseScope
    Use scope. Required for Key stone version 3
    
    .PARAMETER ProjectType
    Project type. Required for Key stone version 3 and if UseScope is true
    
    .PARAMETER Project
    Project. Required for Key stone version 3 and if UseScope is true
    
    .EXAMPLE
        New-MBSAPIStorageAccountSetting -Minio -DisplayName 'Minio Storage' -AccessKey OIUERJKHF637623KJH87 -SecretKey EWRYERYHJNBDFMNB -HTTPEnpoint https://MINIOSERVER:PORT -IgnoreCertificate $true -NotCheckCredentials $false
    
        Create Minio storage account settings

    .EXAMPLE
        New-MBSAPIStorageAccountSetting -AmazonS3 -DisplayName 'Amazon S3' -AccessKey ACCESS_KEY -SecretKey SECRET_KEY -IsGovCloud $false

        Create Amazon S3 storage account settings

    .EXAMPLE
        New-MBSAPIStorageAccountSetting -Azure -DisplayName 'Azure Storage' -AccountName ACCOUNT_NAME -SharedKey SHARED_KEY

        Create Azure storage account settings

    .INPUTS
        None

    .OUTPUTS
        MBS.API.StorageAccountSetting

    .NOTES
        Author: Alex Volkov

    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/new-mbsapistorageaccountsetting
    #>

    [CmdletBinding()]
    param (
		#
        [Parameter(Mandatory=$true, HelpMessage="Storage Account Display Name")]
        [string]$DisplayName,
		#
        [Parameter(Mandatory=$true, ParameterSetName='AmazonS3')]
        [switch]$AmazonS3,
		#
        [Parameter(Mandatory=$true, ParameterSetName='AmazonS3China')]
        [switch]$AmazonS3China,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Azure')]
        [switch]$Azure,
		#
        [Parameter(Mandatory=$true, ParameterSetName='OpenStack')]
        [switch]$OpenStack,
		#
        [Parameter(Mandatory=$true, ParameterSetName='OracleCloud')]
        [switch]$OracleCloud,
		#
        [Parameter(Mandatory=$true, ParameterSetName='S3Compatible')]
        [switch]$S3Compatible,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Scality')]
        [switch]$Scality,
		#
        [Parameter(Mandatory=$true, ParameterSetName='CenturyLink')]
        [switch]$CenturyLink,
		#
        [Parameter(Mandatory=$true, ParameterSetName='ArubaCloud')]
        [switch]$ArubaCloud,
		#
        [Parameter(Mandatory=$true, ParameterSetName='BackblazeB2')]
        [switch]$BackblazeB2,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Cloudian')]
        [switch]$Cloudian,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Connectria')]
        [switch]$Connectria,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Constant')]
        [switch]$Constant,
		#
        [Parameter(Mandatory=$true, ParameterSetName='DreamObjects')]
        [switch]$DreamObjects,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Dunkel')]
        [switch]$Dunkel,
		#
        [Parameter(Mandatory=$true, ParameterSetName='GreenQloud')]
        [switch]$GreenQloud,
		#
        [Parameter(Mandatory=$true, ParameterSetName='HostEurope')]
        [switch]$HostEurope,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Seeweb')]
        [switch]$Seeweb,
		#
        [Parameter(Mandatory=$true, ParameterSetName='ThinkOn')]
        [switch]$ThinkOn,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Tiscali')]
        [switch]$Tiscali,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Walrus')]
        [switch]$Walrus,
		#
        [Parameter(Mandatory=$true, ParameterSetName='FS')]
        [switch]$FS,
		#
        [Parameter(Mandatory=$true, ParameterSetName='GoogleCloudPlatform')]
        [switch]$GoogleCloudPlatform,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Wasabi')]
        [switch]$Wasabi,
		#
        [Parameter(Mandatory=$true, ParameterSetName='Minio')]
        [switch]$Minio,
		#
        [Parameter(Mandatory=$true, HelpMessage="Service Account Email", ParameterSetName='GoogleCloudPlatform')]
        [string]$ServiceAccountEmail,
		#
        [Parameter(Mandatory=$true, HelpMessage="Binary Key as Base64 string", ParameterSetName='GoogleCloudPlatform')]
        [string]$BinaryKeyAsBase64,
		#
        [Parameter(Mandatory=$true, HelpMessage="Project ID", ParameterSetName='GoogleCloudPlatform')]
        [string]$ProjectID,
        #
        [Parameter(Mandatory=$true, HelpMessage="Account name", ParameterSetName='Azure')]
        [string]$AccountName,
		#
        [Parameter(Mandatory=$true, HelpMessage="Shared key", ParameterSetName='Azure')]
        [string]$SharedKey,
        #
        [Parameter(Mandatory=$false, HelpMessage="Login", ParameterSetName='FS')]
        [string]$Login,
        #
        [Parameter(Mandatory=$false, HelpMessage="Password", ParameterSetName='FS')]
        [string]$Pass,
		#
        [Parameter(Mandatory=$true, HelpMessage="Path to shared data", ParameterSetName='FS')]
        [string]$Path,
		#
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='AmazonS3')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='AmazonS3China')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='S3Compatible')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Scality')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='CenturyLink')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='ArubaCloud')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='BackblazeB2')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Connectria')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Constant')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='DreamObjects')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Dunkel')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='GreenQloud')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='HostEurope')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Seeweb')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='ThinkOn')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Tiscali')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Walrus')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Wasabi')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Minio')]
        [Parameter(Mandatory=$true, HelpMessage="Access key", ParameterSetName='Cloudian')]
        [string]$AccessKey,
		#
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='AmazonS3')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='AmazonS3China')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='S3Compatible')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Scality')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='CenturyLink')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='ArubaCloud')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='BackblazeB2')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Connectria')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Constant')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='DreamObjects')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Dunkel')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='GreenQloud')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='HostEurope')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Seeweb')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='ThinkOn')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Tiscali')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Walrus')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Wasabi')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Minio')]
        [Parameter(Mandatory=$true, HelpMessage="Secret key", ParameterSetName='Cloudian')]
        [string]$SecretKey,
		#
        [Parameter(Mandatory=$true, HelpMessage="Is it a Gov Cloud account", ParameterSetName='AmazonS3')]
        [bool]$IsGovCloud = $false,
        #
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload", ParameterSetName='S3Compatible')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='ArubaCloud')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='BackblazeB2')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='Connectria')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='Constant')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='DreamObjects')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='Dunkel')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='GreenQloud')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='HostEurope')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='Seeweb')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='ThinkOn')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='Tiscali')]
        [Parameter(Mandatory=$true, HelpMessage="Use Native Multipart Upload.", ParameterSetName='Walrus')]
        [bool]$UseNativeMultipartUpload,
        #
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='S3Compatible')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='Scality')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='CenturyLink')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='ArubaCloud')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='BackblazeB2')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='Connectria')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='Constant')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='DreamObjects')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='Dunkel')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='GreenQloud')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='HostEurope')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='Seeweb')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='ThinkOn')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='Tiscali')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='Walrus')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='Minio')]
        [Parameter(Mandatory=$false, HelpMessage="HTTP endpoint", ParameterSetName='Cloudian')]
        [string]$HTTPEnpoint,
        #
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='S3Compatible')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='Scality')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='CenturyLink')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='ArubaCloud')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='BackblazeB2')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='Connectria')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='Constant')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='DreamObjects')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='Dunkel')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='GreenQloud')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='HostEurope')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='Seeweb')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='ThinkOn')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='Tiscali')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='Walrus')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='Minio')]
        [Parameter(Mandatory=$false, HelpMessage="HTTPS endpoint", ParameterSetName='Cloudian')]
        [string]$HTTPSEndpoint,
        #
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='Scality')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='S3Compatible')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='CenturyLink')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='ArubaCloud')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='BackblazeB2')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='Connectria')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='Constant')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='DreamObjects')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='Dunkel')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='GreenQloud')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='HostEurope')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='Seeweb')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='ThinkOn')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='Tiscali')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='Walrus')]
        [Parameter(Mandatory=$false, HelpMessage="Signature version. Required for S3Compatible accounts", ParameterSetName='Cloudian')]
        [MBS.API.SignatureVersion]$SignatureVersion = 2,
		#
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='Scality')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='S3Compatible')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='CenturyLink')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='ArubaCloud')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='BackblazeB2')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='Connectria')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='Constant')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='DreamObjects')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='Dunkel')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='GreenQloud')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='HostEurope')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='Seeweb')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='ThinkOn')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='Tiscali')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='Walrus')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='Minio')]
        [Parameter(Mandatory=$false, HelpMessage="Ignore certificate", ParameterSetName='Cloudian')]
        [bool]$IgnoreCertificate,
		#
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='S3Compatible')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='Scality')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='CenturyLink')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='ArubaCloud')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='BackblazeB2')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='Connectria')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='Constant')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='DreamObjects')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='Dunkel')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='GreenQloud')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='HostEurope')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='Seeweb')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='ThinkOn')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='Tiscali')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='Walrus')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='Minio')]
        [Parameter(Mandatory=$false, HelpMessage="Do not check credentials (no public access)", ParameterSetName='Cloudian')]
        [bool]$NotCheckCredentials,
		#
        [Parameter(Mandatory=$false, HelpMessage="User name", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="User name", ParameterSetName='OracleCloud')]
        [string]$UserName,
		#
        [Parameter(Mandatory=$false, HelpMessage="Api Key", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Api Key", ParameterSetName='OracleCloud')]
        [string]$ApiKey,
		#
        [Parameter(Mandatory=$false, HelpMessage="Authentication service", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Authentication service", ParameterSetName='OracleCloud')]
        [string]$AuthService,
		#
        [Parameter(Mandatory=$false, HelpMessage="Keystone version", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Keystone version", ParameterSetName='OracleCloud')]
        [MBS.API.KeyStoneType]$KeyStoneVersion,
		#
        [Parameter(Mandatory=$false, HelpMessage="Tenant Type. Required for Key stone version 2", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Tenant Type. Required for Key stone version 2", ParameterSetName='OracleCloud')]
        [MBS.API.OpenStackType]$TenantType,
		#
        [Parameter(Mandatory=$false, HelpMessage="Tenant", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Tenant", ParameterSetName='OracleCloud')]
        [string]$Tenant,
		#
        [Parameter(Mandatory=$false, HelpMessage="Use internal URLs. Required for Key stone version 2 and 3", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Use internal URLs. Required for Key stone version 2 and 3", ParameterSetName='OracleCloud')]
        [bool]$UseInternalURLs,
		#
        [Parameter(Mandatory=$false, HelpMessage="Domain Type. Required for Key stone version 3", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Domain Type. Required for Key stone version 3", ParameterSetName='OracleCloud')]
        [MBS.API.OpenStackType]$DomainType,
		#
        [Parameter(Mandatory=$false, HelpMessage="Domain. Required for Key stone version 3", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Domain. Required for Key stone version 3", ParameterSetName='OracleCloud')]
        [string]$Domain,
		#
        [Parameter(Mandatory=$false, HelpMessage="Use scope. Required for Key stone version 3", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Use scope. Required for Key stone version 3", ParameterSetName='OracleCloud')]
        [bool]$UseScope,
		#
        [Parameter(Mandatory=$false, HelpMessage="Project type. Required for Key stone version 3 and if UseScope is true", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Project type. Required for Key stone version 3 and if UseScope is true", ParameterSetName='OracleCloud')]
        [MBS.API.OpenStackType]$ProjectType,
		#
        [Parameter(Mandatory=$false, HelpMessage="Project. Required for Key stone version 3 and if UseScope is true", ParameterSetName='OpenStack')]
        [Parameter(Mandatory=$false, HelpMessage="Project. Required for Key stone version 3 and if UseScope is true", ParameterSetName='OracleCloud')]
        [string]$Project
    )
    
    begin {
        
    }
    
    process {

        $StorageAccountSettigns = New-Object -TypeName MBS.API.StorageAccountSetting -Property @{DisplayName = $DisplayName;Type = $PSCmdlet.ParameterSetName} 

        switch ($PSCmdlet.ParameterSetName) {
            {$_ -in 'AmazonS3', 'AmazonS3China'} {
                $StorageAccountSettigns.AccountSettings = @{
                    $PSCmdlet.ParameterSetName = [MBS.API.AmazonS3]@{
                        AccessKey = $AccessKey
                        SecretKey = $SecretKey
                        IsGovCloud = $IsGovCloud
                }
             } | ConvertTo-Json
            }

            'Azure' {
                $StorageAccountSettigns.AccountSettings = @{
                    $PSCmdlet.ParameterSetName = [MBS.API.Azure]@{
                        AccountName = $AccountName
                        SharedKey = $SharedKey
                    }
                } | ConvertTo-Json
            }
            'OpenStack' {
                $StorageAccountSettigns.AccountSettings = @{
                    $PSCmdlet.ParameterSetName = [MBS.API.OpenStack]@{
                        IgnoreCertificate = $IgnoreCertificate
                        NotCheckCredentials = $NotCheckCredentials
                        UserName = $UserName
                        ApiKey = $ApiKey
                        AuthService = $AuthService
                        KeyStoneVersion = $KeyStoneVersion
                        TenantType = $TenantType
                        Tenant = $Tenant
                        UseInternalURLs = $UseInternalURLs
                        DomainType = $DomainType
                        Domain = $Domain
                        UseScope = $UseScope
                        ProjectType = $ProjectType
                        Project = $Project
                    }
                } | ConvertTo-Json
            }
            'OracleCloud' {
                $StorageAccountSettigns.AccountSettings = @{
                    $PSCmdlet.ParameterSetName = [MBS.API.OpenStackCompatible]@{
                        UserName = $UserName
                        ApiKey = $ApiKey
                        AuthService = $AuthService
                        KeyStoneVersion = $KeyStoneVersion
                        TenantType = $TenantType
                        Tenant = $Tenant
                        UseInternalURLs = $UseInternalURLs
                        DomainType = $DomainType
                        Domain = $Domain
                        UseScope = $UseScope
                        ProjectType = $ProjectType
                        Project = $Project
                    }
                } | ConvertTo-Json
            }
            {$_ -in 'S3Compatible', 'Scality', 'CenturyLink', 'ArubaCloud', 'BackblazeB2', 'Cloudian', 'Connectria', 'Constant', 'DreamObjects', 'Dunkel', 'GreenQloud', 'HostEurope', 'Seeweb', 'ThinkOn', 'Tiscali', 'Walrus'}{
                $StorageAccountSettigns.AccountSettings = @{
                    $PSCmdlet.ParameterSetName = [MBS.API.S3Compatible]@{
                        UseNativeMultipartUpload = $UseNativeMultipartUpload
                        HTTPEnpoint = $HTTPEnpoint
                        HTTPSEndpoint = $HTTPSEndpoint
                        IgnoreCertificate = $IgnoreCertificate
                        NotCheckCredentials = $NotCheckCredentials
                        SignatureVersion = $SignatureVersion
                        AccessKey = $AccessKey
                        SecretKey = $SecretKey
                        IsGovCloud = $IsGovCloud
                    }
                } | ConvertTo-Json
            }
            'FS' {
                $StorageAccountSettigns.AccountSettings = @{
                    $PSCmdlet.ParameterSetName = [MBS.API.FS]@{
                        Login = $Login
                        Pass = $Pass
                        Path = $Path
                    }
                } | ConvertTo-Json
            }
            'GoogleCloudPlatform' {
                $StorageAccountSettigns.AccountSettings = @{
                    $PSCmdlet.ParameterSetName = [MBS.API.GoogleCloudPlatform]@{
                        ServiceAccountEmail = $ServiceAccountEmail
                        BinaryKeyAsBase64 = $BinaryKeyAsBase64
                        ProjectID = $ProjectID
                    }
                } | ConvertTo-Json
            }
            'Wasabi' {
                $StorageAccountSettigns.AccountSettings = @{
                    $PSCmdlet.ParameterSetName = [MBS.API.Wasabi]@{
                        AccessKey = $AccessKey
                        SecretKey = $SecretKey
                    }
                } | ConvertTo-Json
            }
            'Minio' {
                $StorageAccountSettigns.AccountSettings = @{
                    $PSCmdlet.ParameterSetName = [MBS.API.Minio]@{
                        AccessKey = $AccessKey
                        SecretKey = $SecretKey
                        HTTPEnpoint = $HTTPEnpoint
                        HTTPSEndpoint = $HTTPSEndpoint
                        IgnoreCertificate = $IgnoreCertificate
                        NotCheckCredentials = $NotCheckCredentials
                    }
                } | ConvertTo-Json
            }
            Default {}
        }
        return $StorageAccountSettigns
    }
    
    end {
        
    }
}
# SIG # Begin signature block
# MIIbfAYJKoZIhvcNAQcCoIIbbTCCG2kCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDZTMR2nX0Upcrc
# ntIpH0pkQTf+6UamyejJxKPcKnhTD6CCC04wggVmMIIETqADAgECAhEA3VtfmfWb
# K32tKkM2xJo7CjANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJHQjEbMBkGA1UE
# CBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
# ExFDT01PRE8gQ0EgTGltaXRlZDEjMCEGA1UEAxMaQ09NT0RPIFJTQSBDb2RlIFNp
# Z25pbmcgQ0EwHhcNMTcxMjE0MDAwMDAwWhcNMjExMjE0MjM1OTU5WjCBqDELMAkG
# A1UEBhMCQ1kxDTALBgNVBBEMBDEwOTUxETAPBgNVBAgMCExlZmNvc2lhMRAwDgYD
# VQQHDAdOaWNvc2lhMRUwEwYDVQQJDAxMYW1wb3VzYXMsIDExJjAkBgNVBAoMHVRy
# aWNoaWxpYSBDb25zdWx0YW50cyBMaW1pdGVkMSYwJAYDVQQDDB1UcmljaGlsaWEg
# Q29uc3VsdGFudHMgTGltaXRlZDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
# ggEBAJC5Ak9MZHfMGygnL9B+2OcFRvnTeYAJPa4tJS/ES3eSBBge9BiBUa6f+QlX
# lIjt+NBD9QrewScUj9EnaguKzc8NFonBJAgT43jD5rCuuj3GljTIHftLDF9vgetf
# 7KUYhwMypqxRP8pLMAuXzIzw5Yxjh1Quy92dZyJYpOuGbz1PQVRMj2fhRqeerP4J
# OiRktwnykjrxDsRNm+Iuas1BM+vjVA7B9Cj0Wf5NsMxSegJezvs0yqwHrsngEQrY
# GXDKHstfsxd8KM5LxJdYN1neIAO8v6AuM6yjQT1z1ZwVSCHu2swNCA3T3M26fkk9
# 9TIZZI/LvfR++FJCUvJkPoPbOKUCAwEAAaOCAbMwggGvMB8GA1UdIwQYMBaAFCmR
# YP+KTfrr+aZquM/55ku9Sc4SMB0GA1UdDgQWBBRqlxdnVxjIxF6fnOYUd7LOYeNe
# rjAOBgNVHQ8BAf8EBAMCB4AwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEF
# BQcDAzARBglghkgBhvhCAQEEBAMCBBAwRgYDVR0gBD8wPTA7BgwrBgEEAbIxAQIB
# AwIwKzApBggrBgEFBQcCARYdaHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMw
# QwYDVR0fBDwwOjA4oDagNIYyaHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RP
# UlNBQ29kZVNpZ25pbmdDQS5jcmwwdAYIKwYBBQUHAQEEaDBmMD4GCCsGAQUFBzAC
# hjJodHRwOi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FDb2RlU2lnbmluZ0NB
# LmNydDAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2EuY29tMCQGA1Ud
# EQQdMBuBGWNvbnRhY3RAY2xvdWRiZXJyeWxhYi5jb20wDQYJKoZIhvcNAQELBQAD
# ggEBAEeInauUdqKYV4ncwGMqz5+frptASCXVnCMLI7j3JK0KCzmJkwHHmkIk3P0A
# Rzedj5+1aFuXANtT42IACVf00tqq0IHO2KT2vHHJHNnx3ht6kMcCmKmUlnkZMjEK
# +0WJD0JSP7lBRQBf5QJpDLmpbBTVvlbe/3nzpUZ95O5reaPekoQ1xC4Ossu06ba0
# djKhwk0HgeqZz7ZruWOVY/YRDfnlZ3it5+4Ck2JTXIVcUcXzT/ZdwNTkUiIqmh4T
# HwOj+k/Yej7Q13ILWTNZMELs3Iec6FSSGXUijHV65pPI0dUXnq8pWYMfutgwlBaL
# 78yXl4ihf46TXsnAMottH+ld8lAwggXgMIIDyKADAgECAhAufIfMDpNKUv6U/Ry3
# zTSvMA0GCSqGSIb3DQEBDAUAMIGFMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3Jl
# YXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01P
# RE8gQ0EgTGltaXRlZDErMCkGA1UEAxMiQ09NT0RPIFJTQSBDZXJ0aWZpY2F0aW9u
# IEF1dGhvcml0eTAeFw0xMzA1MDkwMDAwMDBaFw0yODA1MDgyMzU5NTlaMH0xCzAJ
# BgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcT
# B1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMSMwIQYDVQQDExpD
# T01PRE8gUlNBIENvZGUgU2lnbmluZyBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
# ADCCAQoCggEBAKaYkGN3kTR/itHd6WcxEevMHv0xHbO5Ylc/k7xb458eJDIRJ2u8
# UZGnz56eJbNfgagYDx0eIDAO+2F7hgmz4/2iaJ0cLJ2/cuPkdaDlNSOOyYruGgxk
# x9hCoXu1UgNLOrCOI0tLY+AilDd71XmQChQYUSzm/sES8Bw/YWEKjKLc9sMwqs0o
# GHVIwXlaCM27jFWM99R2kDozRlBzmFz0hUprD4DdXta9/akvwCX1+XjXjV8QwkRV
# PJA8MUbLcK4HqQrjr8EBb5AaI+JfONvGCF1Hs4NB8C4ANxS5Eqp5klLNhw972GIp
# pH4wvRu1jHK0SPLj6CH5XkxieYsCBp9/1QsCAwEAAaOCAVEwggFNMB8GA1UdIwQY
# MBaAFLuvfgI9+qbxPISOre44mOzZMjLUMB0GA1UdDgQWBBQpkWD/ik366/mmarjP
# +eZLvUnOEjAOBgNVHQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADATBgNV
# HSUEDDAKBggrBgEFBQcDAzARBgNVHSAECjAIMAYGBFUdIAAwTAYDVR0fBEUwQzBB
# oD+gPYY7aHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RPUlNBQ2VydGlmaWNh
# dGlvbkF1dGhvcml0eS5jcmwwcQYIKwYBBQUHAQEEZTBjMDsGCCsGAQUFBzAChi9o
# dHRwOi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FBZGRUcnVzdENBLmNydDAk
# BggrBgEFBQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2EuY29tMA0GCSqGSIb3DQEB
# DAUAA4ICAQACPwI5w+74yjuJ3gxtTbHxTpJPr8I4LATMxWMRqwljr6ui1wI/zG8Z
# wz3WGgiU/yXYqYinKxAa4JuxByIaURw61OHpCb/mJHSvHnsWMW4j71RRLVIC4nUI
# BUzxt1HhUQDGh/Zs7hBEdldq8d9YayGqSdR8N069/7Z1VEAYNldnEc1PAuT+89r8
# dRfb7Lf3ZQkjSR9DV4PqfiB3YchN8rtlTaj3hUUHr3ppJ2WQKUCL33s6UTmMqB9w
# ea1tQiCizwxsA4xMzXMHlOdajjoEuqKhfB/LYzoVp9QVG6dSRzKp9L9kR9GqH1NO
# MjBzwm+3eIKdXP9Gu2siHYgL+BuqNKb8jPXdf2WMjDFXMdA27Eehz8uLqO8cGFjF
# BnfKS5tRr0wISnqP4qNS4o6OzCbkstjlOMKo7caBnDVrqVhhSgqXtEtCtlWdvpnn
# cG1Z+G0qDH8ZYF8MmohsMKxSCZAWG/8rndvQIMqJ6ih+Mo4Z33tIMx7XZfiuyfiD
# FJN2fWTQjs6+NX3/cjFNn569HmwvqI8MBlD7jCezdsn05tfDNOKMhyGGYf6/VXTh
# IXcDCmhsu+TJqebPWSXrfOxFDnlmaOgizbjvmIVNlhE8CYrQf7woKBP7aspUjZJc
# zcJlmAaezkhb1LU3k0ZBfAfdz/pD77pnYf99SeC7MH1cgOPmFjlLpzGCD4Qwgg+A
# AgEBMIGSMH0xCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0
# ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVk
# MSMwIQYDVQQDExpDT01PRE8gUlNBIENvZGUgU2lnbmluZyBDQQIRAN1bX5n1myt9
# rSpDNsSaOwowDQYJYIZIAWUDBAIBBQCgfDAQBgorBgEEAYI3AgEMMQIwADAZBgkq
# hkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGC
# NwIBFTAvBgkqhkiG9w0BCQQxIgQgaf3PW4hKNzu2mHyWFNfbVEFe6DwXDgDI4gN8
# MGrwND4wDQYJKoZIhvcNAQEBBQAEggEANimk/3PyjnEwV65R8apef7rwws/oJnmh
# 04Npug/0b36HH5dbrfCnyE+QJeVDeUtyzICpNEKvC8hiCN2I8GYQ3QJs0MGfzSpZ
# zdxgWPFwZTNjpypFzQXG0xjCPEIoGGagpPzNHhBCazZy3PAGR5RuwFSUqv1mnbmo
# mGghlXMLz6qZbVDxF8xrWGuJNyZnWucRMcOtLnt4MvR6oJzO8C+WuO2xOLO5u/Em
# talajQ9qwpLO4vJtCI9853FOXz3F2zPXKKOx+P4VNjvDNoRFUj0fp871bRuz+iMB
# FtRHUnL9DcCVtt911LHQ7zPcRN0i0O7XuEpyD6YOWRaHInh3yfsh26GCDUQwgg1A
# BgorBgEEAYI3AwMBMYINMDCCDSwGCSqGSIb3DQEHAqCCDR0wgg0ZAgEDMQ8wDQYJ
# YIZIAWUDBAIBBQAwdwYLKoZIhvcNAQkQAQSgaARmMGQCAQEGCWCGSAGG/WwHATAx
# MA0GCWCGSAFlAwQCAQUABCA/i7pextUgtgQLqU/5A+f6YfoLdhwi4LakVKpw1CSk
# BgIQLqVFIo+WTf9hWgvLPC0w8RgPMjAyMTAxMjYwODExMTNaoIIKNzCCBP4wggPm
# oAMCAQICEA1CSuC+Ooj/YEAhzhQA8N0wDQYJKoZIhvcNAQELBQAwcjELMAkGA1UE
# BhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2lj
# ZXJ0LmNvbTExMC8GA1UEAxMoRGlnaUNlcnQgU0hBMiBBc3N1cmVkIElEIFRpbWVz
# dGFtcGluZyBDQTAeFw0yMTAxMDEwMDAwMDBaFw0zMTAxMDYwMDAwMDBaMEgxCzAJ
# BgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjEgMB4GA1UEAxMXRGln
# aUNlcnQgVGltZXN0YW1wIDIwMjEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
# AoIBAQDC5mGEZ8WK9Q0IpEXKY2tR1zoRQr0KdXVNlLQMULUmEP4dyG+RawyW5xpc
# SO9E5b+bYc0VkWJauP9nC5xj/TZqgfop+N0rcIXeAhjzeG28ffnHbQk9vmp2h+mK
# vfiEXR52yeTGdnY6U9HR01o2j8aj4S8bOrdh1nPsTm0zinxdRS1LsVDmQTo3Vobc
# kyON91Al6GTm3dOPL1e1hyDrDo4s1SPa9E14RuMDgzEpSlwMMYpKjIjF9zBa+RSv
# FV9sQ0kJ/SYjU/aNY+gaq1uxHTDCm2mCtNv8VlS8H6GHq756WwogL0sJyZWnjbL6
# 1mOLTqVyHO6fegFz+BnW/g1JhL0BAgMBAAGjggG4MIIBtDAOBgNVHQ8BAf8EBAMC
# B4AwDAYDVR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcDCDBBBgNVHSAE
# OjA4MDYGCWCGSAGG/WwHATApMCcGCCsGAQUFBwIBFhtodHRwOi8vd3d3LmRpZ2lj
# ZXJ0LmNvbS9DUFMwHwYDVR0jBBgwFoAU9LbhIB3+Ka7S5GGlsqIlssgXNW4wHQYD
# VR0OBBYEFDZEho6kurBmvrwoLR1ENt3janq8MHEGA1UdHwRqMGgwMqAwoC6GLGh0
# dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9zaGEyLWFzc3VyZWQtdHMuY3JsMDKgMKAu
# hixodHRwOi8vY3JsNC5kaWdpY2VydC5jb20vc2hhMi1hc3N1cmVkLXRzLmNybDCB
# hQYIKwYBBQUHAQEEeTB3MCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2Vy
# dC5jb20wTwYIKwYBBQUHMAKGQ2h0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9E
# aWdpQ2VydFNIQTJBc3N1cmVkSURUaW1lc3RhbXBpbmdDQS5jcnQwDQYJKoZIhvcN
# AQELBQADggEBAEgc3LXpmiO85xrnIA6OZ0b9QnJRdAojR6OrktIlxHBZvhSg5SeB
# pU0UFRkHefDRBMOG2Tu9/kQCZk3taaQP9rhwz2Lo9VFKeHk2eie38+dSn5On7UOe
# e+e03UEiifuHokYDTvz0/rdkd2NfI1Jpg4L6GlPtkMyNoRdzDfTzZTlwS/Oc1np7
# 2gy8PTLQG8v1Yfx1CAB2vIEO+MDhXM/EEXLnG2RJ2CKadRVC9S0yOIHa9GCiurRS
# +1zgYSQlT7LfySmoc0NR2r1j1h9bm/cuG08THfdKDXF+l7f0P4TrweOjSaH6zqe/
# Vs+6WXZhiV9+p7SOZ3j5NpjhyyjaW4emii8wggUxMIIEGaADAgECAhAKoSXW1jIb
# fkHkBdo2l8IVMA0GCSqGSIb3DQEBCwUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNV
# BAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0xNjAxMDcxMjAwMDBa
# Fw0zMTAxMDcxMjAwMDBaMHIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2Vy
# dCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xMTAvBgNVBAMTKERpZ2lD
# ZXJ0IFNIQTIgQXNzdXJlZCBJRCBUaW1lc3RhbXBpbmcgQ0EwggEiMA0GCSqGSIb3
# DQEBAQUAA4IBDwAwggEKAoIBAQC90DLuS82Pf92puoKZxTlUKFe2I0rEDgdFM1EQ
# fdD5fU1ofue2oPSNs4jkl79jIZCYvxO8V9PD4X4I1moUADj3Lh477sym9jJZ/l9l
# P+Cb6+NGRwYaVX4LJ37AovWg4N4iPw7/fpX786O6Ij4YrBHk8JkDbTuFfAnT7l3I
# mgtU46gJcWvgzyIQD3XPcXJOCq3fQDpct1HhoXkUxk0kIzBdvOw8YGqsLwfM/fDq
# R9mIUF79Zm5WYScpiYRR5oLnRlD9lCosp+R1PrqYD4R/nzEU1q3V8mTLex4F0IQZ
# chfxFwbvPc3WTe8GQv2iUypPhR3EHTyvz9qsEPXdrKzpVv+TAgMBAAGjggHOMIIB
# yjAdBgNVHQ4EFgQU9LbhIB3+Ka7S5GGlsqIlssgXNW4wHwYDVR0jBBgwFoAUReui
# r/SSy4IxLVGLp6chnfNtyA8wEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8E
# BAMCAYYwEwYDVR0lBAwwCgYIKwYBBQUHAwgweQYIKwYBBQUHAQEEbTBrMCQGCCsG
# AQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0
# dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RD
# QS5jcnQwgYEGA1UdHwR6MHgwOqA4oDaGNGh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNv
# bS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwOqA4oDaGNGh0dHA6Ly9jcmwz
# LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwUAYDVR0g
# BEkwRzA4BgpghkgBhv1sAAIEMCowKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3LmRp
# Z2ljZXJ0LmNvbS9DUFMwCwYJYIZIAYb9bAcBMA0GCSqGSIb3DQEBCwUAA4IBAQBx
# lRLpUYdWac3v3dp8qmN6s3jPBjdAhO9LhL/KzwMC/cWnww4gQiyvd/MrHwwhWiq3
# BTQdaq6Z+CeiZr8JqmDfdqQ6kw/4stHYfBli6F6CJR7Euhx7LCHi1lssFDVDBGiy
# 23UC4HLHmNY8ZOUfSBAYX4k4YU1iRiSHY4yRUiyvKYnleB/WCxSlgNcSR3CzddWT
# hZN+tpJn+1Nhiaj1a5bA9FhpDXzIAbG5KHW3mWOFIoxhynmUfln8jA/jb7UBJrZs
# pe6HUSHkWGCbugwtK22ixH67xCUrRwIIfEmuE7bhfEJCKMYYVs9BNLZmXbZ0e/VW
# MyIvIjayS6JKldj1po5SMYICTTCCAkkCAQEwgYYwcjELMAkGA1UEBhMCVVMxFTAT
# BgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEx
# MC8GA1UEAxMoRGlnaUNlcnQgU0hBMiBBc3N1cmVkIElEIFRpbWVzdGFtcGluZyBD
# QQIQDUJK4L46iP9gQCHOFADw3TANBglghkgBZQMEAgEFAKCBmDAaBgkqhkiG9w0B
# CQMxDQYLKoZIhvcNAQkQAQQwHAYJKoZIhvcNAQkFMQ8XDTIxMDEyNjA4MTExM1ow
# KwYLKoZIhvcNAQkQAgwxHDAaMBgwFgQU4deCqOGRvu9ryhaRtaq0lKYkm/MwLwYJ
# KoZIhvcNAQkEMSIEIOqM+hcl8NrB6ISG1uOfsb7A/dfM9Us7G018/9SqvSLQMA0G
# CSqGSIb3DQEBAQUABIIBADsJi7UobFICQRXrTcmy3iLwIwPbs32+C/M+7UBo6z+i
# efLyAVnFOcCW0dYe4XiahQX3i2ZelWgE3FoCKjexZoXSGtNPpt6iDNK7ta9x5FZ7
# VxB9QmltibSHxIl2Dz/Y+ltrsq9+7peFbHrWgGm+4AxN2cqDw1POWVcfoVjJ4CEF
# rT8VeYenWxz6qNBBFF/VP0W5b8/fUArC+NFF+i+hmxvtMWKCRREuf3UtL4bagDbr
# Cb5UphIHk/RxwBtOMg9mTNXBTwEB5tGCMtOT63XLBDiFSOoSJrdcPlhKCik99Mhd
# dlKJXPFxldECPSIRfVLy6o65F1cASfoytJvcZV9+Ono=
# SIG # End signature block
