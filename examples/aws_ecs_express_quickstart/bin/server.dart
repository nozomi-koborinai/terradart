/// The Dart server the Express service runs: a `dart:io` HTTP server that
/// answers every request with a plain-text greeting.
///
/// It listens on `PORT` (default 8080), the container port the stack
/// declares. The Express service's load balancer health-checks `/`, so
/// every path returns 200. Only `dart:` imports, so the Dockerfile can
/// compile it without resolving the workspace.
library;

import 'dart:io';

Future<void> main() async {
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await HttpServer.bind(InternetAddress.anyIPv4, port);
  stdout.writeln('listening on :$port');
  await for (final request in server) {
    request.response
      ..headers.contentType = ContentType.text
      ..write('Hello from Dart on ECS Express Mode (${request.uri.path})\n');
    await request.response.close();
  }
}
