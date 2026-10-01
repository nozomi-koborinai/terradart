// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_rate_limit`.
const Set<String> _cloudflareRateLimitSensitive = <String>{};

/// Typed helper for the `action` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitAction {
  const RateLimitAction({this.mode, this.timeout, this.response});

  final TfArg<RateLimitMode>? mode;

  final TfArg<num>? timeout;

  final RateLimitActionResponse? response;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'response': ?response?.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum RateLimitMode implements TerraformEnum {
  simulate('simulate'),
  ban('ban'),
  challenge('challenge'),
  jsChallenge('js_challenge'),
  managedChallenge('managed_challenge');

  const RateLimitMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `action.response` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitActionResponse {
  const RateLimitActionResponse({this.body, this.contentType});

  final TfArg<String>? body;

  final TfArg<String>? contentType;

  Map<String, Object?> encode() => {
    'body': ?body?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
  };
}

/// Typed helper for the `match` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitMatch {
  const RateLimitMatch({this.headers, this.request, this.response});

  final List<RateLimitHeaders>? headers;

  final RateLimitRequest? request;

  final RateLimitMatchResponse? response;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    'request': ?request?.encode(),
    'response': ?response?.encode(),
  };
}

/// Typed helper for the `match.headers` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitHeaders {
  const RateLimitHeaders({this.name, this.op, this.value});

  final TfArg<String>? name;

  final TfArg<RateLimitOp>? op;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'op': ?op?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `op` — derived from the provider schema description.
enum RateLimitOp implements TerraformEnum {
  eq('eq'),
  ne('ne');

  const RateLimitOp(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `match.request` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitRequest {
  const RateLimitRequest({this.methods, this.schemes, this.url});

  final List<TfArg<RateLimitMethods>>? methods;

  final TfArg<List<String>>? schemes;

  final TfArg<String>? url;

  Map<String, Object?> encode() => {
    if (methods != null) 'methods': [for (final e in methods!) e.toTfJson()],
    'schemes': ?schemes?.toTfJson(),
    'url': ?url?.toTfJson(),
  };
}

/// `methods` — derived from the provider schema description.
enum RateLimitMethods implements TerraformEnum {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH'),
  head('HEAD'),
  all('_ALL_');

  const RateLimitMethods(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `match.response` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitMatchResponse {
  const RateLimitMatchResponse({this.originTraffic});

  final TfArg<bool>? originTraffic;

  Map<String, Object?> encode() => {
    'origin_traffic': ?originTraffic?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_rate_limit`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class CloudflareRateLimit extends Resource {
  static const String tfType = 'cloudflare_rate_limit';

  CloudflareRateLimit(
    super.localName, {
    required TfArg<num> period,
    TfArg<String>? rateLimitId,
    required TfArg<num> threshold,
    required RefTo<CloudflareZone> zoneId,
    required RateLimitAction action,
    required RateLimitMatch match,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'period': period,
           'rate_limit_id': ?rateLimitId,
           'threshold': threshold,
           'zone_id': zoneId.encodeAs('id'),
           'action': TfArg.literal(action.encode()),
           'match': TfArg.literal(match.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRateLimitSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareRateLimit>`.
  RefTo<CloudflareRateLimit> get ref => RefTo.of(this);

  /// Reference to `period` attribute.
  TfRef<num> get period => TfRef.attribute<num>(this, 'period');

  /// Reference to `rate_limit_id` attribute.
  TfRef<String> get rateLimitId =>
      TfRef.attribute<String>(this, 'rate_limit_id');

  /// Reference to `threshold` attribute.
  TfRef<num> get threshold => TfRef.attribute<num>(this, 'threshold');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
