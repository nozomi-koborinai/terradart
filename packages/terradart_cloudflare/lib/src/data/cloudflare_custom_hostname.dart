// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_hostname`.
const Set<String> _cloudflareCustomHostnameSensitive = <String>{
  'ssl.custom_key',
};

/// Typed helper for the `filter` block of
/// `cloudflare_custom_hostname` (derived from provider schema).
@immutable
final class DataCustomHostnameFilter {
  const DataCustomHostnameFilter({
    this.certificateAuthority,
    this.customOriginServer,
    this.direction,
    this.hostnameStatus,
    this.id,
    this.order,
    this.ssl,
    this.sslStatus,
    this.wildcard,
    this.hostname,
  });

  final TfArg<String>? certificateAuthority;

  final TfArg<String>? customOriginServer;

  final TfArg<String>? direction;

  final TfArg<String>? hostnameStatus;

  final TfArg<String>? id;

  final TfArg<String>? order;

  final TfArg<num>? ssl;

  final TfArg<String>? sslStatus;

  final TfArg<bool>? wildcard;

  final DataCustomHostnameFilterHostname? hostname;

  Map<String, Object?> encode() => {
    if (certificateAuthority != null)
      'certificate_authority': certificateAuthority!.toTfJson(),
    if (customOriginServer != null)
      'custom_origin_server': customOriginServer!.toTfJson(),
    if (direction != null) 'direction': direction!.toTfJson(),
    if (hostnameStatus != null) 'hostname_status': hostnameStatus!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (ssl != null) 'ssl': ssl!.toTfJson(),
    if (sslStatus != null) 'ssl_status': sslStatus!.toTfJson(),
    if (wildcard != null) 'wildcard': wildcard!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.encode(),
  };
}

/// Typed helper for the `filter.hostname` block of
/// `cloudflare_custom_hostname` (derived from provider schema).
@immutable
final class DataCustomHostnameFilterHostname {
  const DataCustomHostnameFilterHostname({
    this.contain,
    this.exact,
    this.startsWith,
  });

  final TfArg<String>? contain;

  final TfArg<String>? exact;

  final TfArg<String>? startsWith;

  Map<String, Object?> encode() => {
    if (contain != null) 'contain': contain!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (startsWith != null) 'starts_with': startsWith!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_custom_hostname`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomHostname extends Data {
  static const String tfType = 'cloudflare_custom_hostname';

  DataCloudflareCustomHostname({
    required super.localName,
    TfArg<String>? customHostnameId,
    TfArg<String>? zoneId,
    DataCustomHostnameFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customHostnameId != null) 'custom_hostname_id': customHostnameId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomHostnameSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `custom_metadata` attribute.
  TfRef<Map<String, String>> get customMetadata =>
      TfRef.attribute<Map<String, String>>(this, 'custom_metadata');

  /// Reference to `custom_origin_server` attribute.
  TfRef<String> get customOriginServer =>
      TfRef.attribute<String>(this, 'custom_origin_server');

  /// Reference to `custom_origin_sni` attribute.
  TfRef<String> get customOriginSni =>
      TfRef.attribute<String>(this, 'custom_origin_sni');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `verification_errors` attribute.
  TfRef<List<String>> get verificationErrors =>
      TfRef.attribute<List<String>>(this, 'verification_errors');
}
