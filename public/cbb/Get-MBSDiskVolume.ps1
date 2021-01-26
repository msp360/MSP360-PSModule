function Get-MBSDiskVolume {
    <#
    .SYNOPSIS
    Lists disk volumes 
    
    .DESCRIPTION
    Gets the information about all disks on the current computer.
    
    .PARAMETER All
    List all disk volumes.
    
    .PARAMETER Supported
    List only supported volumes.
    
    .PARAMETER DiskID
    List volumes for the specific disk.
    
    .PARAMETER SystemRequired
    Lists only system required volumes.
    
    .PARAMETER MasterPassword
    Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
    PS C:\> Get-MBSDiskVolume -Supported

    Lists all supported volumes.

    .EXAMPLE
    PS C:\> Get-MBSDiskVolume

    Lists all disk volumes. 
    
    .EXAMPLE
    PS C:\> Get-MBSDiskVolume -SystemRequired

    Lists system required volumes.
    
    .EXAMPLE
    PS C:\> Get-MBSDiskVolume -DiskID 3708e400-2aa4-4991-bdd8-23bf9eec6529

    Lists volumes for the disk with DiskID "3708e400-2aa4-4991-bdd8-23bf9eec6529".
    
    .INPUTS
    None.

    .OUTPUTS
    System.Management.Automation.PSCustomObject

    .NOTES
    Author: Ivan Skorin

    .LINK
    https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/get-mbsdiskvolume/
    #>
    [CmdletBinding(DefaultParameterSetName='AllVolumes')]
    param (
        # Parameter - List all disk volumes
        [Parameter(Mandatory=$false, HelpMessage="Lists all volumes", ParameterSetName='AllVolumes')]
        [switch]
        $All,
        # Parameter - List only supported volumes
        [Parameter(Mandatory=$true, HelpMessage="Lists only supported volumes", ParameterSetName='SupportedVolumes')]
        [switch]
        $Supported,
        # Parameter - List volumes for the specific disk
        [Parameter(Mandatory=$true, HelpMessage="Lists the volumes of the disk with that ID", ParameterSetName='DiskID')]
        [Guid]
        $DiskID,
        # Parameter - Lists only system required volumes
        [Parameter(Mandatory=$true, HelpMessage="Lists only system required volumes", ParameterSetName='SystemRequired')]
        [switch]
        $SystemRequired,
        # Parameter - Master password
        [Parameter(Mandatory=$false, HelpMessage="Specify Master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [SecureString]
        $MasterPassword
    )
    
    begin {
        if (-not($CBB = Get-MBSAgent)) {
            Break
        }
        try {
            if ((Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -ne "" -and $null -ne (Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -and -not $MasterPassword) {
                $MasterPassword = Read-Host Master Password -AsSecureString
            }
        }
        catch {
            
        }
    }
    
    process {
        $Arguments = " listDiskVolumes"
        switch ($PSCmdlet.ParameterSetName) {
            'AllVolumes' {  $Arguments += " -a" }
            'SupportedVolumes' { $Arguments += " -s" }
            'DiskID' { $Arguments += " -d $DiskID" }
            'SystemRequired' {  $Arguments += " -r" }
            Default {}
        }
        $result = Start-MBSProcess -cmdpath $CBB.CBBCLIPath -cmdarguments $Arguments -output json -MasterPassword $MasterPassword
        if ($result.Result -eq "Success") {
            $result.Disks
        }
    }
    
    end {
        
    }
}
# SIG # Begin signature block
# MIIbfQYJKoZIhvcNAQcCoIIbbjCCG2oCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAuzdgZ7BtvvPqR
# KYZ3xBsgzbWioRobElFIvN2IOcBInKCCC04wggVmMIIETqADAgECAhEA3VtfmfWb
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
# zcJlmAaezkhb1LU3k0ZBfAfdz/pD77pnYf99SeC7MH1cgOPmFjlLpzGCD4Uwgg+B
# AgEBMIGSMH0xCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0
# ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVk
# MSMwIQYDVQQDExpDT01PRE8gUlNBIENvZGUgU2lnbmluZyBDQQIRAN1bX5n1myt9
# rSpDNsSaOwowDQYJYIZIAWUDBAIBBQCgfDAQBgorBgEEAYI3AgEMMQIwADAZBgkq
# hkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGC
# NwIBFTAvBgkqhkiG9w0BCQQxIgQgQGyawWUcZ7kmiA1FuhAbh+FISGBv4+q2yEUm
# ZETuKYQwDQYJKoZIhvcNAQEBBQAEggEAHeeCwvHFIIMoAYXtMa/uU+aN5ikSczKO
# MHWzziSGEIPpykX4GjhIG0vF3IYXLqzzA4aV+v1wyByuXr4lkJHYYlHNFWCyuKxW
# sAUWubKzNuliWBYDJlyjqBngmSvGOiJxr7O5dDsw1CSNtquFSf6Kp0duhnVpBPbM
# RxrYq27D6Ou8FJ8xj0pRmYQ9a+NTdGj0bNfo1Dt4Fyx8rxipk5gzdEDXte0FCYNJ
# QfJcziArXXnjmb5Gs1omlHOY+NeWauU4ez7CsMZqEbvGGVVQv5mncaJdHCsxrsMR
# bPnuZBCbYJsEDWkmb4jLUgpZDYKbc8Ki1ACwkyWNrzqhnjS5NInnZaGCDUUwgg1B
# BgorBgEEAYI3AwMBMYINMTCCDS0GCSqGSIb3DQEHAqCCDR4wgg0aAgEDMQ8wDQYJ
# YIZIAWUDBAIBBQAweAYLKoZIhvcNAQkQAQSgaQRnMGUCAQEGCWCGSAGG/WwHATAx
# MA0GCWCGSAFlAwQCAQUABCDxFF3umvtIIKJYRdG5V4oIYPKnXReh65lPZG3H7t7f
# lAIRAJhzGbKIIp1DnpsW8z2RqUIYDzIwMjEwMTI2MDgxMTI0WqCCCjcwggT+MIID
# 5qADAgECAhANQkrgvjqI/2BAIc4UAPDdMA0GCSqGSIb3DQEBCwUAMHIxCzAJBgNV
# BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
# Y2VydC5jb20xMTAvBgNVBAMTKERpZ2lDZXJ0IFNIQTIgQXNzdXJlZCBJRCBUaW1l
# c3RhbXBpbmcgQ0EwHhcNMjEwMTAxMDAwMDAwWhcNMzEwMTA2MDAwMDAwWjBIMQsw
# CQYDVQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xIDAeBgNVBAMTF0Rp
# Z2lDZXJ0IFRpbWVzdGFtcCAyMDIxMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
# CgKCAQEAwuZhhGfFivUNCKRFymNrUdc6EUK9CnV1TZS0DFC1JhD+HchvkWsMluca
# XEjvROW/m2HNFZFiWrj/ZwucY/02aoH6KfjdK3CF3gIY83htvH35x20JPb5qdofp
# ir34hF0edsnkxnZ2OlPR0dNaNo/Go+EvGzq3YdZz7E5tM4p8XUUtS7FQ5kE6N1aG
# 3JMjjfdQJehk5t3Tjy9XtYcg6w6OLNUj2vRNeEbjA4MxKUpcDDGKSoyIxfcwWvkU
# rxVfbENJCf0mI1P2jWPoGqtbsR0wwptpgrTb/FZUvB+hh6u+elsKIC9LCcmVp42y
# +tZji06lchzun3oBc/gZ1v4NSYS9AQIDAQABo4IBuDCCAbQwDgYDVR0PAQH/BAQD
# AgeAMAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwQQYDVR0g
# BDowODA2BglghkgBhv1sBwEwKTAnBggrBgEFBQcCARYbaHR0cDovL3d3dy5kaWdp
# Y2VydC5jb20vQ1BTMB8GA1UdIwQYMBaAFPS24SAd/imu0uRhpbKiJbLIFzVuMB0G
# A1UdDgQWBBQ2RIaOpLqwZr68KC0dRDbd42p6vDBxBgNVHR8EajBoMDKgMKAuhixo
# dHRwOi8vY3JsMy5kaWdpY2VydC5jb20vc2hhMi1hc3N1cmVkLXRzLmNybDAyoDCg
# LoYsaHR0cDovL2NybDQuZGlnaWNlcnQuY29tL3NoYTItYXNzdXJlZC10cy5jcmww
# gYUGCCsGAQUFBwEBBHkwdzAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNl
# cnQuY29tME8GCCsGAQUFBzAChkNodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20v
# RGlnaUNlcnRTSEEyQXNzdXJlZElEVGltZXN0YW1waW5nQ0EuY3J0MA0GCSqGSIb3
# DQEBCwUAA4IBAQBIHNy16ZojvOca5yAOjmdG/UJyUXQKI0ejq5LSJcRwWb4UoOUn
# gaVNFBUZB3nw0QTDhtk7vf5EAmZN7WmkD/a4cM9i6PVRSnh5Nnont/PnUp+Tp+1D
# nnvntN1BIon7h6JGA0789P63ZHdjXyNSaYOC+hpT7ZDMjaEXcw3082U5cEvznNZ6
# e9oMvD0y0BvL9WH8dQgAdryBDvjA4VzPxBFy5xtkSdgimnUVQvUtMjiB2vRgorq0
# Uvtc4GEkJU+y38kpqHNDUdq9Y9YfW5v3LhtPEx33Sg1xfpe39D+E68Hjo0mh+s6n
# v1bPull2YYlffqe0jmd4+TaY4cso2luHpoovMIIFMTCCBBmgAwIBAgIQCqEl1tYy
# G35B5AXaNpfCFTANBgkqhkiG9w0BAQsFADBlMQswCQYDVQQGEwJVUzEVMBMGA1UE
# ChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMSQwIgYD
# VQQDExtEaWdpQ2VydCBBc3N1cmVkIElEIFJvb3QgQ0EwHhcNMTYwMTA3MTIwMDAw
# WhcNMzEwMTA3MTIwMDAwWjByMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNl
# cnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMTEwLwYDVQQDEyhEaWdp
# Q2VydCBTSEEyIEFzc3VyZWQgSUQgVGltZXN0YW1waW5nIENBMIIBIjANBgkqhkiG
# 9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvdAy7kvNj3/dqbqCmcU5VChXtiNKxA4HRTNR
# EH3Q+X1NaH7ntqD0jbOI5Je/YyGQmL8TvFfTw+F+CNZqFAA49y4eO+7MpvYyWf5f
# ZT/gm+vjRkcGGlV+Cyd+wKL1oODeIj8O/36V+/OjuiI+GKwR5PCZA207hXwJ0+5d
# yJoLVOOoCXFr4M8iEA91z3FyTgqt30A6XLdR4aF5FMZNJCMwXbzsPGBqrC8HzP3w
# 6kfZiFBe/WZuVmEnKYmEUeaC50ZQ/ZQqLKfkdT66mA+Ef58xFNat1fJky3seBdCE
# GXIX8RcG7z3N1k3vBkL9olMqT4UdxB08r8/arBD13ays6Vb/kwIDAQABo4IBzjCC
# AcowHQYDVR0OBBYEFPS24SAd/imu0uRhpbKiJbLIFzVuMB8GA1UdIwQYMBaAFEXr
# oq/0ksuCMS1Ri6enIZ3zbcgPMBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0PAQH/
# BAQDAgGGMBMGA1UdJQQMMAoGCCsGAQUFBwMIMHkGCCsGAQUFBwEBBG0wazAkBggr
# BgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEMGCCsGAQUFBzAChjdo
# dHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290
# Q0EuY3J0MIGBBgNVHR8EejB4MDqgOKA2hjRodHRwOi8vY3JsNC5kaWdpY2VydC5j
# b20vRGlnaUNlcnRBc3N1cmVkSURSb290Q0EuY3JsMDqgOKA2hjRodHRwOi8vY3Js
# My5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290Q0EuY3JsMFAGA1Ud
# IARJMEcwOAYKYIZIAYb9bAACBDAqMCgGCCsGAQUFBwIBFhxodHRwczovL3d3dy5k
# aWdpY2VydC5jb20vQ1BTMAsGCWCGSAGG/WwHATANBgkqhkiG9w0BAQsFAAOCAQEA
# cZUS6VGHVmnN793afKpjerN4zwY3QITvS4S/ys8DAv3Fp8MOIEIsr3fzKx8MIVoq
# twU0HWqumfgnoma/Capg33akOpMP+LLR2HwZYuhegiUexLoceywh4tZbLBQ1QwRo
# stt1AuByx5jWPGTlH0gQGF+JOGFNYkYkh2OMkVIsrymJ5Xgf1gsUpYDXEkdws3XV
# k4WTfraSZ/tTYYmo9WuWwPRYaQ18yAGxuSh1t5ljhSKMYcp5lH5Z/IwP42+1ASa2
# bKXuh1Eh5Fhgm7oMLSttosR+u8QlK0cCCHxJrhO24XxCQijGGFbPQTS2Zl22dHv1
# VjMiLyI2skuiSpXY9aaOUjGCAk0wggJJAgEBMIGGMHIxCzAJBgNVBAYTAlVTMRUw
# EwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20x
# MTAvBgNVBAMTKERpZ2lDZXJ0IFNIQTIgQXNzdXJlZCBJRCBUaW1lc3RhbXBpbmcg
# Q0ECEA1CSuC+Ooj/YEAhzhQA8N0wDQYJYIZIAWUDBAIBBQCggZgwGgYJKoZIhvcN
# AQkDMQ0GCyqGSIb3DQEJEAEEMBwGCSqGSIb3DQEJBTEPFw0yMTAxMjYwODExMjRa
# MCsGCyqGSIb3DQEJEAIMMRwwGjAYMBYEFOHXgqjhkb7va8oWkbWqtJSmJJvzMC8G
# CSqGSIb3DQEJBDEiBCDVUA+HmAmxq+vZIZHPcKSraTpe9Z0FIXoz4A4USPVpgTAN
# BgkqhkiG9w0BAQEFAASCAQBUaiK1/J5z78EpQCRZitLBhIeoYq7jM4hCmlOyDlT2
# aakBHtgEelG+UkjVP/CHJLnpKduU9tr3SOXEOxTDTFgTdvMZIgyQ9t++XOVTiJ63
# jt1wjsZdmL7PnAKIjxWSZcfFT4QMBe6C05ZfR7Z2/t6V0VZMyIEwyufo7ZG8Ro6N
# Xly+Pha707beuj+DwqqdOq42+qAXq/WTB9rfajDQ7Us2Tx/LZbljkEHM0SyDaOcP
# 3Xb6J58Vs6jMWz5pshwr90GeMCTBsbvFl+q1cUQCGMhZJwrKe5q4gmg55rslcWvN
# PSP8jRW2qgv6OyJEJbGVFls/3rfS8znR/TH+hdTA+xSF
# SIG # End signature block
