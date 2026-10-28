// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_integration_runtime_azure_ssis`.
const Set<String> _azurermDataFactoryIntegrationRuntimeAzureSsisSensitive =
    <String>{
      'catalog_info.administrator_password',
      'custom_setup_script.sas_token',
      'express_custom_setup.command_key.password',
      'express_custom_setup.component.license',
    };

/// Data Factory Integration Runtime Azure Ssis enum for `edition`.
extension type const DataFactoryIntegrationRuntimeAzureSsisEdition._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryIntegrationRuntimeAzureSsisEdition.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryIntegrationRuntimeAzureSsisEdition.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryIntegrationRuntimeAzureSsisEdition.arg(TfArg<String> arg)
    : this._(arg);

  static const enterprise = DataFactoryIntegrationRuntimeAzureSsisEdition._(
    TfArgLiteral('Enterprise'),
  );
  static const standard = DataFactoryIntegrationRuntimeAzureSsisEdition._(
    TfArgLiteral('Standard'),
  );

  static const List<DataFactoryIntegrationRuntimeAzureSsisEdition> values = [
    enterprise,
    standard,
  ];
}

/// Data Factory Integration Runtime Azure Ssis License enum for `license_type`.
extension type const DataFactoryIntegrationRuntimeAzureSsisLicenseType._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryIntegrationRuntimeAzureSsisLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryIntegrationRuntimeAzureSsisLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryIntegrationRuntimeAzureSsisLicenseType.arg(TfArg<String> arg)
    : this._(arg);

  static const baseprice = DataFactoryIntegrationRuntimeAzureSsisLicenseType._(
    TfArgLiteral('BasePrice'),
  );
  static const licenseincluded =
      DataFactoryIntegrationRuntimeAzureSsisLicenseType._(
        TfArgLiteral('LicenseIncluded'),
      );

  static const List<DataFactoryIntegrationRuntimeAzureSsisLicenseType> values =
      [baseprice, licenseincluded];
}

/// Data Factory Integration Runtime Azure Ssis Node enum for `node_size`.
extension type const DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryIntegrationRuntimeAzureSsisNodeSize.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryIntegrationRuntimeAzureSsisNodeSize.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryIntegrationRuntimeAzureSsisNodeSize.arg(TfArg<String> arg)
    : this._(arg);

  static const standardD2V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D2_v3'),
  );
  static const standardD4V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D4_v3'),
  );
  static const standardD8V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D8_v3'),
  );
  static const standardD16V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D16_v3'),
  );
  static const standardD32V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D32_v3'),
  );
  static const standardD64V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D64_v3'),
  );
  static const standardE2V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_E2_v3'),
  );
  static const standardE4V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_E4_v3'),
  );
  static const standardE8V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_E8_v3'),
  );
  static const standardE16V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_E16_v3'),
  );
  static const standardE32V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_E32_v3'),
  );
  static const standardE64V3 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_E64_v3'),
  );
  static const standardD1V2 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D1_v2'),
  );
  static const standardD2V2 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D2_v2'),
  );
  static const standardD3V2 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D3_v2'),
  );
  static const standardD4V2 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_D4_v2'),
  );
  static const standardA4V2 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_A4_v2'),
  );
  static const standardA8V2 = DataFactoryIntegrationRuntimeAzureSsisNodeSize._(
    TfArgLiteral('Standard_A8_v2'),
  );

  static const List<DataFactoryIntegrationRuntimeAzureSsisNodeSize> values = [
    standardD2V3,
    standardD4V3,
    standardD8V3,
    standardD16V3,
    standardD32V3,
    standardD64V3,
    standardE2V3,
    standardE4V3,
    standardE8V3,
    standardE16V3,
    standardE32V3,
    standardE64V3,
    standardD1V2,
    standardD2V2,
    standardD3V2,
    standardD4V2,
    standardA4V2,
    standardA8V2,
  ];
}

/// Typed helper for the `catalog_info` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisCatalogInfo {
  const DataFactoryIntegrationRuntimeAzureSsisCatalogInfo({
    this.administratorLogin,
    this.administratorPassword,
    this.dualStandbyPairName,
    this.capacity,
    required this.serverEndpoint,
  });

  final TfArg<String>? administratorLogin;

  final Sensitive<String>? administratorPassword;

  final TfArg<String>? dualStandbyPairName;

  final DataFactoryIntegrationRuntimeAzureSsisCapacity? capacity;

  final TfArg<String> serverEndpoint;

  @internal
  Map<String, Object?> encode() => {
    'administrator_login': ?administratorLogin?.toTfJson(),
    'administrator_password': ?administratorPassword?.toTfJson(),
    'dual_standby_pair_name': ?dualStandbyPairName?.toTfJson(),
    ...?capacity?.encode(),
    'server_endpoint': serverEndpoint.toTfJson(),
  };
}

/// At most one of `elastic_pool_name`, `pricing_tier` on the `catalog_info` block of `azurerm_data_factory_integration_runtime_azure_ssis`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.elasticPoolName(...)`.
sealed class DataFactoryIntegrationRuntimeAzureSsisCapacity {
  const DataFactoryIntegrationRuntimeAzureSsisCapacity();

  /// Sets `elastic_pool_name`.
  const factory DataFactoryIntegrationRuntimeAzureSsisCapacity.elasticPoolName(
    TfArg<String> elasticPoolName,
  ) = DataFactoryIntegrationRuntimeAzureSsisCapacityElasticPoolName;

  /// Sets `pricing_tier`.
  const factory DataFactoryIntegrationRuntimeAzureSsisCapacity.pricingTier(
    DataFactoryIntegrationRuntimeAzureSsisPricingTier pricingTier,
  ) = DataFactoryIntegrationRuntimeAzureSsisCapacityPricingTier;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DataFactoryIntegrationRuntimeAzureSsisCapacity.elasticPoolName] choice: sets `elastic_pool_name`.
final class DataFactoryIntegrationRuntimeAzureSsisCapacityElasticPoolName
    extends DataFactoryIntegrationRuntimeAzureSsisCapacity {
  const DataFactoryIntegrationRuntimeAzureSsisCapacityElasticPoolName(
    this.elasticPoolName,
  );

  final TfArg<String> elasticPoolName;

  @internal
  @override
  String get blockKey => 'elastic_pool_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'elastic_pool_name': elasticPoolName.toTfJson(),
  };
}

/// The [DataFactoryIntegrationRuntimeAzureSsisCapacity.pricingTier] choice: sets `pricing_tier`.
final class DataFactoryIntegrationRuntimeAzureSsisCapacityPricingTier
    extends DataFactoryIntegrationRuntimeAzureSsisCapacity {
  const DataFactoryIntegrationRuntimeAzureSsisCapacityPricingTier(
    this.pricingTier,
  );

  final DataFactoryIntegrationRuntimeAzureSsisPricingTier pricingTier;

  @internal
  @override
  String get blockKey => 'pricing_tier';

  @internal
  @override
  Map<String, Object?> encode() => {'pricing_tier': pricingTier.toTfJson()};
}

/// `pricing_tier` — derived from the provider schema description.
extension type const DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryIntegrationRuntimeAzureSsisPricingTier.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryIntegrationRuntimeAzureSsisPricingTier.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryIntegrationRuntimeAzureSsisPricingTier.arg(TfArg<String> arg)
    : this._(arg);

  static const basic = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('Basic'),
  );
  static const s0 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('S0'),
  );
  static const s1 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('S1'),
  );
  static const s2 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('S2'),
  );
  static const s3 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('S3'),
  );
  static const s4 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('S4'),
  );
  static const s6 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('S6'),
  );
  static const s7 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('S7'),
  );
  static const s9 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('S9'),
  );
  static const s12 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('S12'),
  );
  static const p1 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('P1'),
  );
  static const p2 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('P2'),
  );
  static const p4 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('P4'),
  );
  static const p6 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('P6'),
  );
  static const p11 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('P11'),
  );
  static const p15 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('P15'),
  );
  static const gpSGen51 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_1'),
  );
  static const gpSGen52 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_2'),
  );
  static const gpSGen54 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_4'),
  );
  static const gpSGen56 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_6'),
  );
  static const gpSGen58 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_8'),
  );
  static const gpSGen510 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_10'),
  );
  static const gpSGen512 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_12'),
  );
  static const gpSGen514 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_14'),
  );
  static const gpSGen516 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_16'),
  );
  static const gpSGen518 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_18'),
  );
  static const gpSGen520 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_20'),
  );
  static const gpSGen524 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_24'),
  );
  static const gpSGen532 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_32'),
  );
  static const gpSGen540 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_S_Gen5_40'),
  );
  static const gpGen52 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_2'),
  );
  static const gpGen54 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_4'),
  );
  static const gpGen56 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_6'),
  );
  static const gpGen58 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_8'),
  );
  static const gpGen510 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_10'),
  );
  static const gpGen512 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_12'),
  );
  static const gpGen514 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_14'),
  );
  static const gpGen516 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_16'),
  );
  static const gpGen518 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_18'),
  );
  static const gpGen520 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_20'),
  );
  static const gpGen524 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_24'),
  );
  static const gpGen532 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_32'),
  );
  static const gpGen540 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_40'),
  );
  static const gpGen580 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('GP_Gen5_80'),
  );
  static const bcGen52 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_2'),
  );
  static const bcGen54 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_4'),
  );
  static const bcGen56 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_6'),
  );
  static const bcGen58 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_8'),
  );
  static const bcGen510 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_10'),
  );
  static const bcGen512 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_12'),
  );
  static const bcGen514 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_14'),
  );
  static const bcGen516 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_16'),
  );
  static const bcGen518 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_18'),
  );
  static const bcGen520 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_20'),
  );
  static const bcGen524 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_24'),
  );
  static const bcGen532 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_32'),
  );
  static const bcGen540 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_40'),
  );
  static const bcGen580 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('BC_Gen5_80'),
  );
  static const hsGen52 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_2'),
  );
  static const hsGen54 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_4'),
  );
  static const hsGen56 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_6'),
  );
  static const hsGen58 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_8'),
  );
  static const hsGen510 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_10'),
  );
  static const hsGen512 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_12'),
  );
  static const hsGen514 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_14'),
  );
  static const hsGen516 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_16'),
  );
  static const hsGen518 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_18'),
  );
  static const hsGen520 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_20'),
  );
  static const hsGen524 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_24'),
  );
  static const hsGen532 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_32'),
  );
  static const hsGen540 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_40'),
  );
  static const hsGen580 = DataFactoryIntegrationRuntimeAzureSsisPricingTier._(
    TfArgLiteral('HS_Gen5_80'),
  );

  static const List<DataFactoryIntegrationRuntimeAzureSsisPricingTier> values =
      [
        basic,
        s0,
        s1,
        s2,
        s3,
        s4,
        s6,
        s7,
        s9,
        s12,
        p1,
        p2,
        p4,
        p6,
        p11,
        p15,
        gpSGen51,
        gpSGen52,
        gpSGen54,
        gpSGen56,
        gpSGen58,
        gpSGen510,
        gpSGen512,
        gpSGen514,
        gpSGen516,
        gpSGen518,
        gpSGen520,
        gpSGen524,
        gpSGen532,
        gpSGen540,
        gpGen52,
        gpGen54,
        gpGen56,
        gpGen58,
        gpGen510,
        gpGen512,
        gpGen514,
        gpGen516,
        gpGen518,
        gpGen520,
        gpGen524,
        gpGen532,
        gpGen540,
        gpGen580,
        bcGen52,
        bcGen54,
        bcGen56,
        bcGen58,
        bcGen510,
        bcGen512,
        bcGen514,
        bcGen516,
        bcGen518,
        bcGen520,
        bcGen524,
        bcGen532,
        bcGen540,
        bcGen580,
        hsGen52,
        hsGen54,
        hsGen56,
        hsGen58,
        hsGen510,
        hsGen512,
        hsGen514,
        hsGen516,
        hsGen518,
        hsGen520,
        hsGen524,
        hsGen532,
        hsGen540,
        hsGen580,
      ];
}

/// Typed helper for the `copy_compute_scale` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisCopyComputeScale {
  const DataFactoryIntegrationRuntimeAzureSsisCopyComputeScale({
    this.dataIntegrationUnit,
    this.timeToLive,
  });

  final TfArg<num>? dataIntegrationUnit;

  final TfArg<num>? timeToLive;

  @internal
  Map<String, Object?> encode() => {
    'data_integration_unit': ?dataIntegrationUnit?.toTfJson(),
    'time_to_live': ?timeToLive?.toTfJson(),
  };
}

/// Typed helper for the `custom_setup_script` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisCustomSetupScript {
  const DataFactoryIntegrationRuntimeAzureSsisCustomSetupScript({
    required this.blobContainerUri,
    required this.sasToken,
  });

  final TfArg<String> blobContainerUri;

  final Sensitive<String> sasToken;

  @internal
  Map<String, Object?> encode() => {
    'blob_container_uri': blobContainerUri.toTfJson(),
    'sas_token': sasToken.toTfJson(),
  };
}

/// Typed helper for the `express_custom_setup` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisExpressCustomSetup {
  const DataFactoryIntegrationRuntimeAzureSsisExpressCustomSetup({
    this.environment,
    this.powershellVersion,
    this.commandKey,
    this.component,
  });

  final TfArg<Map<String, String>>? environment;

  final TfArg<String>? powershellVersion;

  final List<DataFactoryIntegrationRuntimeAzureSsisCommandKey>? commandKey;

  final List<DataFactoryIntegrationRuntimeAzureSsisComponent>? component;

  @internal
  Map<String, Object?> encode() => {
    'environment': ?environment?.toTfJson(),
    'powershell_version': ?powershellVersion?.toTfJson(),
    if (commandKey != null)
      'command_key': [for (final e in commandKey!) e.encode()],
    if (component != null)
      'component': [for (final e in component!) e.encode()],
  };
}

/// Typed helper for the `express_custom_setup.command_key` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisCommandKey {
  const DataFactoryIntegrationRuntimeAzureSsisCommandKey({
    this.password,
    required this.targetName,
    required this.userName,
    this.keyVaultPassword,
  });

  final Sensitive<String>? password;

  final TfArg<String> targetName;

  final TfArg<String> userName;

  final DataFactoryIntegrationRuntimeAzureSsisKeyVaultPassword?
  keyVaultPassword;

  @internal
  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'target_name': targetName.toTfJson(),
    'user_name': userName.toTfJson(),
    'key_vault_password': ?keyVaultPassword?.encode(),
  };
}

/// Typed helper for the `express_custom_setup.command_key.key_vault_password` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisKeyVaultPassword {
  const DataFactoryIntegrationRuntimeAzureSsisKeyVaultPassword({
    required this.linkedServiceName,
    this.parameters,
    required this.secretName,
    this.secretVersion,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String> secretName;

  final TfArg<String>? secretVersion;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'secret_name': secretName.toTfJson(),
    'secret_version': ?secretVersion?.toTfJson(),
  };
}

/// Typed helper for the `express_custom_setup.component` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisComponent {
  const DataFactoryIntegrationRuntimeAzureSsisComponent({
    this.license,
    required this.name,
    this.keyVaultLicense,
  });

  final Sensitive<String>? license;

  final TfArg<String> name;

  final DataFactoryIntegrationRuntimeAzureSsisKeyVaultLicense? keyVaultLicense;

  @internal
  Map<String, Object?> encode() => {
    'license': ?license?.toTfJson(),
    'name': name.toTfJson(),
    'key_vault_license': ?keyVaultLicense?.encode(),
  };
}

/// Typed helper for the `express_custom_setup.component.key_vault_license` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisKeyVaultLicense {
  const DataFactoryIntegrationRuntimeAzureSsisKeyVaultLicense({
    required this.linkedServiceName,
    this.parameters,
    required this.secretName,
    this.secretVersion,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String> secretName;

  final TfArg<String>? secretVersion;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'secret_name': secretName.toTfJson(),
    'secret_version': ?secretVersion?.toTfJson(),
  };
}

/// Typed helper for the `express_vnet_integration` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisExpressVnetIntegration {
  const DataFactoryIntegrationRuntimeAzureSsisExpressVnetIntegration({
    required this.subnetId,
  });

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};
}

/// Typed helper for the `package_store` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisPackageStore {
  const DataFactoryIntegrationRuntimeAzureSsisPackageStore({
    required this.linkedServiceName,
    required this.name,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `pipeline_external_compute_scale` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisPipelineExternalComputeScale {
  const DataFactoryIntegrationRuntimeAzureSsisPipelineExternalComputeScale({
    this.numberOfExternalNodes,
    this.numberOfPipelineNodes,
    this.timeToLive,
  });

  final TfArg<num>? numberOfExternalNodes;

  final TfArg<num>? numberOfPipelineNodes;

  final TfArg<num>? timeToLive;

  @internal
  Map<String, Object?> encode() => {
    'number_of_external_nodes': ?numberOfExternalNodes?.toTfJson(),
    'number_of_pipeline_nodes': ?numberOfPipelineNodes?.toTfJson(),
    'time_to_live': ?timeToLive?.toTfJson(),
  };
}

/// Typed helper for the `proxy` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisProxy {
  const DataFactoryIntegrationRuntimeAzureSsisProxy({
    this.path,
    required this.selfHostedIntegrationRuntimeName,
    required this.stagingStorageLinkedServiceName,
  });

  final TfArg<String>? path;

  final TfArg<String> selfHostedIntegrationRuntimeName;

  final TfArg<String> stagingStorageLinkedServiceName;

  @internal
  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'self_hosted_integration_runtime_name': selfHostedIntegrationRuntimeName
        .toTfJson(),
    'staging_storage_linked_service_name': stagingStorageLinkedServiceName
        .toTfJson(),
  };
}

/// Typed helper for the `vnet_integration` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisVnetIntegration {
  const DataFactoryIntegrationRuntimeAzureSsisVnetIntegration({
    this.publicIps,
    required this.network,
    this.subnetName,
  });

  final TfArg<List<String>>? publicIps;

  final DataFactoryIntegrationRuntimeAzureSsisNetwork network;

  final TfArg<String>? subnetName;

  @internal
  Map<String, Object?> encode() => {
    'public_ips': ?publicIps?.toTfJson(),
    ...network.encode(),
    'subnet_name': ?subnetName?.toTfJson(),
  };
}

/// Exactly one of `subnet_id`, `vnet_id` on the `vnet_integration` block of `azurerm_data_factory_integration_runtime_azure_ssis`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.subnetId(...)`.
sealed class DataFactoryIntegrationRuntimeAzureSsisNetwork {
  const DataFactoryIntegrationRuntimeAzureSsisNetwork();

  /// Sets `subnet_id`.
  const factory DataFactoryIntegrationRuntimeAzureSsisNetwork.subnetId(
    TfArg<String> subnetId,
  ) = DataFactoryIntegrationRuntimeAzureSsisNetworkSubnetId;

  /// Sets `vnet_id`.
  const factory DataFactoryIntegrationRuntimeAzureSsisNetwork.vnetId(
    TfArg<String> vnetId,
  ) = DataFactoryIntegrationRuntimeAzureSsisNetworkVnetId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DataFactoryIntegrationRuntimeAzureSsisNetwork.subnetId] choice: sets `subnet_id`.
final class DataFactoryIntegrationRuntimeAzureSsisNetworkSubnetId
    extends DataFactoryIntegrationRuntimeAzureSsisNetwork {
  const DataFactoryIntegrationRuntimeAzureSsisNetworkSubnetId(this.subnetId);

  final TfArg<String> subnetId;

  @internal
  @override
  String get blockKey => 'subnet_id';

  @internal
  @override
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};
}

/// The [DataFactoryIntegrationRuntimeAzureSsisNetwork.vnetId] choice: sets `vnet_id`.
final class DataFactoryIntegrationRuntimeAzureSsisNetworkVnetId
    extends DataFactoryIntegrationRuntimeAzureSsisNetwork {
  const DataFactoryIntegrationRuntimeAzureSsisNetworkVnetId(this.vnetId);

  final TfArg<String> vnetId;

  @internal
  @override
  String get blockKey => 'vnet_id';

  @internal
  @override
  Map<String, Object?> encode() => {'vnet_id': vnetId.toTfJson()};
}

/// Factory wrapper for `azurerm_data_factory_integration_runtime_azure_ssis`.
final class AzurermDataFactoryIntegrationRuntimeAzureSsis extends Resource {
  static const String tfType =
      'azurerm_data_factory_integration_runtime_azure_ssis';

  AzurermDataFactoryIntegrationRuntimeAzureSsis(
    super.localName, {
    TfArg<String>? credentialName,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    DataFactoryIntegrationRuntimeAzureSsisEdition? edition,
    DataFactoryIntegrationRuntimeAzureSsisLicenseType? licenseType,
    required TfArg<String> location,
    TfArg<num>? maxParallelExecutionsPerNode,
    required TfArg<String> name,
    required DataFactoryIntegrationRuntimeAzureSsisNodeSize nodeSize,
    TfArg<num>? numberOfNodes,
    DataFactoryIntegrationRuntimeAzureSsisCatalogInfo? catalogInfo,
    DataFactoryIntegrationRuntimeAzureSsisCopyComputeScale? copyComputeScale,
    DataFactoryIntegrationRuntimeAzureSsisCustomSetupScript? customSetupScript,
    DataFactoryIntegrationRuntimeAzureSsisExpressCustomSetup?
    expressCustomSetup,
    DataFactoryIntegrationRuntimeAzureSsisExpressVnetIntegration?
    expressVnetIntegration,
    List<DataFactoryIntegrationRuntimeAzureSsisPackageStore>? packageStore,
    DataFactoryIntegrationRuntimeAzureSsisPipelineExternalComputeScale?
    pipelineExternalComputeScale,
    DataFactoryIntegrationRuntimeAzureSsisProxy? proxy,
    DataFactoryIntegrationRuntimeAzureSsisVnetIntegration? vnetIntegration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'credential_name': ?credentialName,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'edition': ?edition,
           'license_type': ?licenseType,
           'location': location,
           'max_parallel_executions_per_node': ?maxParallelExecutionsPerNode,
           'name': name,
           'node_size': nodeSize,
           'number_of_nodes': ?numberOfNodes,
           if (catalogInfo != null)
             'catalog_info': TfArg.literal(catalogInfo.encode()),
           if (copyComputeScale != null)
             'copy_compute_scale': TfArg.literal(copyComputeScale.encode()),
           if (customSetupScript != null)
             'custom_setup_script': TfArg.literal(customSetupScript.encode()),
           if (expressCustomSetup != null)
             'express_custom_setup': TfArg.literal(expressCustomSetup.encode()),
           if (expressVnetIntegration != null)
             'express_vnet_integration': TfArg.literal(
               expressVnetIntegration.encode(),
             ),
           if (packageStore != null)
             'package_store': TfArg.literal([
               for (final e in packageStore) e.encode(),
             ]),
           if (pipelineExternalComputeScale != null)
             'pipeline_external_compute_scale': TfArg.literal(
               pipelineExternalComputeScale.encode(),
             ),
           if (proxy != null) 'proxy': TfArg.literal(proxy.encode()),
           if (vnetIntegration != null)
             'vnet_integration': TfArg.literal(vnetIntegration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryIntegrationRuntimeAzureSsisSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryIntegrationRuntimeAzureSsis>`.
  RefTo<AzurermDataFactoryIntegrationRuntimeAzureSsis> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `credential_name` attribute.
  TfRef<String> get credentialName =>
      TfRef.attribute<String>(this, 'credential_name');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_parallel_executions_per_node` attribute.
  TfRef<num> get maxParallelExecutionsPerNode =>
      TfRef.attribute<num>(this, 'max_parallel_executions_per_node');

  /// Reference to `node_size` attribute.
  TfRef<String> get nodeSize => TfRef.attribute<String>(this, 'node_size');

  /// Reference to `number_of_nodes` attribute.
  TfRef<num> get numberOfNodes => TfRef.attribute<num>(this, 'number_of_nodes');
}
