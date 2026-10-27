// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mssql_elasticpool`.
const Set<String> _azurermMssqlElasticpoolSensitive = <String>{};

/// Mssql Elasticpool Enclave enum for `enclave_type`.
extension type const MssqlElasticpoolEnclaveType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlElasticpoolEnclaveType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlElasticpoolEnclaveType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlElasticpoolEnclaveType.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = MssqlElasticpoolEnclaveType._(
    TfArgLiteral('Default'),
  );
  static const vbs = MssqlElasticpoolEnclaveType._(TfArgLiteral('VBS'));

  static const List<MssqlElasticpoolEnclaveType> values = [defaultCase, vbs];
}

/// Mssql Elasticpool License enum for `license_type`.
extension type const MssqlElasticpoolLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlElasticpoolLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlElasticpoolLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlElasticpoolLicenseType.arg(TfArg<String> arg) : this._(arg);

  static const baseprice = MssqlElasticpoolLicenseType._(
    TfArgLiteral('BasePrice'),
  );
  static const licenseincluded = MssqlElasticpoolLicenseType._(
    TfArgLiteral('LicenseIncluded'),
  );

  static const List<MssqlElasticpoolLicenseType> values = [
    baseprice,
    licenseincluded,
  ];
}

/// At most one of `max_size_bytes`, `max_size_gb` on `azurerm_mssql_elasticpool`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.maxSizeBytes(...)`.
sealed class MssqlElasticpoolMaxSize {
  const MssqlElasticpoolMaxSize();

  /// Sets `max_size_bytes`.
  const factory MssqlElasticpoolMaxSize.maxSizeBytes(TfArg<num> maxSizeBytes) =
      MssqlElasticpoolMaxSizeBytes;

  /// Sets `max_size_gb`.
  const factory MssqlElasticpoolMaxSize.maxSizeGb(TfArg<num> maxSizeGb) =
      MssqlElasticpoolMaxSizeGb;

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

/// The [MssqlElasticpoolMaxSize.maxSizeBytes] choice: sets `max_size_bytes`.
final class MssqlElasticpoolMaxSizeBytes extends MssqlElasticpoolMaxSize {
  const MssqlElasticpoolMaxSizeBytes(this.maxSizeBytes);

  final TfArg<num> maxSizeBytes;

  @internal
  @override
  String get blockKey => 'max_size_bytes';

  @internal
  @override
  Map<String, Object?> encode() => {'max_size_bytes': maxSizeBytes.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'max_size_bytes': maxSizeBytes};
}

/// The [MssqlElasticpoolMaxSize.maxSizeGb] choice: sets `max_size_gb`.
final class MssqlElasticpoolMaxSizeGb extends MssqlElasticpoolMaxSize {
  const MssqlElasticpoolMaxSizeGb(this.maxSizeGb);

  final TfArg<num> maxSizeGb;

  @internal
  @override
  String get blockKey => 'max_size_gb';

  @internal
  @override
  Map<String, Object?> encode() => {'max_size_gb': maxSizeGb.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'max_size_gb': maxSizeGb};
}

/// Typed helper for the `per_database_settings` block of
/// `azurerm_mssql_elasticpool` (derived from provider schema).
@immutable
final class MssqlElasticpoolPerDatabaseSettings {
  const MssqlElasticpoolPerDatabaseSettings({
    required this.maxCapacity,
    required this.minCapacity,
  });

  final TfArg<num> maxCapacity;

  final TfArg<num> minCapacity;

  @internal
  Map<String, Object?> encode() => {
    'max_capacity': maxCapacity.toTfJson(),
    'min_capacity': minCapacity.toTfJson(),
  };
}

/// Typed helper for the `sku` block of
/// `azurerm_mssql_elasticpool` (derived from provider schema).
@immutable
final class MssqlElasticpoolSku {
  const MssqlElasticpoolSku({
    required this.capacity,
    this.family,
    required this.name,
    required this.tier,
  });

  final TfArg<num> capacity;

  final MssqlElasticpoolFamily? family;

  final MssqlElasticpoolSkuName name;

  final MssqlElasticpoolTier tier;

  @internal
  Map<String, Object?> encode() => {
    'capacity': capacity.toTfJson(),
    'family': ?family?.toTfJson(),
    'name': name.toTfJson(),
    'tier': tier.toTfJson(),
  };
}

/// `family` — derived from the provider schema description.
extension type const MssqlElasticpoolFamily._(TfArg<String> _)
    implements TfArg<String> {
  MssqlElasticpoolFamily.variable(String name) : this._(TfArg.variable(name));
  MssqlElasticpoolFamily.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlElasticpoolFamily.arg(TfArg<String> arg) : this._(arg);

  static const gen4 = MssqlElasticpoolFamily._(TfArgLiteral('Gen4'));
  static const gen5 = MssqlElasticpoolFamily._(TfArgLiteral('Gen5'));
  static const fsv2 = MssqlElasticpoolFamily._(TfArgLiteral('Fsv2'));
  static const dc = MssqlElasticpoolFamily._(TfArgLiteral('DC'));
  static const moprms = MssqlElasticpoolFamily._(TfArgLiteral('MOPRMS'));
  static const prms = MssqlElasticpoolFamily._(TfArgLiteral('PRMS'));

  static const List<MssqlElasticpoolFamily> values = [
    gen4,
    gen5,
    fsv2,
    dc,
    moprms,
    prms,
  ];
}

/// `name` — derived from the provider schema description.
extension type const MssqlElasticpoolSkuName._(TfArg<String> _)
    implements TfArg<String> {
  MssqlElasticpoolSkuName.variable(String name) : this._(TfArg.variable(name));
  MssqlElasticpoolSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlElasticpoolSkuName.arg(TfArg<String> arg) : this._(arg);

  static const basicpool = MssqlElasticpoolSkuName._(TfArgLiteral('BasicPool'));
  static const standardpool = MssqlElasticpoolSkuName._(
    TfArgLiteral('StandardPool'),
  );
  static const premiumpool = MssqlElasticpoolSkuName._(
    TfArgLiteral('PremiumPool'),
  );
  static const gpGen4 = MssqlElasticpoolSkuName._(TfArgLiteral('GP_Gen4'));
  static const gpGen5 = MssqlElasticpoolSkuName._(TfArgLiteral('GP_Gen5'));
  static const gpFsv2 = MssqlElasticpoolSkuName._(TfArgLiteral('GP_Fsv2'));
  static const gpDc = MssqlElasticpoolSkuName._(TfArgLiteral('GP_DC'));
  static const bcGen4 = MssqlElasticpoolSkuName._(TfArgLiteral('BC_Gen4'));
  static const bcGen5 = MssqlElasticpoolSkuName._(TfArgLiteral('BC_Gen5'));
  static const bcDc = MssqlElasticpoolSkuName._(TfArgLiteral('BC_DC'));
  static const hsGen5 = MssqlElasticpoolSkuName._(TfArgLiteral('HS_Gen5'));
  static const hsPrms = MssqlElasticpoolSkuName._(TfArgLiteral('HS_PRMS'));
  static const hsMoprms = MssqlElasticpoolSkuName._(TfArgLiteral('HS_MOPRMS'));

  static const List<MssqlElasticpoolSkuName> values = [
    basicpool,
    standardpool,
    premiumpool,
    gpGen4,
    gpGen5,
    gpFsv2,
    gpDc,
    bcGen4,
    bcGen5,
    bcDc,
    hsGen5,
    hsPrms,
    hsMoprms,
  ];
}

/// `tier` — derived from the provider schema description.
extension type const MssqlElasticpoolTier._(TfArg<String> _)
    implements TfArg<String> {
  MssqlElasticpoolTier.variable(String name) : this._(TfArg.variable(name));
  MssqlElasticpoolTier.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlElasticpoolTier.arg(TfArg<String> arg) : this._(arg);

  static const basic = MssqlElasticpoolTier._(TfArgLiteral('Basic'));
  static const standard = MssqlElasticpoolTier._(TfArgLiteral('Standard'));
  static const premium = MssqlElasticpoolTier._(TfArgLiteral('Premium'));
  static const generalpurpose = MssqlElasticpoolTier._(
    TfArgLiteral('GeneralPurpose'),
  );
  static const businesscritical = MssqlElasticpoolTier._(
    TfArgLiteral('BusinessCritical'),
  );
  static const hyperscale = MssqlElasticpoolTier._(TfArgLiteral('Hyperscale'));

  static const List<MssqlElasticpoolTier> values = [
    basic,
    standard,
    premium,
    generalpurpose,
    businesscritical,
    hyperscale,
  ];
}

/// Factory wrapper for `azurerm_mssql_elasticpool`.
final class AzurermMssqlElasticpool extends Resource {
  static const String tfType = 'azurerm_mssql_elasticpool';

  AzurermMssqlElasticpool(
    super.localName, {
    MssqlElasticpoolEnclaveType? enclaveType,
    TfArg<num>? highAvailabilityReplicaCount,
    MssqlElasticpoolLicenseType? licenseType,
    required TfArg<String> location,
    TfArg<String>? maintenanceConfigurationName,
    MssqlElasticpoolMaxSize? maxSize,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serverName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? zoneRedundant,
    required MssqlElasticpoolPerDatabaseSettings perDatabaseSettings,
    required MssqlElasticpoolSku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enclave_type': ?enclaveType,
           'high_availability_replica_count': ?highAvailabilityReplicaCount,
           'license_type': ?licenseType,
           'location': location,
           'maintenance_configuration_name': ?maintenanceConfigurationName,
           ...?maxSize?.argMap,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'server_name': serverName,
           'tags': ?tags,
           'zone_redundant': ?zoneRedundant,
           'per_database_settings': TfArg.literal(perDatabaseSettings.encode()),
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlElasticpoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlElasticpool>`.
  RefTo<AzurermMssqlElasticpool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enclave_type` attribute.
  TfRef<String> get enclaveType =>
      TfRef.attribute<String>(this, 'enclave_type');

  /// Reference to `high_availability_replica_count` attribute.
  TfRef<num> get highAvailabilityReplicaCount =>
      TfRef.attribute<num>(this, 'high_availability_replica_count');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maintenance_configuration_name` attribute.
  TfRef<String> get maintenanceConfigurationName =>
      TfRef.attribute<String>(this, 'maintenance_configuration_name');

  /// Reference to `max_size_bytes` attribute.
  TfRef<num> get maxSizeBytes => TfRef.attribute<num>(this, 'max_size_bytes');

  /// Reference to `max_size_gb` attribute.
  TfRef<num> get maxSizeGb => TfRef.attribute<num>(this, 'max_size_gb');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_redundant` attribute.
  TfRef<bool> get zoneRedundant =>
      TfRef.attribute<bool>(this, 'zone_redundant');
}
