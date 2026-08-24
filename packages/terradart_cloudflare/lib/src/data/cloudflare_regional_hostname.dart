// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_regional_hostname`.
const Set<String> _cloudflareRegionalHostnameSensitive = <String>{};

/// Factory wrapper for `cloudflare_regional_hostname`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write`
final class DataCloudflareRegionalHostname extends Data {
  static const String tfType = 'cloudflare_regional_hostname';

  DataCloudflareRegionalHostname({
    required super.localName,
    required TfArg<String> hostname,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {'hostname': hostname, if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRegionalHostnameSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `region_key` attribute.
  TfRef<String> get regionKey => TfRef.attribute<String>(this, 'region_key');

  /// Reference to `routing` attribute.
  TfRef<String> get routing => TfRef.attribute<String>(this, 'routing');
}
