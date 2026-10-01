// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_email_routing_dns`.
const Set<String> _cloudflareEmailRoutingDnsSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_routing_dns`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class CloudflareEmailRoutingDns extends Resource {
  static const String tfType = 'cloudflare_email_routing_dns';

  CloudflareEmailRoutingDns(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? subdomain,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'subdomain': ?subdomain,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingDnsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailRoutingDns>`.
  RefTo<CloudflareEmailRoutingDns> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `skip_wizard` attribute.
  TfRef<bool> get skipWizard => TfRef.attribute<bool>(this, 'skip_wizard');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `support_subaddress` attribute.
  TfRef<bool> get supportSubaddress =>
      TfRef.attribute<bool>(this, 'support_subaddress');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
