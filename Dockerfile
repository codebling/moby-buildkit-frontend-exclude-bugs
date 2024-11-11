# syntax=docker.io/docker/dockerfile:1.11.1-labs

FROM alpine

WORKDIR /app

COPY --exclude=*.1 dir1 .

RUN find && false
