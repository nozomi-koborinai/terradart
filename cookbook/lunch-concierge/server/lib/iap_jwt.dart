import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto_keys/crypto_keys.dart';
import 'package:http/http.dart' as http;
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

/// Production verifier: check an `ES256` signature against the IAP JWK Set,
/// then the issuer, audience, and expiry. Throws [FormatException] on any
/// failure.
///
/// Only keys from the JWK Set are trusted; a `jwk` in the token header is
/// ignored. [jwkSetFetcher] replaces the cached fetch of
/// [iapPublicKeysJwkUrl].
Future<void> verifyIapJwt(
  String token,
  String audience, {
  Future<Map<String, dynamic>> Function()? jwkSetFetcher,
}) async {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw const FormatException('JWT must have three dot-separated parts');
  }
  final [headerPart, payloadPart, signaturePart] = parts;

  final header = _decodeJsonObject(headerPart, 'header');
  if (header['alg'] != 'ES256') {
    throw FormatException('unsupported alg: ${header['alg']}');
  }
  final signature = _decodeBase64Url(signaturePart);
  if (signature.length != 64) {
    throw const FormatException('ES256 signature must be 64 bytes');
  }

  final jwkSet = await (jwkSetFetcher ?? _cachedIapJwkSet)();
  final kid = header['kid'];
  final keys = _trustedEs256Keys(
    jwkSet,
    kid: kid is String && kid.isNotEmpty ? kid : null,
  );
  if (keys.isEmpty) {
    throw FormatException('no trusted ES256 key for kid: $kid');
  }

  final signedData = Uint8List.fromList(
    utf8.encode('$headerPart.$payloadPart'),
  );
  final verified = keys.any(
    (key) => key.publicKey!
        .createVerifier(algorithms.signing.ecdsa.sha256)
        .verify(signedData, Signature(signature)),
  );
  if (!verified) {
    throw const FormatException('signature verification failed');
  }

  final claims = _decodeJsonObject(payloadPart, 'payload');
  _checkClaims(claims, audience);
}

void _checkClaims(Map<String, dynamic> claims, String audience) {
  final issuer = claims['iss'];
  if (issuer != iapJwtIssuer) {
    throw FormatException('unexpected issuer: $issuer');
  }

  final aud = claims['aud'];
  final audienceMatches = switch (aud) {
    String() => aud == audience,
    List() => aud.contains(audience),
    _ => false,
  };
  if (!audienceMatches) {
    throw const FormatException('audience mismatch');
  }

  final exp = claims['exp'];
  if (exp is! num) {
    throw const FormatException('missing or non-numeric exp');
  }
  final expiry = DateTime.fromMillisecondsSinceEpoch(
    (exp * 1000).round(),
    isUtc: true,
  );
  if (!expiry.isAfter(DateTime.now().toUtc())) {
    throw const FormatException('token expired');
  }
}

List<KeyPair> _trustedEs256Keys(Map<String, dynamic> jwkSet, {String? kid}) {
  final keys = jwkSet['keys'];
  if (keys is! List) {
    throw const FormatException('JWK Set has no keys list');
  }
  return [
    for (final jwk in keys)
      if (jwk is Map<String, dynamic> &&
          jwk['kty'] == 'EC' &&
          jwk['crv'] == 'P-256' &&
          jwk['x'] is String &&
          jwk['y'] is String &&
          (jwk['alg'] == null || jwk['alg'] == 'ES256') &&
          (jwk['use'] == null || jwk['use'] == 'sig') &&
          (kid == null || jwk['kid'] == kid))
        KeyPair.fromJwk(jwk),
  ];
}

Map<String, dynamic> _decodeJsonObject(String part, String label) {
  final decoded = jsonDecode(utf8.decode(_decodeBase64Url(part)));
  if (decoded is! Map<String, dynamic>) {
    throw FormatException('JWT $label is not a JSON object');
  }
  return decoded;
}

Uint8List _decodeBase64Url(String part) =>
    base64Url.decode(base64Url.normalize(part));

Map<String, dynamic>? _cachedJwkSet;
DateTime? _cachedJwkSetAt;

Future<Map<String, dynamic>> _cachedIapJwkSet() async {
  final cached = _cachedJwkSet;
  final cachedAt = _cachedJwkSetAt;
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
  _cachedJwkSet = body;
  _cachedJwkSetAt = DateTime.now();
  return body;
}
