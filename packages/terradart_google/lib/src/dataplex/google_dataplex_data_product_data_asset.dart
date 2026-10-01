// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_data_product.dart'
    show GoogleDataplexDataProduct;

/// Sensitive field paths for `google_dataplex_data_product_data_asset`.
const Set<String> _googleDataplexDataProductDataAssetSensitive = <String>{};

/// Typed helper for the `access_group_configs` block of
/// `google_dataplex_data_product_data_asset` (derived from provider schema).
@immutable
final class DataplexDataProductDataAssetAccessGroupConfigs {
  const DataplexDataProductDataAssetAccessGroupConfigs({
    required this.accessGroup,
    this.iamRoles,
  });

  final TfArg<String> accessGroup;

  final TfArg<List<String>>? iamRoles;

  Map<String, Object?> encode() => {
    'access_group': accessGroup.toTfJson(),
    'iam_roles': ?iamRoles?.toTfJson(),
  };
}

/// Factory wrapper for `google_dataplex_data_product_data_asset`.
///
/// A data asset resource that can be packaged and shared via a data product.
final class GoogleDataplexDataProductDataAsset extends Resource {
  static const String tfType = 'google_dataplex_data_product_data_asset';

  GoogleDataplexDataProductDataAsset(
    super.localName, {
    required RefTo<GoogleDataplexDataProduct> dataProductId,
    required TfArg<String> dataAssetId,
    required TfArg<String> location,
    required TfArg<String> resource,
    TfArg<Map<String, String>>? labels,
    List<DataplexDataProductDataAssetAccessGroupConfigs>? accessGroupConfigs,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_product_id': dataProductId.encodeAs('data_product_id'),
           'data_asset_id': dataAssetId,
           'location': location,
           'resource': resource,
           'labels': ?labels,
           if (accessGroupConfigs != null)
             'access_group_configs': TfArg.literal([
               for (final e in accessGroupConfigs) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexDataProductDataAssetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexDataProductDataAsset>`.
  RefTo<GoogleDataplexDataProductDataAsset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get dataAssetId =>
      TfRef.attribute<String>(this, 'data_asset_id');

  /// Reference to `data_product_id` attribute.
  TfRef<String> get dataProductId =>
      TfRef.attribute<String>(this, 'data_product_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `resource` attribute.
  TfRef<String> get resource => TfRef.attribute<String>(this, 'resource');
}
