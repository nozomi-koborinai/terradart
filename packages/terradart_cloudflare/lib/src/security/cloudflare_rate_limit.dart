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

  final TfArg<RateLimitActionMode>? mode;

  final TfArg<num>? timeout;

  final RateLimitActionResponse? response;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
    if (response != null) 'response': response!.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum RateLimitActionMode implements TerraformEnum {
  simulate('simulate'),
  ban('ban'),
  challenge('challenge'),
  jsChallenge('js_challenge'),
  managedChallenge('managed_challenge');

  const RateLimitActionMode(this.terraformValue);
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
    if (body != null) 'body': body!.toTfJson(),
    if (contentType != null) 'content_type': contentType!.toTfJson(),
  };
}

/// Typed helper for the `match` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitMatch {
  const RateLimitMatch({this.headers, this.request, this.response});

  final List<RateLimitMatchHeaders>? headers;

  final RateLimitMatchRequest? request;

  final RateLimitMatchResponse? response;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    if (request != null) 'request': request!.encode(),
    if (response != null) 'response': response!.encode(),
  };
}

/// Typed helper for the `match.headers` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitMatchHeaders {
  const RateLimitMatchHeaders({this.name, this.op, this.value});

  final TfArg<String>? name;

  final TfArg<RateLimitMatchHeadersOp>? op;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (op != null) 'op': op!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `op` — derived from the provider schema description.
enum RateLimitMatchHeadersOp implements TerraformEnum {
  eq('eq'),
  ne('ne');

  const RateLimitMatchHeadersOp(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `match.request` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitMatchRequest {
  const RateLimitMatchRequest({this.methods, this.schemes, this.url});

  final List<TfArg<RateLimitMatchRequestMethods>>? methods;

  final TfArg<List<Object?>>? schemes;

  final TfArg<String>? url;

  Map<String, Object?> encode() => {
    if (methods != null) 'methods': [for (final e in methods!) e.toTfJson()],
    if (schemes != null) 'schemes': schemes!.toTfJson(),
    if (url != null) 'url': url!.toTfJson(),
  };
}

/// `methods` — derived from the provider schema description.
enum RateLimitMatchRequestMethods implements TerraformEnum {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH'),
  head('HEAD'),
  all('_ALL_');

  const RateLimitMatchRequestMethods(this.terraformValue);
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
    if (originTraffic != null) 'origin_traffic': originTraffic!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_rate_limit`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class CloudflareRateLimit extends Resource {
  static const String tfType = 'cloudflare_rate_limit';

  CloudflareRateLimit({
    required super.localName,
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
           if (rateLimitId != null) 'rate_limit_id': rateLimitId,
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
}
