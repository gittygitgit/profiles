M2_HOME="/usr/local/apache-maven/apache-maven-3.2.3"
GRADLE_HOME="/usr/local/gradle"
CATALINA_HOME="/usr/local/bin/tomcat"
JAVA_HOME="$(/usr/libexec/java_home)"
PYTHONPATH="/usr/local/lib/python2.7/site-packages"
REDIS_HOME="/Users/grudkowm/bin/redis-3.0.6"
ACTIVEMQ_HOME="/usr/local/bin/activemq"
ZK_HOME="/usr/local/bin/zk"
KAFKA_HOME="/usr/local/bin/kafka"
CASSANDRA_HOME="/usr/local/bin/cassandra"
HADOOP_HOME="/usr/local/bin/hadoop"
SCALA_HOME="/usr/local/bin/scala"
export JAVA_HOME
export M2_HOME
export PATH
export PYTHONPATH
export REDIS_HOME
export CATALINA_HOME
export ACTIVEMQ_HOME
export KAFKA_HOME
export ZK_HOME
export CASSANDRA_HOME
export SCALA_HOME

PATH="$PATH:$M2_HOME/bin"
PATH="$PATH:$STORM_HOME/bin:~/dev/bin"
PATH="$PATH:$GRADLE_HOME/bin"
PATH="$PATH:$CATALINA_HOME/bin"
PATH="$PATH:$KAFKA_HOME/bin"
PATH="$PATH:$ZK_HOME/bin"
PATH="$PATH:$CASSANDRA_HOME/bin"
PATH="$PATH:$HADOOP_HOME/bin"
PATH="$PATH:$SCALA_HOME/bin"


#if [ -f ~/.bash_aliases ]; then
#. ~/.bash_aliases
#fi

#export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
setjdk() {
  export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/grudkowm/.sdkman"
[[ -s "/Users/grudkowm/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/grudkowm/.sdkman/bin/sdkman-init.sh"

function scrape() {
  if [ $# -lt 2 ]; then
    echo "usage: $0 [domain] [base]"
    exit 1
  fi

  echo $#
  echo "scrape"
  DOMAIN=$1
  BASE=$2
  #wget --recursive --html-extension --no-clobber --page-requisites --convert-links --no-parent --domains facebook.github.io  facebook.github.io/react/docs/
  printf "wget --recursive --html-extension --no-clobber --page-requisites --convert-links --no-parent --domains %s --no-parent %s" $DOMAIN $DOMAIN/$BASE
  wget --recursive --html-extension --no-clobber --page-requisites --convert-links --no-parent --domains $DOMAIN --no-parent $DOMAIN/$BASE
}

function setgo() {
  export GOPATH=$(pwd)
}

