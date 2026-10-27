// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mssql_virtual_machine_group`.
const Set<String> _azurermMssqlVirtualMachineGroupSensitive = <String>{
  'wsfc_domain_profile.storage_account_primary_key',
};

/// Mssql Virtual Machine Group Sql Image enum for `sql_image_sku`.
extension type const MssqlVirtualMachineGroupSqlImageSku._(TfArg<String> _)
    implements TfArg<String> {
  MssqlVirtualMachineGroupSqlImageSku.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineGroupSqlImageSku.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineGroupSqlImageSku.arg(TfArg<String> arg)
    : this._(arg);

  static const developer = MssqlVirtualMachineGroupSqlImageSku._(
    TfArgLiteral('Developer'),
  );
  static const enterprise = MssqlVirtualMachineGroupSqlImageSku._(
    TfArgLiteral('Enterprise'),
  );

  static const List<MssqlVirtualMachineGroupSqlImageSku> values = [
    developer,
    enterprise,
  ];
}

/// Typed helper for the `wsfc_domain_profile` block of
/// `azurerm_mssql_virtual_machine_group` (derived from provider schema).
@immutable
final class MssqlVirtualMachineGroupWsfcDomainProfile {
  const MssqlVirtualMachineGroupWsfcDomainProfile({
    this.clusterBootstrapAccountName,
    this.clusterOperatorAccountName,
    required this.clusterSubnetType,
    required this.fqdn,
    this.organizationalUnitPath,
    this.sqlServiceAccountName,
    this.storageAccountPrimaryKey,
    this.storageAccountUrl,
  });

  final TfArg<String>? clusterBootstrapAccountName;

  final TfArg<String>? clusterOperatorAccountName;

  final MssqlVirtualMachineGroupClusterSubnetType clusterSubnetType;

  final TfArg<String> fqdn;

  final TfArg<String>? organizationalUnitPath;

  final TfArg<String>? sqlServiceAccountName;

  final Sensitive<String>? storageAccountPrimaryKey;

  final TfArg<String>? storageAccountUrl;

  @internal
  Map<String, Object?> encode() => {
    'cluster_bootstrap_account_name': ?clusterBootstrapAccountName?.toTfJson(),
    'cluster_operator_account_name': ?clusterOperatorAccountName?.toTfJson(),
    'cluster_subnet_type': clusterSubnetType.toTfJson(),
    'fqdn': fqdn.toTfJson(),
    'organizational_unit_path': ?organizationalUnitPath?.toTfJson(),
    'sql_service_account_name': ?sqlServiceAccountName?.toTfJson(),
    'storage_account_primary_key': ?storageAccountPrimaryKey?.toTfJson(),
    'storage_account_url': ?storageAccountUrl?.toTfJson(),
  };
}

/// `cluster_subnet_type` — derived from the provider schema description.
extension type const MssqlVirtualMachineGroupClusterSubnetType._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlVirtualMachineGroupClusterSubnetType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlVirtualMachineGroupClusterSubnetType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlVirtualMachineGroupClusterSubnetType.arg(TfArg<String> arg)
    : this._(arg);

  static const multisubnet = MssqlVirtualMachineGroupClusterSubnetType._(
    TfArgLiteral('MultiSubnet'),
  );
  static const singlesubnet = MssqlVirtualMachineGroupClusterSubnetType._(
    TfArgLiteral('SingleSubnet'),
  );

  static const List<MssqlVirtualMachineGroupClusterSubnetType> values = [
    multisubnet,
    singlesubnet,
  ];
}

/// Factory wrapper for `azurerm_mssql_virtual_machine_group`.
final class AzurermMssqlVirtualMachineGroup extends Resource {
  static const String tfType = 'azurerm_mssql_virtual_machine_group';

  AzurermMssqlVirtualMachineGroup(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sqlImageOffer,
    required MssqlVirtualMachineGroupSqlImageSku sqlImageSku,
    TfArg<Map<String, String>>? tags,
    required MssqlVirtualMachineGroupWsfcDomainProfile wsfcDomainProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sql_image_offer': sqlImageOffer,
           'sql_image_sku': sqlImageSku,
           'tags': ?tags,
           'wsfc_domain_profile': TfArg.literal(wsfcDomainProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlVirtualMachineGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlVirtualMachineGroup>`.
  RefTo<AzurermMssqlVirtualMachineGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sql_image_offer` attribute.
  TfRef<String> get sqlImageOffer =>
      TfRef.attribute<String>(this, 'sql_image_offer');

  /// Reference to `sql_image_sku` attribute.
  TfRef<String> get sqlImageSku =>
      TfRef.attribute<String>(this, 'sql_image_sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
