FROM alpine:3.16.2

RUN apk update && apk add bind-tools curl

COPY run.sh run.sh

CMD ["sh", "run.sh"]