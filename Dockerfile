FROM rust:alpine3.23 AS build

RUN mkdir /src
COPY . /src
WORKDIR src

RUN cargo build
