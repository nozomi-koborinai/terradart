// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_content_scanning`.
const Set<String> _cloudflareContentScanningSensitive = <String>{};

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
    required TfArg<String> value,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'value': value, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareContentScanningSensitive;

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');
}
