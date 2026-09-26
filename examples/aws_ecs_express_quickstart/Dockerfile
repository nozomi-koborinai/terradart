# AOT-compiles bin/server.dart and copies the binary onto an empty image.
# The server imports only dart: libraries, so no pub get is needed here.
FROM dart:stable AS build
WORKDIR /src
COPY bin/server.dart .
RUN dart compile exe server.dart -o /src/server

FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /src/server /app/server
EXPOSE 8080
CMD ["/app/server"]
