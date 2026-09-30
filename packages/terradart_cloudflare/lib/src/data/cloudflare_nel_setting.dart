// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../nel/cloudflare_nel_setting.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_nel_setting`.
const Set<String> _cloudflareNelSettingSensitive = <String>{};

/// Factory wrapper for `cloudflare_nel_setting`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read`
final class DataCloudflareNelSetting extends Data {
  static const String tfType = 'cloudflare_nel_setting';

  DataCloudflareNelSetting({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId.encodeAs('id')});

  @override
  Set<String> get sensitiveFields => _cloudflareNelSettingSensitive;

  /// A reference to the `cloudflare_nel_setting` this data source reads, for
  /// arguments typed `RefTo<CloudflareNelSetting>`.
  RefTo<CloudflareNelSetting> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
