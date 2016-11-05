FROM ubuntu:trusty

RUN apt-get update && \
    apt-get install -y wget libfontconfig1 && \
    wget -O /tmp/grafana.deb https://grafanarel.s3.amazonaws.com/builds/grafana_3.1.1-1470047149_amd64.deb && \
    dpkg -i /tmp/grafana.deb && \
    rm /tmp/grafana.deb

WORKDIR /usr/share/grafana

ENV GF_PATHS_DATA=/srv/grafana/data GF_PATHS_PLUGINS/srv/grafana/plugins GF_DATABASE_TYPE=sqlite3 GF_DATABASE_PATH=/srv/grafana/db.sqlite GF_SECURITY_ADMIN_USER=admin GF_SECURITY_ADMIN_PASSWORD=admin GF_USERS_ALLOW_SIGN_UP=false GF_USERS_AUTH_ANONYMOUS=true GF_SERVER_HTTP_PORT=8080

USER grafana

ENTRYPOINT /usr/sbin/grafana-server
