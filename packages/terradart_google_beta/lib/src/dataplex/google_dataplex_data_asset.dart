// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_data_asset`.
const Set<String> _googleDataplexDataAssetSensitive = <String>{};

/// Factory wrapper for `google_dataplex_data_asset`.
final class GoogleDataplexDataAsset extends Resource {
  static const String tfType = 'google_dataplex_data_asset';

  GoogleDataplexDataAsset({
    required super.localName,
    required TfArg<String> dataAssetId,
    required TfArg<String> dataProductId,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> resource,
    TfArg<List<Map<String, dynamic>>>? accessGroupConfigs,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'data_asset_id': dataAssetId,
           'data_product_id': dataProductId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'resource': resource,
           if (accessGroupConfigs != null)
             'access_group_configs': accessGroupConfigs,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDataAssetSensitive;
}
