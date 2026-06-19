// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_cloud_exadata_infrastructure`.
const Set<String> _googleOracleDatabaseCloudExadataInfrastructureSensitive =
    <String>{};

/// Terraform `deletion_policy` for Cloud Exadata Infrastructure.
enum OracleDatabaseCloudExadataInfrastructureDeletionPolicy
    implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseCloudExadataInfrastructureDeletionPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_cloud_exadata_infrastructure`.
///
/// A CloudExadataInfrastructure resource.
///
/// Oracle Exadata Infrastructure on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Set [properties]
/// with `shape`, `compute_count`, and `storage_count`. Downstream
/// [GoogleOracleDatabaseCloudVmCluster] references [nameRef].
final class GoogleOracleDatabaseCloudExadataInfrastructure extends Resource {
  static const String tfType =
      'google_oracle_database_cloud_exadata_infrastructure';

  GoogleOracleDatabaseCloudExadataInfrastructure({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> cloudExadataInfrastructureId,
    TfArg<String>? displayName,
    TfArg<Map<String, dynamic>>? properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseCloudExadataInfrastructureDeletionPolicy>?
    deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'cloud_exadata_infrastructure_id': cloudExadataInfrastructureId,
           if (displayName != null) 'display_name': displayName,
           if (properties != null) 'properties': properties,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseCloudExadataInfrastructureSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
