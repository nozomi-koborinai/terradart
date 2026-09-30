// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../security/cloudflare_content_scanning.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_content_scanning`.
const Set<String> _cloudflareContentScanningSensitive = <String>{};

/// Factory wrapper for `cloudflare_content_scanning`.
///
/// Accepted Permissions
///
/// - `Account WAF Read` - `Account WAF Write` - `Zone WAF Read` - `Zone WAF
/// Write`
final class DataCloudflareContentScanning extends Data {
  static const String tfType = 'cloudflare_content_scanning';

  DataCloudflareContentScanning({
    required super.localName,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareContentScanningSensitive;

  /// A reference to the `cloudflare_content_scanning` this data source reads, for
  /// arguments typed `RefTo<CloudflareContentScanning>`.
  RefTo<CloudflareContentScanning> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
