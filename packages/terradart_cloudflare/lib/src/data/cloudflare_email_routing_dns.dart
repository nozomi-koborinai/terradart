// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_routing_dns.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'subdomain': ?subdomain, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingDnsSensitive;

  /// A reference to the `cloudflare_email_routing_dns` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailRoutingDns>`.
  RefTo<CloudflareEmailRoutingDns> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomainRef => TfRef.attribute<String>(this, 'subdomain');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
