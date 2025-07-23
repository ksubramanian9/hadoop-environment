#!/bin/bash

# Set the JAVA_HOME environment variable for the AMD64 architecture
JAVA_HOME=/usr/local/openjdk-11
HADOOP_VERSION=3.3.6
# HADOOP_PREFIX=/opt/hadoop-$HADOOP_VERSION
HADOOP_HOME=/opt/hadoop-$HADOOP_VERSION
# PATH=$HADOOP_PREFIX/bin/:$PATH
PATH=$HADOOP_HOME/bin/:$PATH


docker network create hadoop_network

docker build -t hadoop-base:3.3.6 .

docker compose up -d