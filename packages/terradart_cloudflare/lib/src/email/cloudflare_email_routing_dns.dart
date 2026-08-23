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
final class CloudflareEmailRoutingDns extends Resource {
  static const String tfType = 'cloudflare_email_routing_dns';

  CloudflareEmailRoutingDns({
    required super.localName,
    TfArg<String>? name,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {if (name != null) 'name': name, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingDnsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `success` attribute.
  TfRef<bool> get success => TfRef.attribute<bool>(this, 'success');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');
}
