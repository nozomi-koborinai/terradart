// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_mssql_managed_instance`.
const Set<String> _azurermMssqlManagedInstanceSensitive = <String>{
  'administrator_login_password',
};

/// Mssql Managed Instance Database enum for `database_format`.
extension type const MssqlManagedInstanceDatabaseFormat._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstanceDatabaseFormat.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceDatabaseFormat.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceDatabaseFormat.arg(TfArg<String> arg) : this._(arg);

  static const alwaysuptodate = MssqlManagedInstanceDatabaseFormat._(
    TfArgLiteral('AlwaysUpToDate'),
  );
  static const sqlserver2025 = MssqlManagedInstanceDatabaseFormat._(
    TfArgLiteral('SQLServer2025'),
  );
  static const sqlserver2022 = MssqlManagedInstanceDatabaseFormat._(
    TfArgLiteral('SQLServer2022'),
  );

  static const List<MssqlManagedInstanceDatabaseFormat> values = [
    alwaysuptodate,
    sqlserver2025,
    sqlserver2022,
  ];
}

/// Mssql Managed Instance Hybrid Secondary enum for `hybrid_secondary_usage`.
extension type const MssqlManagedInstanceHybridSecondaryUsage._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstanceHybridSecondaryUsage.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceHybridSecondaryUsage.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceHybridSecondaryUsage.arg(TfArg<String> arg)
    : this._(arg);

  static const active = MssqlManagedInstanceHybridSecondaryUsage._(
    TfArgLiteral('Active'),
  );
  static const passive = MssqlManagedInstanceHybridSecondaryUsage._(
    TfArgLiteral('Passive'),
  );

  static const List<MssqlManagedInstanceHybridSecondaryUsage> values = [
    active,
    passive,
  ];
}

/// Mssql Managed Instance License enum for `license_type`.
extension type const MssqlManagedInstanceLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstanceLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceLicenseType.arg(TfArg<String> arg) : this._(arg);

  static const licenseincluded = MssqlManagedInstanceLicenseType._(
    TfArgLiteral('LicenseIncluded'),
  );
  static const baseprice = MssqlManagedInstanceLicenseType._(
    TfArgLiteral('BasePrice'),
  );

  static const List<MssqlManagedInstanceLicenseType> values = [
    licenseincluded,
    baseprice,
  ];
}

/// Mssql Managed Instance Minimum Tls enum for `minimum_tls_version`.
extension type const MssqlManagedInstanceMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstanceMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p2 = MssqlManagedInstanceMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );

  static const List<MssqlManagedInstanceMinimumTlsVersion> values = [v1p2];
}

/// Mssql Managed Instance Proxy enum for `proxy_override`.
extension type const MssqlManagedInstanceProxyOverride._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstanceProxyOverride.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceProxyOverride.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceProxyOverride.arg(TfArg<String> arg) : this._(arg);

  static const redirect = MssqlManagedInstanceProxyOverride._(
    TfArgLiteral('Redirect'),
  );
  static const proxy = MssqlManagedInstanceProxyOverride._(
    TfArgLiteral('Proxy'),
  );

  static const List<MssqlManagedInstanceProxyOverride> values = [
    redirect,
    proxy,
  ];
}

/// Mssql Managed Instance Service Principal enum for `service_principal_type`.
extension type const MssqlManagedInstanceServicePrincipalType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstanceServicePrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceServicePrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceServicePrincipalType.arg(TfArg<String> arg)
    : this._(arg);

  static const systemassigned = MssqlManagedInstanceServicePrincipalType._(
    TfArgLiteral('SystemAssigned'),
  );

  static const List<MssqlManagedInstanceServicePrincipalType> values = [
    systemassigned,
  ];
}

/// Mssql Managed Instance Sku enum for `sku_name`.
extension type const MssqlManagedInstanceSkuName._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstanceSkuName.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceSkuName.arg(TfArg<String> arg) : this._(arg);

  static const bcGen4 = MssqlManagedInstanceSkuName._(TfArgLiteral('BC_Gen4'));
  static const bcGen5 = MssqlManagedInstanceSkuName._(TfArgLiteral('BC_Gen5'));
  static const bcGen8ih = MssqlManagedInstanceSkuName._(
    TfArgLiteral('BC_Gen8IH'),
  );
  static const bcGen8im = MssqlManagedInstanceSkuName._(
    TfArgLiteral('BC_Gen8IM'),
  );
  static const gpGen4 = MssqlManagedInstanceSkuName._(TfArgLiteral('GP_Gen4'));
  static const gpGen5 = MssqlManagedInstanceSkuName._(TfArgLiteral('GP_Gen5'));
  static const gpGen8ih = MssqlManagedInstanceSkuName._(
    TfArgLiteral('GP_Gen8IH'),
  );
  static const gpGen8im = MssqlManagedInstanceSkuName._(
    TfArgLiteral('GP_Gen8IM'),
  );

  static const List<MssqlManagedInstanceSkuName> values = [
    bcGen4,
    bcGen5,
    bcGen8ih,
    bcGen8im,
    gpGen4,
    gpGen5,
    gpGen8ih,
    gpGen8im,
  ];
}

/// Mssql Managed Instance Storage Account enum for `storage_account_type`.
extension type const MssqlManagedInstanceStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstanceStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceStorageAccountType.arg(TfArg<String> arg)
    : this._(arg);

  static const grs = MssqlManagedInstanceStorageAccountType._(
    TfArgLiteral('GRS'),
  );
  static const lrs = MssqlManagedInstanceStorageAccountType._(
    TfArgLiteral('LRS'),
  );
  static const zrs = MssqlManagedInstanceStorageAccountType._(
    TfArgLiteral('ZRS'),
  );
  static const gzrs = MssqlManagedInstanceStorageAccountType._(
    TfArgLiteral('GZRS'),
  );

  static const List<MssqlManagedInstanceStorageAccountType> values = [
    grs,
    lrs,
    zrs,
    gzrs,
  ];
}

/// Typed helper for the `azure_active_directory_administrator` block of
/// `azurerm_mssql_managed_instance` (derived from provider schema).
@immutable
final class MssqlManagedInstanceAzureActiveDirectoryAdministrator {
  const MssqlManagedInstanceAzureActiveDirectoryAdministrator({
    this.azureadAuthenticationOnlyEnabled,
    required this.loginUsername,
    required this.objectId,
    required this.principalType,
    this.tenantId,
  });

  final TfArg<bool>? azureadAuthenticationOnlyEnabled;

  final TfArg<String> loginUsername;

  final TfArg<String> objectId;

  final MssqlManagedInstancePrincipalType principalType;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'azuread_authentication_only_enabled': ?azureadAuthenticationOnlyEnabled
        ?.toTfJson(),
    'login_username': loginUsername.toTfJson(),
    'object_id': objectId.toTfJson(),
    'principal_type': principalType.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// `principal_type` — derived from the provider schema description.
extension type const MssqlManagedInstancePrincipalType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlManagedInstancePrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstancePrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstancePrincipalType.arg(TfArg<String> arg) : this._(arg);

  static const application = MssqlManagedInstancePrincipalType._(
    TfArgLiteral('Application'),
  );
  static const group = MssqlManagedInstancePrincipalType._(
    TfArgLiteral('Group'),
  );
  static const user = MssqlManagedInstancePrincipalType._(TfArgLiteral('User'));

  static const List<MssqlManagedInstancePrincipalType> values = [
    application,
    group,
    user,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_mssql_managed_instance` (derived from provider schema).
@immutable
final class MssqlManagedInstanceIdentity {
  const MssqlManagedInstanceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_mssql_managed_instance`.
final class AzurermMssqlManagedInstance extends Resource {
  static const String tfType = 'azurerm_mssql_managed_instance';

  AzurermMssqlManagedInstance(
    super.localName, {
    TfArg<String>? administratorLogin,
    Sensitive<String>? administratorLoginPassword,
    TfArg<String>? collation,
    MssqlManagedInstanceDatabaseFormat? databaseFormat,
    TfArg<String>? dnsZonePartnerId,
    TfArg<bool>? generalPurposeV2Enabled,
    MssqlManagedInstanceHybridSecondaryUsage? hybridSecondaryUsage,
    required MssqlManagedInstanceLicenseType licenseType,
    required TfArg<String> location,
    TfArg<String>? maintenanceConfigurationName,
    MssqlManagedInstanceMinimumTlsVersion? minimumTlsVersion,
    required TfArg<String> name,
    MssqlManagedInstanceProxyOverride? proxyOverride,
    TfArg<bool>? publicDataEndpointEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    MssqlManagedInstanceServicePrincipalType? servicePrincipalType,
    required MssqlManagedInstanceSkuName skuName,
    MssqlManagedInstanceStorageAccountType? storageAccountType,
    TfArg<num>? storageIops,
    required TfArg<num> storageSizeInGb,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timezoneId,
    required TfArg<num> vcores,
    TfArg<bool>? zoneRedundantEnabled,
    MssqlManagedInstanceAzureActiveDirectoryAdministrator?
    azureActiveDirectoryAdministrator,
    MssqlManagedInstanceIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'administrator_login': ?administratorLogin,
           'administrator_login_password': ?administratorLoginPassword,
           'collation': ?collation,
           'database_format': ?databaseFormat,
           'dns_zone_partner_id': ?dnsZonePartnerId,
           'general_purpose_v2_enabled': ?generalPurposeV2Enabled,
           'hybrid_secondary_usage': ?hybridSecondaryUsage,
           'license_type': licenseType,
           'location': location,
           'maintenance_configuration_name': ?maintenanceConfigurationName,
           'minimum_tls_version': ?minimumTlsVersion,
           'name': name,
           'proxy_override': ?proxyOverride,
           'public_data_endpoint_enabled': ?publicDataEndpointEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_principal_type': ?servicePrincipalType,
           'sku_name': skuName,
           'storage_account_type': ?storageAccountType,
           'storage_iops': ?storageIops,
           'storage_size_in_gb': storageSizeInGb,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
           'timezone_id': ?timezoneId,
           'vcores': vcores,
           'zone_redundant_enabled': ?zoneRedundantEnabled,
           if (azureActiveDirectoryAdministrator != null)
             'azure_active_directory_administrator': TfArg.literal(
               azureActiveDirectoryAdministrator.encode(),
             ),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlManagedInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlManagedInstance>`.
  RefTo<AzurermMssqlManagedInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_zone` attribute.
  TfRef<String> get dnsZone => TfRef.attribute<String>(this, 'dns_zone');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `administrator_login` attribute.
  TfRef<String> get administratorLogin =>
      TfRef.attribute<String>(this, 'administrator_login');

  /// Reference to `administrator_login_password` attribute.
  TfRef<String> get administratorLoginPassword =>
      TfRef.attribute<String>(this, 'administrator_login_password');

  /// Reference to `collation` attribute.
  TfRef<String> get collation => TfRef.attribute<String>(this, 'collation');

  /// Reference to `database_format` attribute.
  TfRef<String> get databaseFormat =>
      TfRef.attribute<String>(this, 'database_format');

  /// Reference to `dns_zone_partner_id` attribute.
  TfRef<String> get dnsZonePartnerId =>
      TfRef.attribute<String>(this, 'dns_zone_partner_id');

  /// Reference to `general_purpose_v2_enabled` attribute.
  TfRef<bool> get generalPurposeV2Enabled =>
      TfRef.attribute<bool>(this, 'general_purpose_v2_enabled');

  /// Reference to `hybrid_secondary_usage` attribute.
  TfRef<String> get hybridSecondaryUsage =>
      TfRef.attribute<String>(this, 'hybrid_secondary_usage');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maintenance_configuration_name` attribute.
  TfRef<String> get maintenanceConfigurationName =>
      TfRef.attribute<String>(this, 'maintenance_configuration_name');

  /// Reference to `minimum_tls_version` attribute.
  TfRef<String> get minimumTlsVersion =>
      TfRef.attribute<String>(this, 'minimum_tls_version');

  /// Reference to `proxy_override` attribute.
  TfRef<String> get proxyOverride =>
      TfRef.attribute<String>(this, 'proxy_override');

  /// Reference to `public_data_endpoint_enabled` attribute.
  TfRef<bool> get publicDataEndpointEnabled =>
      TfRef.attribute<bool>(this, 'public_data_endpoint_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_principal_type` attribute.
  TfRef<String> get servicePrincipalType =>
      TfRef.attribute<String>(this, 'service_principal_type');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage_account_type` attribute.
  TfRef<String> get storageAccountType =>
      TfRef.attribute<String>(this, 'storage_account_type');

  /// Reference to `storage_iops` attribute.
  TfRef<num> get storageIops => TfRef.attribute<num>(this, 'storage_iops');

  /// Reference to `storage_size_in_gb` attribute.
  TfRef<num> get storageSizeInGb =>
      TfRef.attribute<num>(this, 'storage_size_in_gb');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timezone_id` attribute.
  TfRef<String> get timezoneId => TfRef.attribute<String>(this, 'timezone_id');

  /// Reference to `vcores` attribute.
  TfRef<num> get vcores => TfRef.attribute<num>(this, 'vcores');

  /// Reference to `zone_redundant_enabled` attribute.
  TfRef<bool> get zoneRedundantEnabled =>
      TfRef.attribute<bool>(this, 'zone_redundant_enabled');
}
