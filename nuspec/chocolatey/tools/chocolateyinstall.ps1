﻿$packageName = 'codecov'
$url = 'https://github.com/codecov/codecov-exe/releases/download/v1.0.0/Codecov.zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$splitUrl = $url.Split('/');
$zipFileName = $splitUrl[$splitUrl.Length - 1]
$zipFilePath = Join-Path $toolsDir $zipFileName
Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $zipFilePath -Url $url
Get-ChocolateyUnzip -FileFullPath $zipFilePath -Destination $toolsDir