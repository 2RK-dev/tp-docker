FROM docker/whalesay

COPY hello.txt default_msg.txt

CMD ["sh", "-c", "cat default_msg.txt | cowsay"]
