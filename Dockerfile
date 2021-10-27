FROM debian:10

LABEL maintainer="lotusnoir"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update ; \
    apt-get install -y --no-install-recommends systemd systemd-sysv sudo gnupg python-apt ;\
    apt-get clean && rm -rf /var/lib/apt/lists/* ;\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ;\
    rm -Rf /usr/share/doc && rm -Rf /usr/share/man ;\
    rm -f /lib/systemd/system/multi-user.target.wants/getty.target

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/lib/systemd/systemd"]
