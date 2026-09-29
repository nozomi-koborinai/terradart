// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_hostnames`.
const Set<String> _cloudflareCustomHostnamesSensitive = <String>{
  'result.ssl.custom_key',
};

/// Typed helper for the `hostname` block of
/// `cloudflare_custom_hostnames` (derived from provider schema).
@immutable
final class DataCustomHostnamesHostname {
  const DataCustomHostnamesHostname({
    this.contain,
    this.exact,
    this.startsWith,
  });

  final TfArg<String>? contain;

  final TfArg<String>? exact;

  final TfArg<String>? startsWith;

  Map<String, Object?> encode() => {
    'contain': ?contain?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'starts_with': ?startsWith?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_custom_hostnames`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomHostnames extends Data {
  static const String tfType = 'cloudflare_custom_hostnames';

  DataCloudflareCustomHostnames({
    required super.localName,
    TfArg<String>? certificateAuthority,
    TfArg<String>? customOriginServer,
    TfArg<String>? direction,
    TfArg<String>? hostnameStatus,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<num>? ssl,
    TfArg<String>? sslStatus,
    TfArg<bool>? wildcard,
    RefTo<CloudflareZone>? zoneId,
    DataCustomHostnamesHostname? hostname,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_authority': ?certificateAuthority,
           'custom_origin_server': ?customOriginServer,
           'direction': ?direction,
           'hostname_status': ?hostnameStatus,
           'max_items': ?maxItems,
           'order': ?order,
           'ssl': ?ssl,
           'ssl_status': ?sslStatus,
           'wildcard': ?wildcard,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (hostname != null) 'hostname': TfArg.literal(hostname.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomHostnamesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
