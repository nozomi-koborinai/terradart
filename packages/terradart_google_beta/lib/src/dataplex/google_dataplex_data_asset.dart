// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_data_asset`.
const Set<String> _googleDataplexDataAssetSensitive = <String>{};

/// Typed helper for the `access_group_configs` block of
/// `google_dataplex_data_asset` (derived from provider schema).
@immutable
final class DataplexDataAssetAccessGroupConfigs {
  const DataplexDataAssetAccessGroupConfigs({
    required this.accessGroup,
    this.iamRoles,
  });

  final TfArg<String> accessGroup;

  final TfArg<List<Object?>>? iamRoles;

  Map<String, Object?> encode() => {
    'access_group': accessGroup.toTfJson(),
    if (iamRoles != null) 'iam_roles': iamRoles!.toTfJson(),
  };
}

/// Factory wrapper for `google_dataplex_data_asset`.
///
/// A data asset resource that can be packaged and shared via a data product.
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
    List<DataplexDataAssetAccessGroupConfigs>? accessGroupConfigs,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'data_asset_id': dataAssetId,
           'data_product_id': dataProductId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'resource': resource,
           if (accessGroupConfigs != null)
             'access_group_configs': TfArg.literal([
               for (final e in accessGroupConfigs) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDataAssetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexDataAsset>`.
  RefTo<GoogleDataplexDataAsset> get ref => RefTo.of(this);

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
}
