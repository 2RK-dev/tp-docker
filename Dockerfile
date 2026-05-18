FROM ubuntu:24.04
WORKDIR /mydir
RUN apt-get update && apt-get install -y curl python3
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl
ENV LC_ALL=C.UTF-8
ENTRYPOINT ["/usr/local/bin/youtube-dl"]
