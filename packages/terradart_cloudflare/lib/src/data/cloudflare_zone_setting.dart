// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone_setting.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_setting`.
const Set<String> _cloudflareZoneSettingSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_setting`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareZoneSetting extends Data {
  static const String tfType = 'cloudflare_zone_setting';

  DataCloudflareZoneSetting({
    required super.localName,
    required TfArg<String> settingId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'setting_id': settingId, 'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneSettingSensitive;

  /// A reference to the `cloudflare_zone_setting` this data source reads, for
  /// arguments typed `RefTo<CloudflareZoneSetting>`.
  RefTo<CloudflareZoneSetting> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `time_remaining` attribute.
  TfRef<num> get timeRemaining => TfRef.attribute<num>(this, 'time_remaining');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
