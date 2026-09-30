// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_oracle_database_odb_network`.
const Set<String> _googleOracleDatabaseOdbNetworkSensitive = <String>{};

/// Terraform `deletion_policy` for ODB networks.
enum OracleDatabaseOdbNetworkDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseOdbNetworkDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_odb_network`.
///
/// An OdbNetwork resource which represents a private network providing
/// connectivity between OracleDatabase resources and Google Cloud VPC network.
///
/// Oracle Database@Google Cloud ODB network — VPC attachment for ODB subnets.
///
/// Enable `oracledatabase.googleapis.com` before apply. Pair with
/// [GoogleOracleDatabaseOdbSubnet] under the same [location].
final class GoogleOracleDatabaseOdbNetwork extends Resource {
  static const String tfType = 'google_oracle_database_odb_network';

  GoogleOracleDatabaseOdbNetwork({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> odbNetworkId,
    required RefTo<GoogleComputeNetwork> network,
    TfArg<String>? gcpOracleZone,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseOdbNetworkDeletionPolicy>? deletionPolicy,
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
           'odb_network_id': odbNetworkId,
           'network': network.encodeAs('id'),
           'gcp_oracle_zone': ?gcpOracleZone,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseOdbNetworkSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseOdbNetwork>`.
  RefTo<GoogleOracleDatabaseOdbNetwork> get ref => RefTo.of(this);

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZoneRef =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get networkRef => TfRef.attribute<String>(this, 'network');

  /// Reference to `odb_network_id` attribute.
  TfRef<String> get odbNetworkIdRef =>
      TfRef.attribute<String>(this, 'odb_network_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
