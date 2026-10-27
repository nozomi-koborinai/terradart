// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_oracle_autonomous_database_clone_from_backup`.
const Set<String> _azurermOracleAutonomousDatabaseCloneFromBackupSensitive =
    <String>{'admin_password'};

/// Oracle Autonomous Database Clone From Backup Clone enum for `clone_type`.
extension type const OracleAutonomousDatabaseCloneFromBackupCloneType._(
  TfArg<String> _
) implements TfArg<String> {
  OracleAutonomousDatabaseCloneFromBackupCloneType.variable(String name)
    : this._(TfArg.variable(name));
  OracleAutonomousDatabaseCloneFromBackupCloneType.expression(String template)
    : this._(TfArg.expression(template));
  const OracleAutonomousDatabaseCloneFromBackupCloneType.arg(TfArg<String> arg)
    : this._(arg);

  static const full = OracleAutonomousDatabaseCloneFromBackupCloneType._(
    TfArgLiteral('Full'),
  );
  static const metadata = OracleAutonomousDatabaseCloneFromBackupCloneType._(
    TfArgLiteral('Metadata'),
  );

  static const List<OracleAutonomousDatabaseCloneFromBackupCloneType> values = [
    full,
    metadata,
  ];
}

/// Oracle Autonomous Database Clone From Backup Database enum for `database_workload`.
extension type const OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload._(
  TfArg<String> _
) implements TfArg<String> {
  OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload.variable(String name)
    : this._(TfArg.variable(name));
  OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ajd = OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload._(
    TfArgLiteral('AJD'),
  );
  static const apex = OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload._(
    TfArgLiteral('APEX'),
  );
  static const dw = OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload._(
    TfArgLiteral('DW'),
  );
  static const oltp = OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload._(
    TfArgLiteral('OLTP'),
  );

  static const List<OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload>
  values = [ajd, apex, dw, oltp];
}

/// Oracle Autonomous Database Clone From Backup License enum for `license_model`.
extension type const OracleAutonomousDatabaseCloneFromBackupLicenseModel._(
  TfArg<String> _
) implements TfArg<String> {
  OracleAutonomousDatabaseCloneFromBackupLicenseModel.variable(String name)
    : this._(TfArg.variable(name));
  OracleAutonomousDatabaseCloneFromBackupLicenseModel.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const OracleAutonomousDatabaseCloneFromBackupLicenseModel.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const bringyourownlicense =
      OracleAutonomousDatabaseCloneFromBackupLicenseModel._(
        TfArgLiteral('BringYourOwnLicense'),
      );
  static const licenseincluded =
      OracleAutonomousDatabaseCloneFromBackupLicenseModel._(
        TfArgLiteral('LicenseIncluded'),
      );

  static const List<OracleAutonomousDatabaseCloneFromBackupLicenseModel>
  values = [bringyourownlicense, licenseincluded];
}

/// Exactly one of `allowed_ip_addresses`, `virtual_network_id` on `azurerm_oracle_autonomous_database_clone_from_backup`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allowedIpAddresses(...)`.
sealed class OracleAutonomousDatabaseCloneFromBackupNetworkAccess {
  const OracleAutonomousDatabaseCloneFromBackupNetworkAccess();

  /// Sets `allowed_ip_addresses`.
  const factory OracleAutonomousDatabaseCloneFromBackupNetworkAccess.allowedIpAddresses(
    TfArg<List<String>> allowedIpAddresses,
  ) = OracleAutonomousDatabaseCloneFromBackupNetworkAccessAllowedIpAddresses;

  /// Sets `virtual_network_id`.
  const factory OracleAutonomousDatabaseCloneFromBackupNetworkAccess.virtualNetworkId(
    RefTo<AzurermVirtualNetwork> virtualNetworkId,
  ) = OracleAutonomousDatabaseCloneFromBackupNetworkAccessVirtualNetworkId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [OracleAutonomousDatabaseCloneFromBackupNetworkAccess.allowedIpAddresses] choice: sets `allowed_ip_addresses`.
final class OracleAutonomousDatabaseCloneFromBackupNetworkAccessAllowedIpAddresses
    extends OracleAutonomousDatabaseCloneFromBackupNetworkAccess {
  const OracleAutonomousDatabaseCloneFromBackupNetworkAccessAllowedIpAddresses(
    this.allowedIpAddresses,
  );

  final TfArg<List<String>> allowedIpAddresses;

  @internal
  @override
  String get blockKey => 'allowed_ip_addresses';

  @internal
  @override
  Map<String, Object?> encode() => {
    'allowed_ip_addresses': allowedIpAddresses.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'allowed_ip_addresses': allowedIpAddresses,
  };
}

/// The [OracleAutonomousDatabaseCloneFromBackupNetworkAccess.virtualNetworkId] choice: sets `virtual_network_id`.
final class OracleAutonomousDatabaseCloneFromBackupNetworkAccessVirtualNetworkId
    extends OracleAutonomousDatabaseCloneFromBackupNetworkAccess {
  const OracleAutonomousDatabaseCloneFromBackupNetworkAccessVirtualNetworkId(
    this.virtualNetworkId,
  );

  final RefTo<AzurermVirtualNetwork> virtualNetworkId;

  @internal
  @override
  String get blockKey => 'virtual_network_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'virtual_network_id': virtualNetworkId.encodeAs('id').toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'virtual_network_id': virtualNetworkId.encodeAs('id'),
  };
}

/// Factory wrapper for `azurerm_oracle_autonomous_database_clone_from_backup`.
final class AzurermOracleAutonomousDatabaseCloneFromBackup extends Resource {
  static const String tfType =
      'azurerm_oracle_autonomous_database_clone_from_backup';

  AzurermOracleAutonomousDatabaseCloneFromBackup(
    super.localName, {
    required Sensitive<String> adminPassword,
    required OracleAutonomousDatabaseCloneFromBackupNetworkAccess networkAccess,
    required TfArg<bool> autoScalingEnabled,
    required TfArg<bool> autoScalingForStorageEnabled,
    required TfArg<num> backupRetentionPeriodInDays,
    TfArg<String>? backupTimestamp,
    required TfArg<String> characterSet,
    required OracleAutonomousDatabaseCloneFromBackupCloneType cloneType,
    required TfArg<num> computeCount,
    required TfArg<String> computeModel,
    TfArg<List<String>>? customerContacts,
    required TfArg<num> dataStorageSizeInTb,
    required TfArg<String> databaseVersion,
    required OracleAutonomousDatabaseCloneFromBackupDatabaseWorkload
    databaseWorkload,
    required TfArg<String> displayName,
    required OracleAutonomousDatabaseCloneFromBackupLicenseModel licenseModel,
    required TfArg<String> location,
    required TfArg<bool> mtlsConnectionRequired,
    required TfArg<String> name,
    required TfArg<String> nationalCharacterSet,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sourceAutonomousDatabaseId,
    RefTo<AzurermSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_password': adminPassword,
           ...networkAccess.argMap,
           'auto_scaling_enabled': autoScalingEnabled,
           'auto_scaling_for_storage_enabled': autoScalingForStorageEnabled,
           'backup_retention_period_in_days': backupRetentionPeriodInDays,
           'backup_timestamp': ?backupTimestamp,
           'character_set': characterSet,
           'clone_type': cloneType,
           'compute_count': computeCount,
           'compute_model': computeModel,
           'customer_contacts': ?customerContacts,
           'data_storage_size_in_tb': dataStorageSizeInTb,
           'database_version': databaseVersion,
           'database_workload': databaseWorkload,
           'display_name': displayName,
           'license_model': licenseModel,
           'location': location,
           'mtls_connection_required': mtlsConnectionRequired,
           'name': name,
           'national_character_set': nationalCharacterSet,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_autonomous_database_id': sourceAutonomousDatabaseId,
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOracleAutonomousDatabaseCloneFromBackupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermOracleAutonomousDatabaseCloneFromBackup>`.
  RefTo<AzurermOracleAutonomousDatabaseCloneFromBackup> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `allowed_ip_addresses` attribute.
  TfRef<List<String>> get allowedIpAddresses =>
      TfRef.attribute<List<String>>(this, 'allowed_ip_addresses');

  /// Reference to `auto_scaling_enabled` attribute.
  TfRef<bool> get autoScalingEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_enabled');

  /// Reference to `auto_scaling_for_storage_enabled` attribute.
  TfRef<bool> get autoScalingForStorageEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_for_storage_enabled');

  /// Reference to `backup_retention_period_in_days` attribute.
  TfRef<num> get backupRetentionPeriodInDays =>
      TfRef.attribute<num>(this, 'backup_retention_period_in_days');

  /// Reference to `backup_timestamp` attribute.
  TfRef<String> get backupTimestamp =>
      TfRef.attribute<String>(this, 'backup_timestamp');

  /// Reference to `character_set` attribute.
  TfRef<String> get characterSet =>
      TfRef.attribute<String>(this, 'character_set');

  /// Reference to `clone_type` attribute.
  TfRef<String> get cloneType => TfRef.attribute<String>(this, 'clone_type');

  /// Reference to `compute_count` attribute.
  TfRef<num> get computeCount => TfRef.attribute<num>(this, 'compute_count');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `customer_contacts` attribute.
  TfRef<List<String>> get customerContacts =>
      TfRef.attribute<List<String>>(this, 'customer_contacts');

  /// Reference to `data_storage_size_in_tb` attribute.
  TfRef<num> get dataStorageSizeInTb =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tb');

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersion =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `database_workload` attribute.
  TfRef<String> get databaseWorkload =>
      TfRef.attribute<String>(this, 'database_workload');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mtls_connection_required` attribute.
  TfRef<bool> get mtlsConnectionRequired =>
      TfRef.attribute<bool>(this, 'mtls_connection_required');

  /// Reference to `national_character_set` attribute.
  TfRef<String> get nationalCharacterSet =>
      TfRef.attribute<String>(this, 'national_character_set');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_autonomous_database_id` attribute.
  TfRef<String> get sourceAutonomousDatabaseId =>
      TfRef.attribute<String>(this, 'source_autonomous_database_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
