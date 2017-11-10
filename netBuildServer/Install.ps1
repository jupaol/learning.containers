Invoke-WebRequest "https://download.microsoft.com/download/9/B/B/9BB1309E-1A8F-4A47-A6C5-ECF76672A3B3/BuildTools_Full.exe" `
	-OutFile "$env:TEMP\BuildTools_Full.exe" -UseBasicParsing
&  "$env:TEMP\BuildTools_Full.exe" /Silent /Full

Install-WindowsFeature NET-Framework-45-ASPNET
Install-WindowsFeature Web-Asp-Net45

Invoke-WebRequest "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" `
	-OutFile "C:\windows\nuget.exe" -UseBasicParsing
&  "C:\windows\nuget.exe" Install MSBuild.Microsoft.VisualStudio.Web.targets -Version 12.0.4

Move-Item 'C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v12.0\MSBuild.Microsoft.VisualStudio.Web.targets.12.0.4\tools\VSToolsPath\*' 'C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v12.0\'
setx PATH '%PATH%;C:\Program Files (x86)\MSBuild\12.0\Bin\msbuild.exe'
