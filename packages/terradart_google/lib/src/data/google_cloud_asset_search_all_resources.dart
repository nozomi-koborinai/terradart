// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_asset_search_all_resources`.
const Set<String> _googleCloudAssetSearchAllResourcesSensitive = <String>{};

/// Factory wrapper for `google_cloud_asset_search_all_resources`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudAssetSearchAllResources extends Data {
  static const String tfType = 'google_cloud_asset_search_all_resources';

  DataGoogleCloudAssetSearchAllResources({
    required super.localName,
    TfArg<List<String>>? assetTypes,
    TfArg<String>? query,
    required TfArg<String> scope,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (assetTypes != null) 'asset_types': assetTypes,
           if (query != null) 'query': query,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudAssetSearchAllResourcesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `results` attribute.
  TfRef<List<Map<String, Object?>>> get results =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'results');
}
