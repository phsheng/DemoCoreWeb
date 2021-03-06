﻿#Launch WebApi Website and POST a request for generating client APIs
cd $PSScriptRoot
$path = "$PSScriptRoot\CoreNG3\bin\Debug\netcoreapp3.1"
$procArgs = @{
    FilePath         = "dotnet.exe"
    ArgumentList     = "$path\CoreNG3.dll"
    WorkingDirectory = $path
    PassThru         = $true
}
$process = Start-Process @procArgs

Invoke-RestMethod http://localhost:5000/api/values -Method GET

