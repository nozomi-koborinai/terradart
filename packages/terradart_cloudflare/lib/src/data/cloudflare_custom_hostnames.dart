// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (contain != null) 'contain': contain!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (startsWith != null) 'starts_with': startsWith!.toTfJson(),
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
    TfArg<String>? zoneId,
    DataCustomHostnamesHostname? hostname,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (certificateAuthority != null)
             'certificate_authority': certificateAuthority,
           if (customOriginServer != null)
             'custom_origin_server': customOriginServer,
           if (direction != null) 'direction': direction,
           if (hostnameStatus != null) 'hostname_status': hostnameStatus,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (ssl != null) 'ssl': ssl,
           if (sslStatus != null) 'ssl_status': sslStatus,
           if (wildcard != null) 'wildcard': wildcard,
           if (zoneId != null) 'zone_id': zoneId,
           if (hostname != null) 'hostname': TfArg.literal(hostname.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomHostnamesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
