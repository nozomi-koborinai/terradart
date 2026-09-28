// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId});

  @override
  Set<String> get sensitiveFields => _cloudflareNelSettingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
