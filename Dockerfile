FROM ibmcom/iib-mq-server:latest
COPY *.mqsc /etc/mqm/
COPY *.sh /usr/local/bin/
RUN mkdir -p /var/mqsi/odbc/
COPY odbc.ini /var/mqsi/odbc/
COPY *.bar /tmp/BARs/
USER root
RUN chmod +x /usr/local/bin/*.sh

