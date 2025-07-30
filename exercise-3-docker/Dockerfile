FROM golang:1.24.2 AS build
WORKDIR /app
COPY hello.go /app/
RUN go build -o /app/main hello.go

FROM ubuntu:22.04
RUN useradd executor
RUN mkdir /app && chown executor:executor /app
USER executor
WORKDIR /app
COPY --from=build --chown=executor:executor /app/main /app/
# ENTRYPOINT [ "./main" ]
# ENV USER=John
