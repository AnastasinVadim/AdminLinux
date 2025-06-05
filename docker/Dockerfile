FROM python:3.10-alpine AS builder
WORKDIR /build
RUN apk add --no-cache make
COPY ./Makefile ./Makefile
COPY ./pyproject.toml ./pyproject.toml
RUN make install && make install-dev


FROM python:3.10-alpine AS runtime
WORKDIR /app
RUN apk add --no-cache make
COPY . .
COPY --from=builder /install /usr/local
EXPOSE 8110
CMD ["make", "run"]
