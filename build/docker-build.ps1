<#
    .DESCRIPTION
    Runs a docker build for the version specified in the VERSION file.
#>

$scriptPath = Split-Path -parent $PSCommandPath

# Use contents of VERSION file as variables
Get-Content "$scriptPath\VERSION" |% {
    if ($_) {
        $varParts = $_.Split('=')
        New-Variable -Name $varParts[0] -Value $varParts[1]
    }
}

docker build -t killrvideo/killrvideo-dse:$DOCKER_BUILD_TAG .