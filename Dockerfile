FROM prom/prometheus:v1.7.1

ADD /rules/*.rules /etc/prometheus/infra-server-rules/
ADD /infra-server-rules.yml /
COPY /docker-entrypoint.sh /

RUN promtool check-rules /etc/prometheus/infra-server-rules/*.rules

VOLUME ["/etc/prometheus/infra-server-rules/"]

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/cp", "-f", "/infra-server-rules.yml", "/etc/prometheus/conf.d/"]
