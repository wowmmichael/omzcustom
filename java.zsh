JAVA_VERSION=11.0.4
JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home

alias java-versions="/usr/libexec/java_home -V"
alias java-home=java_home_get

function java_home_get() {
    /usr/libexec/java_home -v $@
}
