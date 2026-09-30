// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_content_scanning`.
const Set<String> _cloudflareContentScanningSensitive = <String>{};

/// Content Scanning enum for `value`.
enum ContentScanningValue implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const ContentScanningValue(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_content_scanning`.
///
/// Accepted Permissions
///
/// - `Account WAF Read` - `Account WAF Write` - `Zone WAF Read` - `Zone WAF
/// Write`
final class CloudflareContentScanning extends Resource {
  static const String tfType = 'cloudflare_content_scanning';

  CloudflareContentScanning({
    required super.localName,
    required TfArg<ContentScanningValue> value,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'value': value, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareContentScanningSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareContentScanning>`.
  RefTo<CloudflareContentScanning> get ref => RefTo.of(this);

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `value` attribute.
  TfRef<String> get valueRef => TfRef.attribute<String>(this, 'value');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
