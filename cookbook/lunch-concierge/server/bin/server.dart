import 'dart:io';

import 'package:genkit_shelf/genkit_shelf.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_static/shelf_static.dart';

import 'package:lunch_concierge_server/lunch_flow.dart';

Future<void> main() async {
  final bundle = await createLunchFlow();
  final router = Router()
    ..get('/healthz', (_) => Response.ok('ok'))
    ..post('/api/lunch', shelfHandler(bundle.flow));

  final staticHandler = createStaticHandler(
    Platform.environment['PUBLIC_DIR'] ?? '/app/public',
    defaultDocument: 'index.html',
  );

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(Cascade().add(router.call).add(staticHandler).handler);

  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await io.serve(handler, InternetAddress.anyIPv4, port);
  stdout.writeln('Lunch Concierge listening on :${server.port}');
}
