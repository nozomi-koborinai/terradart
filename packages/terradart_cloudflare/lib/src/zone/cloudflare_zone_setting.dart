// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_setting`.
const Set<String> _cloudflareZoneSettingSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_setting`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class CloudflareZoneSetting extends Resource {
  static const String tfType = 'cloudflare_zone_setting';

  CloudflareZoneSetting({
    required super.localName,
    TfArg<bool>? enabled,
    required TfArg<String> settingId,
    required TfArg<Object?> value,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           'setting_id': settingId,
           'value': value,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneSettingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `time_remaining` attribute.
  TfRef<num> get timeRemaining => TfRef.attribute<num>(this, 'time_remaining');
}
