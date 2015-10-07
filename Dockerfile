FROM java:8-jre
MAINTAINER Marco Sanchez <marco@kamikazelab.com>

ENV REFRESHED_AT 2015-10-06
ENV LOGSTASH_VERSION 1.5.4
ENV LOGSTASH_PATH /opt/logstash-${LOGSTASH_VERSION}
ENV PATH $PATH:$LOGSTASH_PATH/bin

ADD https://download.elastic.co/logstash/logstash/logstash-${LOGSTASH_VERSION}.tar.gz /logstash.tar.gz
RUN tar -C /opt -xzvf ./logstash.tar.gz && rm ./logstash.tar.gz

VOLUME /data
VOLUME /etc/logstash/

ENTRYPOINT ["logstash"]

CMD ["-f", "/etc/logstash/logstash.conf"]
