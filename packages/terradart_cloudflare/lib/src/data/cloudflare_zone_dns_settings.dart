// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_dns_settings`.
const Set<String> _cloudflareZoneDnsSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_dns_settings`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write` - `Zone DNS Settings Read` - `Zone DNS Settings
/// Write`
final class DataCloudflareZoneDnsSettings extends Data {
  static const String tfType = 'cloudflare_zone_dns_settings';

  DataCloudflareZoneDnsSettings({
    required super.localName,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneDnsSettingsSensitive;

  /// Reference to `flatten_all_cnames` attribute.
  TfRef<bool> get flattenAllCnames =>
      TfRef.attribute<bool>(this, 'flatten_all_cnames');

  /// Reference to `foundation_dns` attribute.
  TfRef<bool> get foundationDns =>
      TfRef.attribute<bool>(this, 'foundation_dns');

  /// Reference to `multi_provider` attribute.
  TfRef<bool> get multiProvider =>
      TfRef.attribute<bool>(this, 'multi_provider');

  /// Reference to `ns_ttl` attribute.
  TfRef<num> get nsTtl => TfRef.attribute<num>(this, 'ns_ttl');

  /// Reference to `secondary_overrides` attribute.
  TfRef<bool> get secondaryOverrides =>
      TfRef.attribute<bool>(this, 'secondary_overrides');

  /// Reference to `zone_mode` attribute.
  TfRef<String> get zoneMode => TfRef.attribute<String>(this, 'zone_mode');
}
