// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_page_asset`.
const Set<String> _cloudflareCustomPageAssetSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_page_asset`.
final class CloudflareCustomPageAsset extends Resource {
  static const String tfType = 'cloudflare_custom_page_asset';

  CloudflareCustomPageAsset({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> description,
    required TfArg<String> name,
    required TfArg<String> url,
    TfArg<String>? zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'description': description,
           'name': name,
           'url': url,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomPageAssetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `size_bytes` attribute.
  TfRef<num> get sizeBytes => TfRef.attribute<num>(this, 'size_bytes');
}
