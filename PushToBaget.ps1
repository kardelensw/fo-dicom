Remove-Item .\.output\ -Recurse
dotnet clean .\FO-DICOM.Full.sln -o .\.output
dotnet build .\FO-DICOM.Full.sln -o .\.output
dotnet pack .\FO-DICOM.Full.sln -o .\.output\packages
dotnet nuget push -s http://nuget.kardelenyazilim.com:5555/v3/index.json .\.output\packages\fo-dicom.NLog.5.0.1-krmd.nupkg
dotnet nuget push -s http://nuget.kardelenyazilim.com:5555/v3/index.json .\.output\packages\fo-dicom.Imaging.ImageSharp.5.0.1-krmd.nupkg
dotnet nuget push -s http://nuget.kardelenyazilim.com:5555/v3/index.json .\.output\packages\fo-dicom.5.0.1-krmd.nupkg