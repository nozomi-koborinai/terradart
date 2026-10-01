// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_nel_setting`.
const Set<String> _cloudflareNelSettingSensitive = <String>{};

/// Typed helper for the `value` block of
/// `cloudflare_nel_setting` (derived from provider schema).
@immutable
final class NelSettingValue {
  const NelSettingValue({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Factory wrapper for `cloudflare_nel_setting`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
///
/// Network Error Logging for a zone: when `value.enabled` is true,
/// browsers report network errors for the zone to Cloudflare's NEL
/// endpoint.
final class CloudflareNelSetting extends Resource {
  static const String tfType = 'cloudflare_nel_setting';

  CloudflareNelSetting({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    required NelSettingValue value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'value': TfArg.literal(value.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareNelSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareNelSetting>`.
  RefTo<CloudflareNelSetting> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
