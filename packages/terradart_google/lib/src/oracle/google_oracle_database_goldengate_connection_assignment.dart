// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_goldengate_connection_assignment`.
const Set<String> _googleOracleDatabaseGoldengateConnectionAssignmentSensitive =
    <String>{};

/// Terraform `deletion_policy` for GoldenGate connection assignments.
enum OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy
    implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_goldengate_connection_assignment`.
///
/// This resource helps to assign a GoldengateConnection to a
/// GoldengateDeployment used for actual data replication and transformations.
///
/// Assigns a [GoogleOracleDatabaseGoldengateConnection] to a
/// [GoogleOracleDatabaseGoldengateDeployment] for replication workloads.
///
/// Enable `oracledatabase.googleapis.com` before apply.
final class GoogleOracleDatabaseGoldengateConnectionAssignment
    extends Resource {
  static const String tfType =
      'google_oracle_database_goldengate_connection_assignment';

  GoogleOracleDatabaseGoldengateConnectionAssignment({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> goldengateConnectionAssignmentId,
    required TfArg<Map<String, dynamic>> properties,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy>?
    deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'goldengate_connection_assignment_id':
               goldengateConnectionAssignmentId,
           'properties': properties,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseGoldengateConnectionAssignmentSensitive;

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
