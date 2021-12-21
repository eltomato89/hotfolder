FROM alpine

LABEL maintainer="Jens Koehler <j.koehler@outlook.com>"
LABEL version="1.0"
LABEL description="Runs a command every time a file is added to the hotfolder"

RUN mkdir -p /opt/app
WORKDIR /opt/app

RUN apk --no-cache --update add bash inotify-tools curl jq

COPY ./app /opt/app/
RUN chmod +x *.sh

ENV DELAY=30
ENV FILTER='.*XML$'

ENTRYPOINT [ "/opt/app/watch.sh" ]