// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_page_asset`.
const Set<String> _cloudflareCustomPageAssetSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_page_asset`.
final class DataCloudflareCustomPageAsset extends Data {
  static const String tfType = 'cloudflare_custom_page_asset';

  DataCloudflareCustomPageAsset({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> assetName,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'asset_name': assetName,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomPageAssetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `size_bytes` attribute.
  TfRef<num> get sizeBytes => TfRef.attribute<num>(this, 'size_bytes');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
