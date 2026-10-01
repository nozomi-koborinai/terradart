// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_ct_alerting`.
const Set<String> _cloudflareCtAlertingSensitive = <String>{};

/// Factory wrapper for `cloudflare_ct_alerting`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
///
/// Certificate Transparency alerting for a zone: Cloudflare emails the
/// listed addresses (up to 100) when a certificate for one of the zone's
/// hostnames appears in a public CT log.
final class CloudflareCtAlerting extends Resource {
  static const String tfType = 'cloudflare_ct_alerting';

  CloudflareCtAlerting(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    required TfArg<bool> enabled,
    TfArg<List<String>>? emails,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'enabled': enabled,
           'emails': ?emails,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCtAlertingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCtAlerting>`.
  RefTo<CloudflareCtAlerting> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `emails` attribute.
  TfRef<List<String>> get emails =>
      TfRef.attribute<List<String>>(this, 'emails');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
