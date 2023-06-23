FROM docker:24-dind

RUN apk add --no-cache git

COPY ./builder.sh .

ENTRYPOINT [ "/builder.sh" ]