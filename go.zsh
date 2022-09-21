GOPATH="${HOME}/go"


# ref: https://golang.org/doc/manage-install
# set proper GOROOT with `go1.16.3 env GOROOT`

GOROOT="/usr/local/Cellar/go/1.17.6/libexec"
GOPRIVATE="github.skyscannertools.net"

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
