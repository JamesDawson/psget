function Install-PsGetHeadless {
    $Destination = "C:\Program Files\WindowsPowerShell\Modules\"

    New-Item ($Destination + "\PsGet\") -ItemType Directory -Force | out-null
    $client = (New-Object Net.WebClient)
    $client.Proxy.Credentials = [System.Net.CredentialCache]::DefaultNetworkCredentials
    #$client.DownloadFile("https://github.com/psget/psget/raw/master/PsGet/PsGet.psm1", $Destination + "\PsGet\PsGet.psm1")
    $client.DownloadFile("http://10.0.0.79/PsGetRepo/PsGet.psm1", $Destination + "\PsGet\PsGet.psm1")
}

Install-PsGetHeadless