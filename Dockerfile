FROM debian:latest AS build

RUN apt update
RUN apt install cargo -y

RUN mkdir /src
COPY . /src
WORKDIR src

RUN cargo build
