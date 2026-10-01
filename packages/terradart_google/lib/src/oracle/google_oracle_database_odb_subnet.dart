// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_odb_subnet`.
const Set<String> _googleOracleDatabaseOdbSubnetSensitive = <String>{};

/// Terraform `deletion_policy` for ODB subnets.
extension type const OracleDatabaseOdbSubnetDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  OracleDatabaseOdbSubnetDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseOdbSubnetDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const OracleDatabaseOdbSubnetDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = OracleDatabaseOdbSubnetDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = OracleDatabaseOdbSubnetDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = OracleDatabaseOdbSubnetDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<OracleDatabaseOdbSubnetDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// ODB subnet purpose.
extension type const OracleDatabaseOdbSubnetPurpose._(TfArg<String> _)
    implements TfArg<String> {
  OracleDatabaseOdbSubnetPurpose.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseOdbSubnetPurpose.expression(String template)
    : this._(TfArg.expression(template));
  const OracleDatabaseOdbSubnetPurpose.arg(TfArg<String> arg) : this._(arg);

  static const clientSubnet = OracleDatabaseOdbSubnetPurpose._(
    TfArgLiteral('CLIENT_SUBNET'),
  );
  static const backupSubnet = OracleDatabaseOdbSubnetPurpose._(
    TfArgLiteral('BACKUP_SUBNET'),
  );

  static const List<OracleDatabaseOdbSubnetPurpose> values = [
    clientSubnet,
    backupSubnet,
  ];
}

/// Factory wrapper for `google_oracle_database_odb_subnet`.
///
/// An OdbSubnet resource which represents a subnet under an OdbNetwork.
///
/// Oracle Database@Google Cloud ODB subnet under an
/// [GoogleOracleDatabaseOdbNetwork].
///
/// Enable `oracledatabase.googleapis.com` before apply. Set [odbnetwork] to
/// the parent network's `odb_network_id` segment in the same [location].
final class GoogleOracleDatabaseOdbSubnet extends Resource {
  static const String tfType = 'google_oracle_database_odb_subnet';

  GoogleOracleDatabaseOdbSubnet(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> odbnetwork,
    required TfArg<String> odbSubnetId,
    required TfArg<String> cidrRange,
    required OracleDatabaseOdbSubnetPurpose purpose,
    TfArg<Map<String, String>>? labels,
    OracleDatabaseOdbSubnetDeletionPolicy? deletionPolicy,
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
           'odbnetwork': odbnetwork,
           'odb_subnet_id': odbSubnetId,
           'cidr_range': cidrRange,
           'purpose': purpose,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseOdbSubnetSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseOdbSubnet>`.
  RefTo<GoogleOracleDatabaseOdbSubnet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `cidr_range` attribute.
  TfRef<String> get cidrRange => TfRef.attribute<String>(this, 'cidr_range');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `odb_subnet_id` attribute.
  TfRef<String> get odbSubnetId =>
      TfRef.attribute<String>(this, 'odb_subnet_id');

  /// Reference to `odbnetwork` attribute.
  TfRef<String> get odbnetwork => TfRef.attribute<String>(this, 'odbnetwork');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `purpose` attribute.
  TfRef<String> get purpose => TfRef.attribute<String>(this, 'purpose');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
