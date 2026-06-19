// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_odb_subnet`.
const Set<String> _googleOracleDatabaseOdbSubnetSensitive = <String>{};

/// Terraform `deletion_policy` for ODB subnets.
enum OracleDatabaseOdbSubnetDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseOdbSubnetDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// ODB subnet purpose.
enum OracleDatabaseOdbSubnetPurpose implements TerraformEnum {
  clientSubnet('CLIENT_SUBNET'),
  backupSubnet('BACKUP_SUBNET');

  const OracleDatabaseOdbSubnetPurpose(this.terraformValue);
  @override
  final String terraformValue;
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

  GoogleOracleDatabaseOdbSubnet({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> odbnetwork,
    required TfArg<String> odbSubnetId,
    required TfArg<String> cidrRange,
    required TfArg<OracleDatabaseOdbSubnetPurpose> purpose,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseOdbSubnetDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'odbnetwork': odbnetwork,
           'odb_subnet_id': odbSubnetId,
           'cidr_range': cidrRange,
           'purpose': purpose,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseOdbSubnetSensitive;

  @override
  bool get supportsDeletionProtection => true;

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

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
