FROM alpine:3.16.2

COPY run.sh run.sh

CMD ["sh", "run.sh"]