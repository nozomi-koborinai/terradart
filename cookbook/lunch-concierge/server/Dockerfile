# Build with the repository root as the Docker context (filtered by the
# repo-root .dockerignore):
# docker build -f cookbook/lunch-concierge/server/Dockerfile -t <image-uri> .
#
# The sed calls below detach shared/ and server/ from the repo's pub
# workspace: a workspace member cannot run `pub get` standalone, and copying
# the whole monorepo into the image just to satisfy the workspace root is
# not worth it for a cookbook recipe.

FROM ghcr.io/cirruslabs/flutter:stable AS client_builder
WORKDIR /src/cookbook/lunch-concierge/client
COPY cookbook/lunch-concierge/client/pubspec.yaml ./
COPY cookbook/lunch-concierge/shared ../shared
RUN sed -i '/^resolution: workspace$/d' ../shared/pubspec.yaml
RUN flutter pub get
COPY cookbook/lunch-concierge/client ./
RUN flutter build web --release

FROM dart:stable AS server_builder
WORKDIR /src/cookbook/lunch-concierge
COPY cookbook/lunch-concierge/shared ./shared
RUN sed -i '/^resolution: workspace$/d' shared/pubspec.yaml
COPY cookbook/lunch-concierge/server/pubspec.yaml ./server/
RUN sed -i '/^resolution: workspace$/d' server/pubspec.yaml
WORKDIR /src/cookbook/lunch-concierge/server
RUN dart pub get
COPY cookbook/lunch-concierge/server ./
# The COPY above restores the workspace marker; strip it again and re-check
# resolution against the cache warmed by the earlier `dart pub get`.
RUN sed -i '/^resolution: workspace$/d' pubspec.yaml && dart pub get --offline
RUN mkdir -p /out && dart compile exe bin/server.dart -o /out/server

FROM debian:bookworm-slim AS runtime
RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && useradd --system --home /app --shell /usr/sbin/nologin app
WORKDIR /app
COPY --from=server_builder /out/server /app/server
COPY --from=client_builder /src/cookbook/lunch-concierge/client/build/web /app/public
ENV PORT=8080
USER app
CMD ["/app/server"]
