// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_data_product_data_asset`.
const Set<String> _googleDataplexDataProductDataAssetSensitive = <String>{};

/// Factory wrapper for `google_dataplex_data_product_data_asset`.
///
/// A data asset resource that can be packaged and shared via a data product.
final class GoogleDataplexDataProductDataAsset extends Resource {
  static const String tfType = 'google_dataplex_data_product_data_asset';

  GoogleDataplexDataProductDataAsset({
    required super.localName,
    required TfArg<String> dataProductId,
    required TfArg<String> dataAssetId,
    required TfArg<String> location,
    required TfArg<String> resource,
    TfArg<Map<String, String>>? labels,
    TfArg<List<Map<String, dynamic>>>? accessGroupConfigs,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_product_id': dataProductId,
           'data_asset_id': dataAssetId,
           'location': location,
           'resource': resource,
           if (labels != null) 'labels': labels,
           if (accessGroupConfigs != null)
             'access_group_configs': accessGroupConfigs,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexDataProductDataAssetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `data_asset_id` attribute.
  TfRef<String> get dataAssetIdRef =>
      TfRef.attribute<String>(this, 'data_asset_id');
}
