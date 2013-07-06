function Install-PsGetHeadless {
    $Destination = "C:\Program Files\WindowsPowerShell\Modules\"

    New-Item ($Destination + "\PsGet\") -ItemType Directory -Force | out-null
    $client = (New-Object Net.WebClient)
    $client.Proxy.Credentials = [System.Net.CredentialCache]::DefaultNetworkCredentials
    $client.DownloadFile("https://github.com/JamesDawson/psget/raw/headless/PsGet/PsGet.psm1", $Destination + "\PsGet\PsGet.psm1")
}

Install-PsGetHeadless