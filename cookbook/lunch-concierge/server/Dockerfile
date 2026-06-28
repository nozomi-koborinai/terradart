# Build with the repository root as the Docker context:
# docker build -f cookbook/lunch-concierge/server/Dockerfile -t <image-uri> .

FROM ghcr.io/cirruslabs/flutter:stable AS client_builder
WORKDIR /src/cookbook/lunch-concierge/client
COPY cookbook/lunch-concierge/client/pubspec.yaml ./
COPY cookbook/lunch-concierge/shared ../shared
RUN flutter pub get
COPY cookbook/lunch-concierge/client ./
RUN flutter build web --release

FROM dart:stable AS server_builder
WORKDIR /src
COPY pubspec.yaml pubspec.lock ./
COPY packages ./packages
COPY cookbook ./cookbook
RUN dart pub get
WORKDIR /src/cookbook/lunch-concierge/shared
RUN dart run build_runner build --delete-conflicting-outputs
WORKDIR /src/cookbook/lunch-concierge/server
RUN dart compile exe bin/server.dart -o /out/server

FROM debian:bookworm-slim AS runtime
RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY --from=server_builder /out/server /app/server
COPY --from=client_builder /src/cookbook/lunch-concierge/client/build/web /app/public
ENV PORT=8080
CMD ["/app/server"]
