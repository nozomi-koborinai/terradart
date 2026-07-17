import 'dart:io';

import 'package:genkit_shelf/genkit_shelf.dart';
import 'package:lunch_concierge_server/lunch_flow.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_static/shelf_static.dart';

Future<void> main() async {
  final bundle = await createLunchFlow();
  final handler = _buildHandler(bundle);
  final port = switch (Platform.environment['PORT']) {
    final value? => int.parse(value),
    _ => 8080,
  };
  final server = await io.serve(handler, InternetAddress.anyIPv4, port);
  stdout.writeln('Lunch Concierge listening on :${server.port}');
}

/// Cloud Run reserves some paths ending in `z` (including `/healthz`), so the
/// probe/public health route must not use that name.
Handler _buildHandler(LunchFlowBundle bundle) {
  final router = Router()
    ..get('/health', (_) => Response.ok('ok'))
    ..post('/api/lunch', shelfHandler(bundle.flow));

  final publicDir = switch (Platform.environment['PUBLIC_DIR']) {
    final value? => value,
    _ => '/app/public',
  };
  final staticHandler = createStaticHandler(
    publicDir,
    defaultDocument: 'index.html',
  );

  return const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(Cascade().add(router.call).add(staticHandler).handler);
}
