FROM golang:1.18.1-windowsservercore-1809 as builder

# Install Chocolatey and use that to install the rest of the toolchain
RUN Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
RUN choco install -y cmake mingw --installargs 'ADD_CMAKE_TO_PATH=System'
