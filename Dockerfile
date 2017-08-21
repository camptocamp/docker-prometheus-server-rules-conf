FROM prom/prometheus:v1.7.1

ADD /rules/*.rules /rules/

RUN promtool check-rules /rules/*.rules

VOLUME ["/etc/prometheus"]

ENTRYPOINT ["/bin/cp", "-a", "/rules", "/etc/prometheus"]
