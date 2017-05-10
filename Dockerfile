FROM alpine

ADD /rules/*.rules /rules/

VOLUME ["/etc/prometheus"]

ENTRYPOINT ["/bin/cp", "-a", "/rules", "/etc/prometheus"]
