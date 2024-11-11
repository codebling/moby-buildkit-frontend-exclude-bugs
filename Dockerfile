# syntax=docker.io/docker/dockerfile:1.11.1-labs

FROM alpine

WORKDIR /app

# Correctly copies `a.2` and erroneously copies `a.1`
# COPY --exclude=*.1 a.* .

# Correctly copies `a.2` and `dir2/a.2` and erroneously copies `dir2/a.1`
COPY --exclude=*.1 dir1 .

RUN find && false
