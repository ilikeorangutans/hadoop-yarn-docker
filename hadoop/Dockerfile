FROM openjdk:latest

ENV HADOOP_VERSION=2.8.1
ENV HADOOP_HOME=/usr/local/hadoop

RUN curl -L http://apache.mirror.globo.tech/hadoop/common/hadoop-2.8.1/hadoop-2.8.1.tar.gz | tar -xz -C /usr/local/
RUN ln -s /usr/local/hadoop-$HADOOP_VERSION /usr/local/hadoop
RUN curl -L https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz | tar -xz -C /usr/local
RUN ln -s /usr/local/spark-2.2.0-bin-hadoop2.7 /usr/local/spark
RUN mkdir -p /data

COPY conf $HADOOP_HOME/etc/hadoop
COPY root /root

RUN mkdir -p /spark
VOLUME /spark

RUN $HADOOP_HOME/bin/hdfs namenode -format

VOLUME /data

EXPOSE 8020 9000 50010 50020 50070 50075 50090

