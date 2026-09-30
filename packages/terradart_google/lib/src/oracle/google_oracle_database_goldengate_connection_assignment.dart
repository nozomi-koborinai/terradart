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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'goldengate_connection_assignment_id':
               goldengateConnectionAssignmentId,
           'properties': properties,
           'display_name': ?displayName,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseGoldengateConnectionAssignmentSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseGoldengateConnectionAssignment>`.
  RefTo<GoogleOracleDatabaseGoldengateConnectionAssignment> get ref =>
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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `goldengate_connection_assignment_id` attribute.
  TfRef<String> get goldengateConnectionAssignmentIdRef =>
      TfRef.attribute<String>(this, 'goldengate_connection_assignment_id');

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
