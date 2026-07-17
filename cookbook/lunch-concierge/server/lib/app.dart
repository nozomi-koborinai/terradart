import 'package:shelf/shelf.dart';

import 'iap_jwt.dart';
import 'lunch_flow.dart';
import 'routes.dart';

Handler buildApp({
  required LunchFlowBundle bundle,
  required String publicDir,
  String? iapAudience,
  IapJwtVerifier? iapJwtVerifier,
}) {
  final routes = buildRoutes(bundle: bundle, publicDir: publicDir);
  return Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(
        iapJwtMiddleware(audience: iapAudience, verifier: iapJwtVerifier),
      )
      .addHandler(routes);
}
