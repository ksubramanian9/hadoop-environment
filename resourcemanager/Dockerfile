FROM hadoop-base:3.3.6

ENV JAVA_HOME=/usr/local/openjdk-11

HEALTHCHECK CMD curl -f http://localhost:8088/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 8088

CMD ["/bin/bash", "/run.sh"]