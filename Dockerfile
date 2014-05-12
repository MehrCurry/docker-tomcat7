FROM dockerfile/java
MAINTAINER Guido Zockoll "gzockoll@gmail.com"
RUN wget -O /tmp/tomcat6.tar.gz http://mirror.cogentco.com/pub/apache/tomcat/tomcat-6/v6.0.39/bin/apache-tomcat-6.0.39.tar.gz
RUN (cd /opt && tar zxf /tmp/tomcat6.tar.gz)
RUN (mv /opt/apache-tomcat* /opt/tomcat)
ADD ./run.sh /usr/local/bin/run
EXPOSE 8080
CMD ["/bin/sh", "-e", "/usr/local/bin/run"]
