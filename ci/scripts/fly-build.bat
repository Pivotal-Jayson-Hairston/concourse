set PATH=C:\Go\bin;%PATH

set GOPATH=%CD%\concourse
set PATH=%CD%\concourse\bin;%PATH%

set /p FinalVersion=<final-version\version

go build -ldflags "-X github.com/concourse/fly/version.Version=%FinalVersion%" -o windows/fly.exe github.com/concourse/fly
