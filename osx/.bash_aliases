DEV=~/dev
REPO_HOME="~/Documents/repositories"

export REPO_HOME
export SQUID_HOME="/usr/local/squid"

alias d="cd d"
alias dev="cd $DEV"
alias scr="cd $DEV/scripts"
alias xwr="chmod +xwr"
alias repo="cd $REPO_HOME"
alias dl="cd ~/Downloads"
alias redis="cd $REDIS_HOME"
alias tomcat="cd $CATALINA_HOME"
alias amq="cd $ACTIVEMQ_HOME"
alias kafka="cd $KAFKA_HOME"
alias zk="cd $ZK_HOME"
alias cas="cd $CASSANDRA_HOME"
alias had="cd $HADOOP_HOME"

alias startkafka="sudo $KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties"
alias stopkafka="sudo $KAFKA_HOME/bin/kafka-server-stop.sh"
alias startzk="sudo $ZK_HOME/bin/zkServer.sh start"
alias stopzk="sudo $ZK_HOME/bin/zkServer.sh stop"
alias zkstat="sudo $ZK_HOME/bin/zkServer.sh status"
alias tailzk="tail -f $ZK_HOME/zookeeper.log"
alias tailk="tail -f $KAFKA_HOME/logs/server.log"


#squid
alias squid="cd $SQUID_HOME"
alias squidstart="sudo $SQUID_HOME/sbin/squid -f /usr/local/squid/etc/squid.conf"
alias chma="chmod +xwr"

#misc
alias coursera="cd ~/Documents/dev/ref/courses/coursera"
alias docs="cd /Users/grudkowm/Documents/dev/docs"

#programs
alias sublime="open -a Sublime\ Text\ 2"
alias chrome="open -a Google\ Chrome"
alias safari="open -a safari"




