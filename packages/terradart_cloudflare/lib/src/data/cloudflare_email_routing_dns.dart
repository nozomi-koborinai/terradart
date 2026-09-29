// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_routing_dns.dart';

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
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (subdomain != null) 'subdomain': subdomain,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingDnsSensitive;

  /// A reference to the `cloudflare_email_routing_dns` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailRoutingDns>`.
  RefTo<CloudflareEmailRoutingDns> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
