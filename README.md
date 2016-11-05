docker-grafana
==============

Grafana in a docker image

*Usage:*

* Build: `docker build -t grafana .`
* Run run: `docker run -v /host/grafana/data/:/srv/grafana/ grafana`

By default, grafana runs on port 8080 but no ports are exposed. The default login is admin/admin.

*Tips:*

* Set admin password: `-e GF_SECURITY_ADMIN_PASSWORD=admin`
* Set port: `-e GF_SERVER_HTTP_PORT=8080`
* Other settings: http://docs.grafana.org/installation/configuration/
