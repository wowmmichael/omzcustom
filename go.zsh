GOPATH="${HOME}/go"

# find go root with `GOROOT="$(brew --prefix golang)/libexec"`

GOROOT="/usr/local/opt/go/libexec"
GOPRIVATE="github.skyscannertools.net"

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
