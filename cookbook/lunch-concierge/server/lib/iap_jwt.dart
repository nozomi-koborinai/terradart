import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:jose/jose.dart';
import 'package:shelf/shelf.dart';

/// IAP assertion header ([signed headers docs](https://cloud.google.com/iap/docs/signed-headers-howto)).
const iapJwtAssertionHeader = 'x-goog-iap-jwt-assertion';

const iapJwtIssuer = 'https://cloud.google.com/iap';

const iapPublicKeysJwkUrl = 'https://www.gstatic.com/iap/verify/public_key-jwk';

/// Verifies a compact IAP JWT against [audience] (the IAP OAuth client ID).
typedef IapJwtVerifier = Future<void> Function(String token, String audience);

/// When [audience] is null or empty, verification is skipped (local `dart run`).
/// When set, requests under `/api/` must carry a valid IAP JWT assertion.
Middleware iapJwtMiddleware({
  required String? audience,
  IapJwtVerifier? verifier,
}) {
  final expectedAudience = audience?.trim();
  if (expectedAudience == null || expectedAudience.isEmpty) {
    return (innerHandler) => innerHandler;
  }

  final verify = verifier ?? verifyIapJwt;
  return (Handler innerHandler) {
    return (Request request) async {
      if (!_isApiPath(request.requestedUri.path)) {
        return innerHandler(request);
      }

      final token = request.headers[iapJwtAssertionHeader];
      if (token == null || token.isEmpty) {
        return Response(401, body: 'Missing IAP JWT assertion');
      }

      try {
        await verify(token, expectedAudience);
      } on Exception catch (error) {
        return Response(401, body: 'Invalid IAP JWT: $error');
      }
      return innerHandler(request);
    };
  };
}

bool _isApiPath(String path) => path == '/api' || path.startsWith('/api/');

/// Production verifier: fetch IAP JWKs, check signature, issuer, and audience.
Future<void> verifyIapJwt(String token, String audience) async {
  final keyStore = await _iapKeyStore();
  final jwt = await JsonWebToken.decodeAndVerify(token, keyStore);
  final claims = jwt.claims;

  final issuer = claims.issuer;
  if (issuer == null || issuer.toString() != iapJwtIssuer) {
    throw FormatException('unexpected issuer: $issuer');
  }

  final audiences = claims.audience;
  if (audiences == null || !audiences.contains(audience)) {
    throw FormatException('audience mismatch');
  }

  final expiry = claims.expiry;
  if (expiry != null && !expiry.isAfter(DateTime.now().toUtc())) {
    throw FormatException('token expired');
  }
}

JsonWebKeyStore? _cachedKeyStore;
DateTime? _cachedKeyStoreAt;

Future<JsonWebKeyStore> _iapKeyStore() async {
  final cached = _cachedKeyStore;
  final cachedAt = _cachedKeyStoreAt;
  if (cached != null &&
      cachedAt != null &&
      DateTime.now().difference(cachedAt) < const Duration(hours: 1)) {
    return cached;
  }

  final response = await http.get(Uri.parse(iapPublicKeysJwkUrl));
  if (response.statusCode != 200) {
    throw HttpException(
      'failed to fetch IAP JWKs: HTTP ${response.statusCode}',
      uri: Uri.parse(iapPublicKeysJwkUrl),
    );
  }

  final body = jsonDecode(response.body);
  if (body is! Map<String, dynamic>) {
    throw const FormatException('IAP JWK response was not a JSON object');
  }

  final keySet = JsonWebKeySet.fromJson(body);
  final store = JsonWebKeyStore();
  for (final key in keySet.keys) {
    store.addKey(key);
  }
  _cachedKeyStore = store;
  _cachedKeyStoreAt = DateTime.now();
  return store;
}
