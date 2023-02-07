FROM debian:bookworm

WORKDIR /app

RUN  apt-get update -y  && apt-get install net-tools bc -y

ADD monitor.sh monitor.sh
ADD probe.sh probe.sh 

CMD ["./monitor.sh"]
