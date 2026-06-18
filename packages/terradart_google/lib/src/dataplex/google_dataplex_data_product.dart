// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_data_product`.
const Set<String> _googleDataplexDataProductSensitive = <String>{};

/// `access_approval_config` block (max=1). Lists approver emails for
/// access requests on this data product.
@immutable
class DataplexDataProductAccessApprovalConfig {
  const DataplexDataProductAccessApprovalConfig({this.approverEmails});

  final List<String>? approverEmails;

  Map<String, Object?> toArgMap() => {
    if (approverEmails != null) 'approver_emails': approverEmails,
  };
}

/// Factory wrapper for `google_dataplex_data_product`.
final class GoogleDataplexDataProduct extends Resource {
  static const String tfType = 'google_dataplex_data_product';

  GoogleDataplexDataProduct({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> dataProductId,
    required TfArg<String> displayName,
    required TfArg<List<String>> ownerEmails,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    DataplexDataProductAccessApprovalConfig? accessApprovalConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'data_product_id': dataProductId,
           'display_name': displayName,
           'owner_emails': ownerEmails,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (accessApprovalConfig != null)
             'access_approval_config': TfArg.literal([
               accessApprovalConfig.toArgMap(),
             ]),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDataProductSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `asset_count` attribute.
  TfRef<num> get assetCount => TfRef.attribute<num>(this, 'asset_count');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `data_product_id` attribute.
  TfRef<String> get dataProductIdRef =>
      TfRef.attribute<String>(this, 'data_product_id');
}
