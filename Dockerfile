FROM docker/whalesay

RUN apk update && apk add --no-cache fortune

CMD ["sh", "-c", "fortune -a | cowsay"]
