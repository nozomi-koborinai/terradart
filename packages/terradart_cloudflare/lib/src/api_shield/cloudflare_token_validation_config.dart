// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_token_validation_config`.
const Set<String> _cloudflareTokenValidationConfigSensitive = <String>{};

/// Token Validation Config Token enum for `token_type`.
extension type const TokenValidationConfigTokenType._(TfArg<String> _)
    implements TfArg<String> {
  TokenValidationConfigTokenType.variable(String name)
    : this._(TfArg.variable(name));
  TokenValidationConfigTokenType.expression(String template)
    : this._(TfArg.expression(template));
  const TokenValidationConfigTokenType.arg(TfArg<String> arg) : this._(arg);

  static const jwt = TokenValidationConfigTokenType._(TfArgLiteral('JWT'));

  static const List<TokenValidationConfigTokenType> values = [jwt];
}

/// Typed helper for the `credentials` block of
/// `cloudflare_token_validation_config` (derived from provider schema).
@immutable
final class TokenValidationConfigCredentials {
  const TokenValidationConfigCredentials({required this.keys});

  final List<TokenValidationConfigKeys> keys;

  Map<String, Object?> encode() => {
    'keys': [for (final e in keys) e.encode()],
  };
}

/// Typed helper for the `credentials.keys` block of
/// `cloudflare_token_validation_config` (derived from provider schema).
@immutable
final class TokenValidationConfigKeys {
  const TokenValidationConfigKeys({
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

  final TokenValidationConfigAlg alg;

  final TokenValidationConfigCrv? crv;

  final TfArg<String>? e;

  final TfArg<String>? k;

  final TfArg<String> kid;

  final TokenValidationConfigKty kty;

  final TfArg<String>? n;

  final TfArg<String>? x;

  final TfArg<String>? y;

  Map<String, Object?> encode() => {
    'alg': alg.toTfJson(),
    'crv': ?crv?.toTfJson(),
    'e': ?e?.toTfJson(),
    'k': ?k?.toTfJson(),
    'kid': kid.toTfJson(),
    'kty': kty.toTfJson(),
    'n': ?n?.toTfJson(),
    'x': ?x?.toTfJson(),
    'y': ?y?.toTfJson(),
  };
}

/// `alg` — derived from the provider schema description.
extension type const TokenValidationConfigAlg._(TfArg<String> _)
    implements TfArg<String> {
  TokenValidationConfigAlg.variable(String name) : this._(TfArg.variable(name));
  TokenValidationConfigAlg.expression(String template)
    : this._(TfArg.expression(template));
  const TokenValidationConfigAlg.arg(TfArg<String> arg) : this._(arg);

  static const rs256 = TokenValidationConfigAlg._(TfArgLiteral('RS256'));
  static const rs384 = TokenValidationConfigAlg._(TfArgLiteral('RS384'));
  static const rs512 = TokenValidationConfigAlg._(TfArgLiteral('RS512'));
  static const ps256 = TokenValidationConfigAlg._(TfArgLiteral('PS256'));
  static const ps384 = TokenValidationConfigAlg._(TfArgLiteral('PS384'));
  static const ps512 = TokenValidationConfigAlg._(TfArgLiteral('PS512'));
  static const es256 = TokenValidationConfigAlg._(TfArgLiteral('ES256'));
  static const es384 = TokenValidationConfigAlg._(TfArgLiteral('ES384'));
  static const hs256 = TokenValidationConfigAlg._(TfArgLiteral('HS256'));
  static const hs384 = TokenValidationConfigAlg._(TfArgLiteral('HS384'));
  static const hs512 = TokenValidationConfigAlg._(TfArgLiteral('HS512'));

  static const List<TokenValidationConfigAlg> values = [
    rs256,
    rs384,
    rs512,
    ps256,
    ps384,
    ps512,
    es256,
    es384,
    hs256,
    hs384,
    hs512,
  ];
}

/// `crv` — derived from the provider schema description.
extension type const TokenValidationConfigCrv._(TfArg<String> _)
    implements TfArg<String> {
  TokenValidationConfigCrv.variable(String name) : this._(TfArg.variable(name));
  TokenValidationConfigCrv.expression(String template)
    : this._(TfArg.expression(template));
  const TokenValidationConfigCrv.arg(TfArg<String> arg) : this._(arg);

  static const p256 = TokenValidationConfigCrv._(TfArgLiteral('P-256'));
  static const p384 = TokenValidationConfigCrv._(TfArgLiteral('P-384'));

  static const List<TokenValidationConfigCrv> values = [p256, p384];
}

/// `kty` — derived from the provider schema description.
extension type const TokenValidationConfigKty._(TfArg<String> _)
    implements TfArg<String> {
  TokenValidationConfigKty.variable(String name) : this._(TfArg.variable(name));
  TokenValidationConfigKty.expression(String template)
    : this._(TfArg.expression(template));
  const TokenValidationConfigKty.arg(TfArg<String> arg) : this._(arg);

  static const rsa = TokenValidationConfigKty._(TfArgLiteral('RSA'));
  static const ec = TokenValidationConfigKty._(TfArgLiteral('EC'));
  static const oct = TokenValidationConfigKty._(TfArgLiteral('oct'));

  static const List<TokenValidationConfigKty> values = [rsa, ec, oct];
}

/// Factory wrapper for `cloudflare_token_validation_config`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareTokenValidationConfig extends Resource {
  static const String tfType = 'cloudflare_token_validation_config';

  CloudflareTokenValidationConfig(
    super.localName, {
    required TfArg<String> description,
    required TfArg<String> title,
    required TfArg<List<String>> tokenSources,
    required TokenValidationConfigTokenType tokenType,
    required RefTo<CloudflareZone> zoneId,
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
           'zone_id': zoneId.encodeAs('id'),
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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `token_sources` attribute.
  TfRef<List<String>> get tokenSources =>
      TfRef.attribute<List<String>>(this, 'token_sources');

  /// Reference to `token_type` attribute.
  TfRef<String> get tokenType => TfRef.attribute<String>(this, 'token_type');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
