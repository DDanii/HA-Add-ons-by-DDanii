#############
ARG BUILD_FROM
ARG BUILD_ARCH
ARG BUILD_VERSION

FROM golang:1.22.1-alpine3.19 AS build

WORKDIR /app

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY rootfs/ /

ENV CGO_ENABLED=0 GOOS=linux GOARCH=$BUILD_ARCH

RUN go build -o launcher

FROM $BUILD_FROM

COPY --from=build /app/launcher /launcher

CMD ["/launcher"]

LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION}