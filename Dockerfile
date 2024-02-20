FROM alpine:latest

RUN apk add --no-cache knot-resolver bind-tools

RUN apk update && \
    apk add --no-cache tcpdump

COPY kresd.conf /etc/knot-resolver/kresd.conf

# Export DNS over UDP & TCP, DNS-over-TLS, web interface
EXPOSE 53/UDP 53/TCP 853/TCP 8053/TCP

# Run Knot Resolver when the container starts
CMD ["kresd", "-c", "/etc/knot-resolver/kresd.conf", "-n", "-a", "0.0.0.0@53"]
