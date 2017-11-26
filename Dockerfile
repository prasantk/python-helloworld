FROM alpine:latest
LABEL maintainer="Prasant Kumar"
LABEL description="This example Dockerfile installs python."

RUN apk add --update python && \
    rm -rf /var/cache/apk/*

COPY hello.py .
ENTRYPOINT ["python", "hello.py"]
