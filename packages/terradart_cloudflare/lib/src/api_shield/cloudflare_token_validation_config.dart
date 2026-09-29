// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_token_validation_config`.
const Set<String> _cloudflareTokenValidationConfigSensitive = <String>{};

/// Token Validation Config Token enum for `token_type`.
enum TokenValidationConfigTokenType implements TerraformEnum {
  jwt('JWT');

  const TokenValidationConfigTokenType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `credentials` block of
/// `cloudflare_token_validation_config` (derived from provider schema).
@immutable
final class TokenValidationConfigCredentials {
  const TokenValidationConfigCredentials({required this.keys});

  final List<TokenValidationConfigCredentialsKeys> keys;

  Map<String, Object?> encode() => {
    'keys': [for (final e in keys) e.encode()],
  };
}

/// Typed helper for the `credentials.keys` block of
/// `cloudflare_token_validation_config` (derived from provider schema).
@immutable
final class TokenValidationConfigCredentialsKeys {
  const TokenValidationConfigCredentialsKeys({
    required this.alg,
    this.crv,
    this.e,
    this.k,
    required this.kid,
    required this.kty,
    this.n,
    this.x,
    this.y,
  });

  final TfArg<TokenValidationConfigCredentialsKeysAlg> alg;

  final TfArg<TokenValidationConfigCredentialsKeysCrv>? crv;

  final TfArg<String>? e;

  final TfArg<String>? k;

  final TfArg<String> kid;

  final TfArg<TokenValidationConfigCredentialsKeysKty> kty;

  final TfArg<String>? n;

  final TfArg<String>? x;

  final TfArg<String>? y;

  Map<String, Object?> encode() => {
    'alg': alg.toTfJson(),
    if (crv != null) 'crv': crv!.toTfJson(),
    if (e != null) 'e': e!.toTfJson(),
    if (k != null) 'k': k!.toTfJson(),
    'kid': kid.toTfJson(),
    'kty': kty.toTfJson(),
    if (n != null) 'n': n!.toTfJson(),
    if (x != null) 'x': x!.toTfJson(),
    if (y != null) 'y': y!.toTfJson(),
  };
}

/// `alg` — derived from the provider schema description.
enum TokenValidationConfigCredentialsKeysAlg implements TerraformEnum {
  rs256('RS256'),
  rs384('RS384'),
  rs512('RS512'),
  ps256('PS256'),
  ps384('PS384'),
  ps512('PS512'),
  es256('ES256'),
  es384('ES384'),
  hs256('HS256'),
  hs384('HS384'),
  hs512('HS512');

  const TokenValidationConfigCredentialsKeysAlg(this.terraformValue);
  @override
  final String terraformValue;
}

/// `crv` — derived from the provider schema description.
enum TokenValidationConfigCredentialsKeysCrv implements TerraformEnum {
  p256('P-256'),
  p384('P-384');

  const TokenValidationConfigCredentialsKeysCrv(this.terraformValue);
  @override
  final String terraformValue;
}

/// `kty` — derived from the provider schema description.
enum TokenValidationConfigCredentialsKeysKty implements TerraformEnum {
  rsa('RSA'),
  ec('EC'),
  oct('oct');

  const TokenValidationConfigCredentialsKeysKty(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_token_validation_config`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareTokenValidationConfig extends Resource {
  static const String tfType = 'cloudflare_token_validation_config';

  CloudflareTokenValidationConfig({
    required super.localName,
    required TfArg<String> description,
    required TfArg<String> title,
    required TfArg<List<String>> tokenSources,
    required TfArg<TokenValidationConfigTokenType> tokenType,
    required TfArg<String> zoneId,
    required TokenValidationConfigCredentials credentials,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           'title': title,
           'token_sources': tokenSources,
           'token_type': tokenType,
           'zone_id': zoneId,
           'credentials': TfArg.literal(credentials.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTokenValidationConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareTokenValidationConfig>`.
  RefTo<CloudflareTokenValidationConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');
}
