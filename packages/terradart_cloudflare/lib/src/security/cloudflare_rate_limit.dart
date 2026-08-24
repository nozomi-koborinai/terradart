// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_rate_limit`.
const Set<String> _cloudflareRateLimitSensitive = <String>{};

/// Typed helper for the `action` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitAction {
  const RateLimitAction({this.mode, this.timeout, this.response});

  final TfArg<String>? mode;

  final TfArg<num>? timeout;

  final RateLimitActionResponse? response;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
    if (response != null) 'response': response!.encode(),
  };
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

  final TfArg<String>? op;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (op != null) 'op': op!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `match.request` block of
/// `cloudflare_rate_limit` (derived from provider schema).
@immutable
final class RateLimitMatchRequest {
  const RateLimitMatchRequest({this.methods, this.schemes, this.url});

  final TfArg<List<Object?>>? methods;

  final TfArg<List<Object?>>? schemes;

  final TfArg<String>? url;

  Map<String, Object?> encode() => {
    if (methods != null) 'methods': methods!.toTfJson(),
    if (schemes != null) 'schemes': schemes!.toTfJson(),
    if (url != null) 'url': url!.toTfJson(),
  };
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
    required TfArg<num> threshold,
    required TfArg<String> zoneId,
    required RateLimitAction action,
    required RateLimitMatch match,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'period': period,
           'threshold': threshold,
           'zone_id': zoneId,
           'action': TfArg.literal(action.encode()),
           'match': TfArg.literal(match.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRateLimitSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');
}
