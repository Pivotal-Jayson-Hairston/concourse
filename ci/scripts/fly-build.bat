set PATH=C:\Go\bin;%PATH

set GOPATH=%CD%\concourse
set PATH=%CD%\concourse\bin;%PATH%
set /p FINAL_VERSION=<%CD%\final-version\version

set GOARCH=amd64
set CGO_ENABLED=0

cd .\concourse\src\github.com\concourse\fly

go build -ldflags "-X github.com/concourse/fly/version.Version=%FINAL_VERSION%" \
  -o "%platform%/fly.exe" \
  github.com/concourse/fly
