// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_routing_dns`.
const Set<String> _cloudflareEmailRoutingDnsSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_routing_dns`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareEmailRoutingDns extends Data {
  static const String tfType = 'cloudflare_email_routing_dns';

  DataCloudflareEmailRoutingDns({
    required super.localName,
    TfArg<String>? subdomain,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (subdomain != null) 'subdomain': subdomain,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingDnsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `success` attribute.
  TfRef<bool> get success => TfRef.attribute<bool>(this, 'success');
}
