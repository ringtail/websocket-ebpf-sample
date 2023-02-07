FROM alpine:3.14

WORKDIR /app

RUN  apk update && apk add net-tools

ADD monitor.sh monitor.sh
ADD probe.sh probe.sh 

CMD ["./monitor.sh"]
