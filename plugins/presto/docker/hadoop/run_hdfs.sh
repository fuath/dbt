#!/bin/sh

# a script for running single hdfs commands in a docker line.

service ssh start
${HADOOP_HOME}/etc/hadoop/hadoop-env.sh
${HADOOP_HOME}/sbin/start-dfs.sh
${HADOOP_HOME}/bin/hdfs dfs $@
