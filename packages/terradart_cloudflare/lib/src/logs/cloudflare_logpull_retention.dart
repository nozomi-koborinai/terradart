// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_logpull_retention`.
const Set<String> _cloudflareLogpullRetentionSensitive = <String>{};

/// Factory wrapper for `cloudflare_logpull_retention`.
///
/// Accepted Permissions
///
/// - `Logs Read` - `Logs Write`
final class CloudflareLogpullRetention extends Resource {
  static const String tfType = 'cloudflare_logpull_retention';

  CloudflareLogpullRetention(
    super.localName, {
    TfArg<bool>? flag,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'flag': ?flag, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpullRetentionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareLogpullRetention>`.
  RefTo<CloudflareLogpullRetention> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `flag` attribute.
  TfRef<bool> get flag => TfRef.attribute<bool>(this, 'flag');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
