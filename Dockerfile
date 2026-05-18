FROM docker/whalesay

COPY hello.txt default_msg.txt

RUN apk update && apk add --no-cache fortune

CMD ["sh", "-c", "cat default_msg.txt | cowsay"]
