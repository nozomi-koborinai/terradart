// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../oracle/google_oracle_database_goldengate_connection.dart'
    show GoogleOracleDatabaseGoldengateConnection;
import '../oracle/google_oracle_database_goldengate_deployment.dart'
    show GoogleOracleDatabaseGoldengateDeployment;

/// Sensitive field paths for `google_oracle_database_goldengate_connection_assignment`.
const Set<String> _googleOracleDatabaseGoldengateConnectionAssignmentSensitive =
    <String>{};

/// Terraform `deletion_policy` for GoldenGate connection assignments.
extension type const OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy.variable(
    String name,
  ) : this._(TfArg.variable(name));
  OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const delete =
      OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy._(
        TfArgLiteral('DELETE'),
      );
  static const prevent =
      OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy._(
        TfArgLiteral('PREVENT'),
      );
  static const abandon =
      OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy._(
        TfArgLiteral('ABANDON'),
      );

  static const List<OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy>
  values = [delete, prevent, abandon];
}

/// Typed helper for the `properties` block of
/// `google_oracle_database_goldengate_connection_assignment` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionAssignmentProperties {
  const OracleDatabaseGoldengateConnectionAssignmentProperties({
    required this.goldengateConnection,
    required this.goldengateDeployment,
  });

  final RefTo<GoogleOracleDatabaseGoldengateConnection> goldengateConnection;

  final RefTo<GoogleOracleDatabaseGoldengateDeployment> goldengateDeployment;

  Map<String, Object?> encode() => {
    'goldengate_connection': goldengateConnection.encodeAs('name').toTfJson(),
    'goldengate_deployment': goldengateDeployment.encodeAs('name').toTfJson(),
  };
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

  GoogleOracleDatabaseGoldengateConnectionAssignment(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> goldengateConnectionAssignmentId,
    required OracleDatabaseGoldengateConnectionAssignmentProperties properties,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy? deletionPolicy,
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
           'properties': TfArg.literal(properties.encode()),
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `goldengate_connection_assignment_id` attribute.
  TfRef<String> get goldengateConnectionAssignmentId =>
      TfRef.attribute<String>(this, 'goldengate_connection_assignment_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
