JAVA_VERSION=11.0.4
JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home

alias java-versions="/usr/libexec/java_home -V"
alias java-home=java_home_get

function java_home_get() {
    /usr/libexec/java_home -v $@
}

function java_switch_to_8() {
    export JAVA_HOME=$(java_home_get 1.8.0_162)
    export PATH=$JAVA_HOME/bin:$PATH
}
