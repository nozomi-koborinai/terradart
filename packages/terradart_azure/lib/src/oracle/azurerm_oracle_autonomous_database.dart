// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_oracle_autonomous_database`.
const Set<String> _azurermOracleAutonomousDatabaseSensitive = <String>{
  'admin_password',
};

/// Oracle Autonomous Database Db enum for `db_workload`.
extension type const OracleAutonomousDatabaseDbWorkload._(TfArg<String> _)
    implements TfArg<String> {
  OracleAutonomousDatabaseDbWorkload.variable(String name)
    : this._(TfArg.variable(name));
  OracleAutonomousDatabaseDbWorkload.expression(String template)
    : this._(TfArg.expression(template));
  const OracleAutonomousDatabaseDbWorkload.arg(TfArg<String> arg) : this._(arg);

  static const ajd = OracleAutonomousDatabaseDbWorkload._(TfArgLiteral('AJD'));
  static const apex = OracleAutonomousDatabaseDbWorkload._(
    TfArgLiteral('APEX'),
  );
  static const dw = OracleAutonomousDatabaseDbWorkload._(TfArgLiteral('DW'));
  static const oltp = OracleAutonomousDatabaseDbWorkload._(
    TfArgLiteral('OLTP'),
  );

  static const List<OracleAutonomousDatabaseDbWorkload> values = [
    ajd,
    apex,
    dw,
    oltp,
  ];
}

/// Oracle Autonomous Database License enum for `license_model`.
extension type const OracleAutonomousDatabaseLicenseModel._(TfArg<String> _)
    implements TfArg<String> {
  OracleAutonomousDatabaseLicenseModel.variable(String name)
    : this._(TfArg.variable(name));
  OracleAutonomousDatabaseLicenseModel.expression(String template)
    : this._(TfArg.expression(template));
  const OracleAutonomousDatabaseLicenseModel.arg(TfArg<String> arg)
    : this._(arg);

  static const bringyourownlicense = OracleAutonomousDatabaseLicenseModel._(
    TfArgLiteral('BringYourOwnLicense'),
  );
  static const licenseincluded = OracleAutonomousDatabaseLicenseModel._(
    TfArgLiteral('LicenseIncluded'),
  );

  static const List<OracleAutonomousDatabaseLicenseModel> values = [
    bringyourownlicense,
    licenseincluded,
  ];
}

/// Typed helper for the `long_term_backup_schedule` block of
/// `azurerm_oracle_autonomous_database` (derived from provider schema).
@immutable
final class OracleAutonomousDatabaseLongTermBackupSchedule {
  const OracleAutonomousDatabaseLongTermBackupSchedule({
    required this.enabled,
    required this.repeatCadence,
    required this.retentionPeriodInDays,
    required this.timeOfBackup,
  });

  final TfArg<bool> enabled;

  final OracleAutonomousDatabaseRepeatCadence repeatCadence;

  final TfArg<num> retentionPeriodInDays;

  final TfArg<String> timeOfBackup;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'repeat_cadence': repeatCadence.toTfJson(),
    'retention_period_in_days': retentionPeriodInDays.toTfJson(),
    'time_of_backup': timeOfBackup.toTfJson(),
  };
}

/// `repeat_cadence` — derived from the provider schema description.
extension type const OracleAutonomousDatabaseRepeatCadence._(TfArg<String> _)
    implements TfArg<String> {
  OracleAutonomousDatabaseRepeatCadence.variable(String name)
    : this._(TfArg.variable(name));
  OracleAutonomousDatabaseRepeatCadence.expression(String template)
    : this._(TfArg.expression(template));
  const OracleAutonomousDatabaseRepeatCadence.arg(TfArg<String> arg)
    : this._(arg);

  static const monthly = OracleAutonomousDatabaseRepeatCadence._(
    TfArgLiteral('Monthly'),
  );
  static const onetime = OracleAutonomousDatabaseRepeatCadence._(
    TfArgLiteral('OneTime'),
  );
  static const weekly = OracleAutonomousDatabaseRepeatCadence._(
    TfArgLiteral('Weekly'),
  );
  static const yearly = OracleAutonomousDatabaseRepeatCadence._(
    TfArgLiteral('Yearly'),
  );

  static const List<OracleAutonomousDatabaseRepeatCadence> values = [
    monthly,
    onetime,
    weekly,
    yearly,
  ];
}

/// Factory wrapper for `azurerm_oracle_autonomous_database`.
final class AzurermOracleAutonomousDatabase extends Resource {
  static const String tfType = 'azurerm_oracle_autonomous_database';

  AzurermOracleAutonomousDatabase(
    super.localName, {
    required Sensitive<String> adminPassword,
    TfArg<List<String>>? allowedIps,
    required TfArg<bool> autoScalingEnabled,
    required TfArg<bool> autoScalingForStorageEnabled,
    required TfArg<num> backupRetentionPeriodInDays,
    required TfArg<String> characterSet,
    required TfArg<num> computeCount,
    required TfArg<String> computeModel,
    TfArg<List<String>>? customerContacts,
    required TfArg<num> dataStorageSizeInTbs,
    required TfArg<String> dbVersion,
    required OracleAutonomousDatabaseDbWorkload dbWorkload,
    required TfArg<String> displayName,
    required OracleAutonomousDatabaseLicenseModel licenseModel,
    required TfArg<String> location,
    required TfArg<bool> mtlsConnectionRequired,
    required TfArg<String> name,
    required TfArg<String> nationalCharacterSet,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    RefTo<AzurermSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    RefTo<AzurermVirtualNetwork>? virtualNetworkId,
    OracleAutonomousDatabaseLongTermBackupSchedule? longTermBackupSchedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_password': adminPassword,
           'allowed_ips': ?allowedIps,
           'auto_scaling_enabled': autoScalingEnabled,
           'auto_scaling_for_storage_enabled': autoScalingForStorageEnabled,
           'backup_retention_period_in_days': backupRetentionPeriodInDays,
           'character_set': characterSet,
           'compute_count': computeCount,
           'compute_model': computeModel,
           'customer_contacts': ?customerContacts,
           'data_storage_size_in_tbs': dataStorageSizeInTbs,
           'db_version': dbVersion,
           'db_workload': dbWorkload,
           'display_name': displayName,
           'license_model': licenseModel,
           'location': location,
           'mtls_connection_required': mtlsConnectionRequired,
           'name': name,
           'national_character_set': nationalCharacterSet,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'virtual_network_id': ?virtualNetworkId?.encodeAs('id'),
           if (longTermBackupSchedule != null)
             'long_term_backup_schedule': TfArg.literal(
               longTermBackupSchedule.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermOracleAutonomousDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermOracleAutonomousDatabase>`.
  RefTo<AzurermOracleAutonomousDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `allowed_ips` attribute.
  TfRef<List<String>> get allowedIps =>
      TfRef.attribute<List<String>>(this, 'allowed_ips');

  /// Reference to `auto_scaling_enabled` attribute.
  TfRef<bool> get autoScalingEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_enabled');

  /// Reference to `auto_scaling_for_storage_enabled` attribute.
  TfRef<bool> get autoScalingForStorageEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_for_storage_enabled');

  /// Reference to `backup_retention_period_in_days` attribute.
  TfRef<num> get backupRetentionPeriodInDays =>
      TfRef.attribute<num>(this, 'backup_retention_period_in_days');

  /// Reference to `character_set` attribute.
  TfRef<String> get characterSet =>
      TfRef.attribute<String>(this, 'character_set');

  /// Reference to `compute_count` attribute.
  TfRef<num> get computeCount => TfRef.attribute<num>(this, 'compute_count');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `customer_contacts` attribute.
  TfRef<List<String>> get customerContacts =>
      TfRef.attribute<List<String>>(this, 'customer_contacts');

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `db_version` attribute.
  TfRef<String> get dbVersion => TfRef.attribute<String>(this, 'db_version');

  /// Reference to `db_workload` attribute.
  TfRef<String> get dbWorkload => TfRef.attribute<String>(this, 'db_workload');

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

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
