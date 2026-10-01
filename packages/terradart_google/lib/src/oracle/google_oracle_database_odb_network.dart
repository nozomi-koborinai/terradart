// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_oracle_database_odb_network`.
const Set<String> _googleOracleDatabaseOdbNetworkSensitive = <String>{};

/// Terraform `deletion_policy` for ODB networks.
extension type const OracleDatabaseOdbNetworkDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  OracleDatabaseOdbNetworkDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseOdbNetworkDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const OracleDatabaseOdbNetworkDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = OracleDatabaseOdbNetworkDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = OracleDatabaseOdbNetworkDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = OracleDatabaseOdbNetworkDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<OracleDatabaseOdbNetworkDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
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

  GoogleOracleDatabaseOdbNetwork(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> odbNetworkId,
    required RefTo<GoogleComputeNetwork> network,
    TfArg<String>? gcpOracleZone,
    TfArg<Map<String, String>>? labels,
    OracleDatabaseOdbNetworkDeletionPolicy? deletionPolicy,
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

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZone =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `odb_network_id` attribute.
  TfRef<String> get odbNetworkId =>
      TfRef.attribute<String>(this, 'odb_network_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
