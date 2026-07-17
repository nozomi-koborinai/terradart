import 'dart:io';

import 'package:lunch_concierge_server/app.dart';
import 'package:lunch_concierge_server/lunch_flow.dart';
import 'package:shelf/shelf_io.dart' as io;

Future<void> main() async {
  final bundle = await createLunchFlow();
  final publicDir = switch (Platform.environment['PUBLIC_DIR']) {
    final value? when value.isNotEmpty => value,
    _ => '/app/public',
  };
  final iapAudience = switch (Platform.environment['IAP_AUDIENCE']) {
    final value? when value.isNotEmpty => value,
    _ => null,
  };
  final handler = buildApp(
    bundle: bundle,
    publicDir: publicDir,
    iapAudience: iapAudience,
  );
  final port = switch (Platform.environment['PORT']) {
    final value? => int.parse(value),
    _ => 8080,
  };
  final server = await io.serve(handler, InternetAddress.anyIPv4, port);
  stdout.writeln('Lunch Concierge listening on :${server.port}');
}
