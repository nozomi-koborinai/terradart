import 'package:genkit_shelf/genkit_shelf.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_static/shelf_static.dart';

import 'lunch_flow.dart';

/// Cloud Run reserves some paths ending in `z` (including `/healthz`), so the
/// public health route must not use that name.
Handler buildRoutes({
  required LunchFlowBundle bundle,
  required String publicDir,
}) {
  final router = Router()
    ..get('/health', (_) => Response.ok('ok'))
    ..post('/api/lunch', shelfHandler(bundle.flow));

  final staticHandler = createStaticHandler(
    publicDir,
    defaultDocument: 'index.html',
  );

  return Cascade().add(router.call).add(staticHandler).handler;
}
