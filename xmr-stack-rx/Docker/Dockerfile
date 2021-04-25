FROM debian:latest

LABEL org.opencontainers.image.source="https://github.com/paoliveira/azure-cloud-mining-script"

RUN apt-get -y update
#RUN sysctl -w vm.nr_hugepages=1300

WORKDIR /usr/xmr-stak-rx
ADD xmr-stak-rx-linux-1.0.5-cpu.tar.xz /usr/xmr-stak-rx/
COPY config.txt /usr/xmr-stak-rx/
COPY cpu.txt /usr/xmr-stak-rx/
COPY pools.txt /usr/xmr-stak-rx/

ENTRYPOINT /usr/xrm-stak-rx/xmr-stak-rx-linux-1.0.5-cpu/xmr-stak-rx
