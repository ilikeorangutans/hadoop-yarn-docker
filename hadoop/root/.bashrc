export SPARK_HOME=/usr/local/spark
export HADOOP_HOME=/usr/local/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

export PATH=$SPARK_HOME/bin:$HADOOP_HOME/bin:$PATH

alias dfs="hdfs dfs"

