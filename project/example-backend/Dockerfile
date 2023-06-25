FROM golang:1.16

WORKDIR /

COPY . .

ENV REQUEST_ORIGIN=http://localhost

RUN go build

RUN useradd -m appuser

USER appuser

CMD ./server