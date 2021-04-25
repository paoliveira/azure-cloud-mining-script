FROM ubuntu:18.04

LABEL org.opencontainers.image.source="https://github.com/paoliveira/azure-cloud-mining-script"

RUN apt-get -y update
RUN sysctl -w vm.nr_hugepages=4096

WORKDIR /xmr-stak-rx
ADD ../xmr-stak-rx-linux-1.0.5-cpu.tar.xz /xmr-stak-rx/
COPY config.txt /xmr-stak-rx/
COPY cpu.txt /xmr-stak-rx/
COPY pools.txt /xmr-stak-rx/

ENTRYPOINT /xrm-stak-rx/xmr-stak-rx-linux-1.0.5-cpu/xmr-stak-rx
