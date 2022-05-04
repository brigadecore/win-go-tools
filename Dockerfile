# escape=`

FROM mcr.microsoft.com/windows/servercore:1809 AS builder

# Amend the path with tools we'll be installing in subsequent steps.
RUN setx /M PATH "%PATH%;C:\msys64\usr\bin;C:\msys64\mingw64\bin"

# Install msys2 -- a lightweight, Linux-like environment, complete with its own
# package manager.
RUN curl `
      -L `
      https://github.com/msys2/msys2-installer/releases/download/2022-03-19/msys2-base-x86_64-20220319.sfx.exe `
      -o C:\windows\temp\msys2-base.exe `
    && C:\windows\temp\msys2-base.exe

# Tell msys2's bash shell which toolchain we plan to work with. This will ensure
# all details of the shell (path, for instance) are set up properly.
ENV MSYSTEM=mingw64

# Note the first time you use this bash shell, a lot of one-time initialization
# occurs and you're advised to log out and back into the shell -- hence the
# initial `bash -l -c true` before proceeding with what we care about.
#
# Install Go and the whole gcc/ld toolchain that can be used for compiling Go
# programs that require CGO.
RUN bash -l -c true `
    && bash -l -c " `
      pacman -S --noconfirm `
        git `
        mingw-w64-x86_64-cmake `
        mingw-w64-x86_64-go `
        mingw-w64-x86_64-toolchain `
    "
