// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_hold`.
const Set<String> _cloudflareZoneHoldSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_hold`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Revoke` -
/// `Access: Apps and Policies Write` - `Access: Mutual TLS Certificates Write`
/// - `Access: Organizations, Identity Providers, and Groups Write` - `Analytics
/// Read` - `Apps Write` - `Cache Purge` - `DNS Read` - `DNS Write` - `Firewall
/// Services Read` - `Firewall Services Write` - `Load Balancers Read` - `Load
/// Balancers Write` - `Logs Read` - `Logs Write` - `Page Rules Read` - `Page
/// Rules Write` - `SSL and Certificates Read` - `SSL and Certificates Write` -
/// `Stream Read` - `Stream Write` - `Trust and Safety Read` - `Trust and Safety
/// Write` - `Workers Routes Read` - `Workers Routes Write` - `Workers Scripts
/// Read` - `Workers Scripts Write` - `Zaraz Admin` - `Zaraz Edit` - `Zaraz
/// Read` - `Zero Trust: PII Read` - `Zone Read` - `Zone Settings Read` - `Zone
/// Settings Write` - `Zone Write`
final class CloudflareZoneHold extends Resource {
  static const String tfType = 'cloudflare_zone_hold';

  CloudflareZoneHold(
    super.localName, {
    TfArg<String>? holdAfter,
    TfArg<bool>? includeSubdomains,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hold_after': ?holdAfter,
           'include_subdomains': ?includeSubdomains,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneHoldSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZoneHold>`.
  RefTo<CloudflareZoneHold> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hold` attribute.
  TfRef<bool> get hold => TfRef.attribute<bool>(this, 'hold');

  /// Reference to `hold_after` attribute.
  TfRef<String> get holdAfter => TfRef.attribute<String>(this, 'hold_after');

  /// Reference to `include_subdomains` attribute.
  TfRef<bool> get includeSubdomains =>
      TfRef.attribute<bool>(this, 'include_subdomains');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
