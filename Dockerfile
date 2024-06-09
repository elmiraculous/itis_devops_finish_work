# Stage 1: Build the web application
FROM alpine:3.16 as build-stage

RUN apk --no-cache add build-base libmicrohttpd-dev

WORKDIR /app
COPY . /app
RUN make

# Stage 2: Production image
FROM alpine:3.16

COPY --from=build-stage /app/webapp /app/webapp

CMD ["/app/webapp"]
