// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_healthcheck`.
const Set<String> _cloudflareHealthcheckSensitive = <String>{};

/// Typed helper for the `http_config` block of
/// `cloudflare_healthcheck` (derived from provider schema).
@immutable
final class HealthcheckHttpConfig {
  const HealthcheckHttpConfig({
    this.allowInsecure,
    this.expectedBody,
    this.expectedCodes,
    this.followRedirects,
    this.header,
    this.method,
    this.path,
    this.port,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? expectedBody;

  final TfArg<List<Object?>>? expectedCodes;

  final TfArg<bool>? followRedirects;

  final TfArg<Map<String, dynamic>>? header;

  final TfArg<String>? method;

  final TfArg<String>? path;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    if (allowInsecure != null) 'allow_insecure': allowInsecure!.toTfJson(),
    if (expectedBody != null) 'expected_body': expectedBody!.toTfJson(),
    if (expectedCodes != null) 'expected_codes': expectedCodes!.toTfJson(),
    if (followRedirects != null)
      'follow_redirects': followRedirects!.toTfJson(),
    if (header != null) 'header': header!.toTfJson(),
    if (method != null) 'method': method!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Typed helper for the `tcp_config` block of
/// `cloudflare_healthcheck` (derived from provider schema).
@immutable
final class HealthcheckTcpConfig {
  const HealthcheckTcpConfig({this.method, this.port});

  final TfArg<String>? method;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_healthcheck`.
///
/// Accepted Permissions
///
/// - `Health Checks Read` - `Health Checks Write`
final class CloudflareHealthcheck extends Resource {
  static const String tfType = 'cloudflare_healthcheck';

  CloudflareHealthcheck({
    required super.localName,
    required TfArg<String> address,
    TfArg<List<String>>? checkRegions,
    TfArg<num>? consecutiveFails,
    TfArg<num>? consecutiveSuccesses,
    TfArg<String>? description,
    TfArg<num>? interval,
    required TfArg<String> name,
    TfArg<num>? retries,
    TfArg<bool>? suspended,
    TfArg<num>? timeout,
    TfArg<String>? type,
    required TfArg<String> zoneId,
    HealthcheckHttpConfig? httpConfig,
    HealthcheckTcpConfig? tcpConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address': address,
           if (checkRegions != null) 'check_regions': checkRegions,
           if (consecutiveFails != null) 'consecutive_fails': consecutiveFails,
           if (consecutiveSuccesses != null)
             'consecutive_successes': consecutiveSuccesses,
           if (description != null) 'description': description,
           if (interval != null) 'interval': interval,
           'name': name,
           if (retries != null) 'retries': retries,
           if (suspended != null) 'suspended': suspended,
           if (timeout != null) 'timeout': timeout,
           if (type != null) 'type': type,
           'zone_id': zoneId,
           if (httpConfig != null)
             'http_config': TfArg.literal(httpConfig.encode()),
           if (tcpConfig != null)
             'tcp_config': TfArg.literal(tcpConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHealthcheckSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
