UTILITIES=$HOME/Utilities
JETBRAIN=$UTILITIES/jetbrains
JAVABIN=$JAVA_HOME/bin
GOBIN="${GOPATH}/bin:${GOROOT}/bin"
VSCODEBIN="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# openssl 1.1 installed with brew on 2020/08/02
OPENSSLBIN="/usr/local/opt/openssl@1.1/bin"    

export PATH=$OPENSSLBIN:$JAVABIN:$GOBIN:$JETBRAIN:$VSCODEBIN:$PATH
