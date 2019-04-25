FROM fedora:29
LABEL maintainer="fesiqueirapinheiro@gmail.com"

RUN dnf update -y
RUN dnf install dhcp-server -y && dnf clean all

COPY ./dhcpd.conf /etc/dhcp/dhcpd.conf

EXPOSE 67/udp

ENTRYPOINT ["/usr/sbin/dhcpd", "-f"]
