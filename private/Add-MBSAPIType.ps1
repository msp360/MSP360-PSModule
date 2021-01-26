add-type -typedef @"
using System;
using System.Security;

namespace MBS.API
{
    public class License {
        public string ID;
        public long Number;
        public string ComputerName;
        public string OperatingSystem;
        public bool IsTrial;
        public bool IsTaken;
        public string LicenseType;
        public DateTime DateExpired;
        public string Transaction;
        public string User;
        public string UserID;
    }

    public class User {
        public string ID;
        public string Email;
        public string FirstName;
        public string LastName;
        public string[] NotificationEmails;
        public string Company;
        public bool Enabled;
        public MBS.API.UserLicensingMode LicenseManagmentMode;
        public MBS.API.UserDestination[] DestinationList;
        public long SpaceUsed;
    }

    public class UserDestination {
        public string ID;
        public long CurrentVolume;
        public long PackageID;
        public string AccountID;
        public string AccountDisplayName;
        public string Destination;
        public string DestinationDisplayName;
    }

    public class UserComputer {
        public string DestinationId;
        public string ComputerName;
    }

    public class Company {
        public string ID;
        public string Name;
        public long StorageLimit;
        public string LicenseSettings;
    }

    public class Build {
        public string Type;
        public string Version;
        public string DownloadLink;
    }

    public class BuildEdition {
        public MBS.API.BuildEditionType Type;
        public string Version;
    }

    public class Monitoring {
        public string PlanName;
        public string CompanyName;
        public string UserName;
        public string UserID;
        public string ComputerName;
        public string BuildVersion;
        public string StorageType;
        public Nullable<DateTime> LastStart;
        public Nullable<DateTime> NextStart;
        public MBS.API.MonitoringPlanStatus Status;
        public string ErrorMessage;
        public long FilesCopied;
        public long FilesFailed;
        public long DataCopied;
        public string Duration;
        public long DataToBackup;
        public long TotalData;
        public long FilesScanned;
        public long FilesToBackup;
        public string PlanId;
        public MBS.API.MonitoringPlanType PlanType;
        public string DetailedReportLink;
    }

    public class Administrator {
        public string AdminID;
        public string Email;
        public string FirstName;
        public string LastName;
        public bool Enabled;
        public MBS.API.AdministratorPermission PermissionsModels;
        public Nullable<DateTime> LastLogin;
        public DateTime DateCreated;
        public string[] Companies;
    }

    public class AdministratorPermission {
        public MBS.API.AdministratorPermissionMode Users;
        public MBS.API.AdministratorPermissionMode StorageLimit;
        public MBS.API.AdministratorPermissionMode Notification;
        public MBS.API.AdministratorPermissionMode OnlineAccess;
        public MBS.API.AdministratorPermissionMode Licenses;
        public MBS.API.AdministratorPermissionMode Billing;
        public MBS.API.AdministratorPermissionMode Monitiring;
        public MBS.API.AdministratorPermissionMode RemoteDeploy;
        public MBS.API.AdministratorPermissionMode RemoteManagment;
        public MBS.API.AdministratorPermissionMode HelpMarketing;
        public MBS.API.AdministratorPermissionMode AuditLog;
        public MBS.API.AdministratorPermissionMode PSA;
        public MBS.API.AdministratorPermissionMode Administrators;
        public MBS.API.AdministratorPermissionMode Rebranding;
        public MBS.API.AdministratorPermissionMode Storage;
        public MBS.API.AdministratorPermissionMode ADS;
        public MBS.API.AdministratorPermissionMode LicenseBuy;
        public MBS.API.AdministratorPermissionMode LicenseActivate;
        public MBS.API.AdministratorPermissionMode StorageUsage;
        public MBS.API.AdministratorPermissionMode CapacityReport;
        public MBS.API.AdministratorPermissionMode GoogleApps;
        public MBS.API.AdministratorPermissionMode Dashboard;
    }

    public class Destination1 {
        public string ID;
        public int CurrentVolume;
        public int PackageID;
        public string AccountID;
        public string AccountDisplayName;
        public string Destination;
        public string DestinationDisplayName;
    }

    public class StorageAccount {
        public string ResellerAccountID;
        public string AccountID;
        public DateTime DateCreated;
        public string DisplayName;
        public string StorageType;
        public MBS.API.StorageAccountDestination Destinations;
    }

    public class StorageAccountDestination {
        public string DestinationID;
        public string AccountID;
        public string Destination;
        public string DestinationDisplayName;
    }

    public class Billing {
        public long CurrentSpaceUsed;
        public long AverageSpaceUsed;
        public long TotalRestore;
        public MBS.API.BillingStatistic[] StatisticBilling;
    }

    public class BillingStatistic {
        public string UserId;
        public string Email;
        public string FirstName;
        public string LastName;
        public string CompanyName;
        public long AverageSpace;
        public long TotalVolumeRestore;
        public Decimal PlanCost;
        public Decimal StorageCost;
        public Decimal RestoreCost;
        public Decimal TotalCost;
    }

    public class BillingDetails {
        public long TotalBackupBytes;
        public long TotalRestoreBytes;
        public string UserID;
        public MBS.API.BillingUserDetailList[] UserDetailList;
    }

    public class BillingUserDetailList {
        public string Computer;
        public long SizeBackup;
        public long SizeRestore;
        public string Prefix;
        public string AccountID;
        public string Destination;
    }

    public class StoragePackage {
        public long ID;
        public Decimal Cost;
        public string Description;
        public bool Enabled;
        public string Name;
        public Decimal StorageLimit;
        public bool isGlacierRestoreLimit;
        public Decimal RestoreLimit;
        public MBS.API.GlacierRestoreType GlacierRestoreType;
        public bool UseRestoreLimit;
    }

    public class StorageAccountSetting {
        public string DisplayName;
        public MBS.API.StorageAccountType Type;
        public string AccountSettings;
    }

    public abstract class AmazonS3Like {
        public string AccessKey;
        public string SecretKey;
    }

    public abstract class S3CompatibleLike : AmazonS3Like {
        public string HTTPEnpoint;
        public string HTTPSEndpoint;
        public bool IgnoreCertificate;
        public bool NotCheckCredentials;
    }

    public class Wasabi : AmazonS3Like{ }

    public class Minio : S3CompatibleLike { }

    public class S3Compatible : S3CompatibleLike {
        public bool UseNativeMultipartUpload;
        public MBS.API.SignatureVersion SignatureVersion;
        public bool IsGovCloud;
    }

    public class AmazonS3 : AmazonS3Like{
        public bool IsGovCloud;
    }

    public class GoogleCloudPlatform {
        public string ServiceAccountEmail;
        public string BinaryKeyAsBase64;
        public string ProjectID;
    }

    public class Azure {
        public string AccountName;
        public string SharedKey;
    }

    public class OpenStackCompatible {
        public string UserName;
        public string ApiKey;
        public string AuthService;
        public MBS.API.KeyStoneType KeyStoneVersion;
        public MBS.API.OpenStackType TenantType;
        public string Tenant;
        public bool UseInternalURLs;
        public MBS.API.OpenStackType DomainType;
        public string Domain;
        public bool UseScope;
        public MBS.API.OpenStackType ProjectType;
        public string Project;
    }

    public class OpenStack : OpenStackCompatible{
        public string IgnoreCertificate;
        public string NotCheckCredentials;
    }

    public class FS {
        public string Login;
        public string Pass;
        public string Path;
    }

    public enum GlacierRestoreType
    {
        Standard,
        Bulk,
        Expedited,
        No
    }

    public enum AdministratorPermissionMode
    {
        None,
        Access
    }

    public enum UserLicensingMode
    {
        Manual,
        Automatic,
        CompanySettings
    }

    public enum CompanyLicensingMode
    {
        CustomUsersSettings,
        GlobalLicensesPool,
        CompanyLicensesPool
    }

    public enum BuildEditionType
    {
        Windows,
        VirtualMachine,
        MacOS,
        LinuxDeb,
        LinuxRpm,
        DedupServer
    }

    public enum MonitoringPlanType
    {
        NA,
        Backup,
        Restore,
        BackupFiles,
        RestoreFiles,
        VMBackup,
        VMRestore,
        SQLBackup,
        SQLResore,
        ExchangeBackup,
        ExchangeRestore,
        BMSSBackup,
        BMSSRestore,
        ConsistencyCheck,
        EC2Backup,
        EC2Restore,
        HyperVBackup,
        HyperVRestore
    }

    public enum MonitoringPlanStatus
    {
        Success,
        Overdue,
        Error,
        Running,
        Unknown,
        Interrupted,
        UnexpectedlyClosed,
        Warning
    }

    public enum StorageAccountType
    {
        AmazonS3,
        AmazonS3China,
        Azure,
        OpenStack,
        OracleCloud,
        S3Compatible,
        Scality,
        CenturyLink,
        ArubaCloud,
        BackblazeB2,
        Cloudian,
        Connectria,
        Constant,
        DreamObjects,
        Dunkel,
        GreenQloud,
        HostEurope,
        Seeweb,
        ThinkOn,
        Tiscali,
        Walrus,
        FS,
        GoogleCloudPlatform,
        Wasabi,
        Minio
    }

    public enum KeyStoneType
    {
        DoNotUse,
        Two,
        Three
    }

    public enum OpenStackType
    {
        Name,
        ID
    }

    public enum SignatureVersion
    {
        Version2 = 2,
        Version4 = 4
    }
}
"@
# SIG # Begin signature block
# MIIbfAYJKoZIhvcNAQcCoIIbbTCCG2kCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCB+gbON7Qfuxlw3
# Ws6E4fC1ySF2Vs32I2D/nQaPiuf1r6CCC04wggVmMIIETqADAgECAhEA3VtfmfWb
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
# NwIBFTAvBgkqhkiG9w0BCQQxIgQgRr4OB4wlwpvzXb6sPlHf5xVYWjjvJhKwj3st
# KDDIN14wDQYJKoZIhvcNAQEBBQAEggEAILqrhLOzadzsvx4tWA/FqNCw/r6CuIQZ
# l7Dg5EH8hjmqyyui8rU7KMFWasUcRm0IDCkN+pGrmuOTXXn+QOo1TWpIfoSg5Fvu
# xS36emr4Dg/wPxKYWz6KbRxOCqH5pZfun34B2O2SJ5ykuaV5hdIvZDKfPY+K9+6A
# 1CNwmHheFZDEV4iFSLVbJwjk9eodlQlAayOpkAPTWJneIRoWv/ZPvjcJwG3Ss+VZ
# lwUuvy4H2nMriLm7xKhYZNUGcEo+5Et1EckfTBq8aYx5FOUmLtt2Sly0ffn2dIhb
# tZBhcR2Tuldd6ZBiYRqbCd8ix7pMceH/sjXV1blvEdz7bafrcRpq9KGCDUQwgg1A
# BgorBgEEAYI3AwMBMYINMDCCDSwGCSqGSIb3DQEHAqCCDR0wgg0ZAgEDMQ8wDQYJ
# YIZIAWUDBAIBBQAwdwYLKoZIhvcNAQkQAQSgaARmMGQCAQEGCWCGSAGG/WwHATAx
# MA0GCWCGSAFlAwQCAQUABCAtalkobYxIhMt7PFPJgmNl6GcchOnaCkqcpQAk6CAS
# oQIQIGOOWQL+gD+bQAlzAz7K0hgPMjAyMTAxMjYwODEwNTJaoIIKNzCCBP4wggPm
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
# CQMxDQYLKoZIhvcNAQkQAQQwHAYJKoZIhvcNAQkFMQ8XDTIxMDEyNjA4MTA1Mlow
# KwYLKoZIhvcNAQkQAgwxHDAaMBgwFgQU4deCqOGRvu9ryhaRtaq0lKYkm/MwLwYJ
# KoZIhvcNAQkEMSIEINKUamyOU+8dduFDM07RhgwbJufySrdxhsC1flqLkxO7MA0G
# CSqGSIb3DQEBAQUABIIBAFsTj5e/txL6wmMvFESQDXeX9836XuZORa5fOLdBpjId
# /k7dpywPlywkIbaToas7KSHaLOpp1yljLZ45dnAUXu1KAyrqArJZ53g8idiSM+Jj
# CeNeLn3J9EOPSqkTtKiIgLzcPPN2pwUtGy4KADfbZzZV9rHBnLkxrUNwkNBWII7K
# f5NV6zmCTYbYllhs0C/+FO7hyapHNvsPTin/CpPbRpXQv0pI8kvt5nXA0KpzMWss
# 5kyaJ2m8/PsXidCsXAb8gRdSxvQ5mTDw60iT02TMukyc3qlz1KwRvlTIELbPXfHc
# dkZ8BN8l7ER7pc/X1+qCvtORTAHz+HIz1AAOeFRxHhU=
# SIG # End signature block
