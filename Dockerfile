FROM ubuntu:16.04

RUN apt-get update \
	&& apt-get install -y curl \
	&& apt-get install -y openjdk-8-jdk \
	&& apt-cache search jdk \
	&& apt-get install coreutils
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $PATH:/usr/lib/jvm/java-8-openjdk-amd64/bin


RUN curl "http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz" > spark2.tgz
RUN tar -xf spark2.tgz -C /usr/local

ENV SPARK_HOME /usr/local/spark-2.1.0-bin-hadoop2.7
ENV PATH $PATH:${SPARK_HOME}/bin

WORKDIR $SPARK_HOME