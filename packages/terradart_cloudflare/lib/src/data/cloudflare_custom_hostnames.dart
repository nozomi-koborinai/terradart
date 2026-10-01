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

  DataCloudflareCustomHostnames(
    super.localName, {
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

  /// Reference to `certificate_authority` attribute.
  TfRef<String> get certificateAuthority =>
      TfRef.attribute<String>(this, 'certificate_authority');

  /// Reference to `custom_origin_server` attribute.
  TfRef<String> get customOriginServer =>
      TfRef.attribute<String>(this, 'custom_origin_server');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `hostname_status` attribute.
  TfRef<String> get hostnameStatus =>
      TfRef.attribute<String>(this, 'hostname_status');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `ssl` attribute.
  TfRef<num> get ssl => TfRef.attribute<num>(this, 'ssl');

  /// Reference to `ssl_status` attribute.
  TfRef<String> get sslStatus => TfRef.attribute<String>(this, 'ssl_status');

  /// Reference to `wildcard` attribute.
  TfRef<bool> get wildcard => TfRef.attribute<bool>(this, 'wildcard');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
