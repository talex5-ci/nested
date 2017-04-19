FROM alpine:3.5 AS build
RUN date > /tmp/now

FROM alpine:3.5
COPY --from=0 /tmp/now /root/date
