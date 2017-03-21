FROM alpine

ADD /rules/*.rules /etc/prometheus-rules/

VOLUME ["/etc/prometheus-rules"]

ENTRYPOINT ["/bin/true"]
