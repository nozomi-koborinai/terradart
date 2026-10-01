// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_regional_hostname`.
const Set<String> _cloudflareRegionalHostnameSensitive = <String>{};

/// Factory wrapper for `cloudflare_regional_hostname`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write`
final class CloudflareRegionalHostname extends Resource {
  static const String tfType = 'cloudflare_regional_hostname';

  CloudflareRegionalHostname(
    super.localName, {
    required TfArg<String> hostname,
    required TfArg<String> regionKey,
    TfArg<String>? routing,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hostname': hostname,
           'region_key': regionKey,
           'routing': ?routing,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRegionalHostnameSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareRegionalHostname>`.
  RefTo<CloudflareRegionalHostname> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `region_key` attribute.
  TfRef<String> get regionKey => TfRef.attribute<String>(this, 'region_key');

  /// Reference to `routing` attribute.
  TfRef<String> get routing => TfRef.attribute<String>(this, 'routing');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
