// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
final class CloudflareNelSetting extends Resource {
  static const String tfType = 'cloudflare_nel_setting';

  CloudflareNelSetting({
    required super.localName,
    required TfArg<String> zoneId,
    required NelSettingValue value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': zoneId, 'value': TfArg.literal(value.encode())},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareNelSettingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
