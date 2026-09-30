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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'cloud_exadata_infrastructure_id': cloudExadataInfrastructureId,
           'display_name': ?displayName,
           'properties': ?properties,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseCloudExadataInfrastructureSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseCloudExadataInfrastructure>`.
  RefTo<GoogleOracleDatabaseCloudExadataInfrastructure> get ref =>
      RefTo.of(this);

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

  /// Reference to `cloud_exadata_infrastructure_id` attribute.
  TfRef<String> get cloudExadataInfrastructureIdRef =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZoneRef =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
