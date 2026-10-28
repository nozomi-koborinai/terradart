// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_databricks_workspace`.
const Set<String> _azurermDatabricksWorkspaceSensitive = <String>{};

/// Databricks Workspace Network Security Group Rules enum for `network_security_group_rules_required`.
extension type const DatabricksWorkspaceNetworkSecurityGroupRulesRequired._(
  TfArg<String> _
) implements TfArg<String> {
  DatabricksWorkspaceNetworkSecurityGroupRulesRequired.variable(String name)
    : this._(TfArg.variable(name));
  DatabricksWorkspaceNetworkSecurityGroupRulesRequired.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DatabricksWorkspaceNetworkSecurityGroupRulesRequired.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allrules =
      DatabricksWorkspaceNetworkSecurityGroupRulesRequired._(
        TfArgLiteral('AllRules'),
      );
  static const noazuredatabricksrules =
      DatabricksWorkspaceNetworkSecurityGroupRulesRequired._(
        TfArgLiteral('NoAzureDatabricksRules'),
      );
  static const noazureservicerules =
      DatabricksWorkspaceNetworkSecurityGroupRulesRequired._(
        TfArgLiteral('NoAzureServiceRules'),
      );

  static const List<DatabricksWorkspaceNetworkSecurityGroupRulesRequired>
  values = [allrules, noazuredatabricksrules, noazureservicerules];
}

/// Databricks Workspace enum for `sku`.
extension type const DatabricksWorkspaceSku._(TfArg<String> _)
    implements TfArg<String> {
  DatabricksWorkspaceSku.variable(String name) : this._(TfArg.variable(name));
  DatabricksWorkspaceSku.expression(String template)
    : this._(TfArg.expression(template));
  const DatabricksWorkspaceSku.arg(TfArg<String> arg) : this._(arg);

  static const standard = DatabricksWorkspaceSku._(TfArgLiteral('standard'));
  static const premium = DatabricksWorkspaceSku._(TfArgLiteral('premium'));
  static const trial = DatabricksWorkspaceSku._(TfArgLiteral('trial'));

  static const List<DatabricksWorkspaceSku> values = [standard, premium, trial];
}

/// Typed helper for the `custom_parameters` block of
/// `azurerm_databricks_workspace` (derived from provider schema).
@immutable
final class DatabricksWorkspaceCustomParameters {
  const DatabricksWorkspaceCustomParameters({
    this.machineLearningWorkspaceId,
    this.natGatewayName,
    this.noPublicIp,
    this.privateSubnetName,
    this.privateSubnetNetworkSecurityGroupAssociationId,
    this.publicIpName,
    this.publicSubnetName,
    this.publicSubnetNetworkSecurityGroupAssociationId,
    this.storageAccountName,
    this.storageAccountSkuName,
    this.virtualNetworkId,
    this.vnetAddressPrefix,
  });

  final TfArg<String>? machineLearningWorkspaceId;

  final TfArg<String>? natGatewayName;

  final TfArg<bool>? noPublicIp;

  final TfArg<String>? privateSubnetName;

  final TfArg<String>? privateSubnetNetworkSecurityGroupAssociationId;

  final TfArg<String>? publicIpName;

  final TfArg<String>? publicSubnetName;

  final TfArg<String>? publicSubnetNetworkSecurityGroupAssociationId;

  final TfArg<String>? storageAccountName;

  final TfArg<String>? storageAccountSkuName;

  final TfArg<String>? virtualNetworkId;

  final TfArg<String>? vnetAddressPrefix;

  @internal
  Map<String, Object?> encode() => {
    'machine_learning_workspace_id': ?machineLearningWorkspaceId?.toTfJson(),
    'nat_gateway_name': ?natGatewayName?.toTfJson(),
    'no_public_ip': ?noPublicIp?.toTfJson(),
    'private_subnet_name': ?privateSubnetName?.toTfJson(),
    'private_subnet_network_security_group_association_id':
        ?privateSubnetNetworkSecurityGroupAssociationId?.toTfJson(),
    'public_ip_name': ?publicIpName?.toTfJson(),
    'public_subnet_name': ?publicSubnetName?.toTfJson(),
    'public_subnet_network_security_group_association_id':
        ?publicSubnetNetworkSecurityGroupAssociationId?.toTfJson(),
    'storage_account_name': ?storageAccountName?.toTfJson(),
    'storage_account_sku_name': ?storageAccountSkuName?.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
    'vnet_address_prefix': ?vnetAddressPrefix?.toTfJson(),
  };
}

/// Typed helper for the `enhanced_security_compliance` block of
/// `azurerm_databricks_workspace` (derived from provider schema).
@immutable
final class DatabricksWorkspaceEnhancedSecurityCompliance {
  const DatabricksWorkspaceEnhancedSecurityCompliance({
    this.automaticClusterUpdateEnabled,
    this.complianceSecurityProfileEnabled,
    this.complianceSecurityProfileStandards,
    this.enhancedSecurityMonitoringEnabled,
  });

  final TfArg<bool>? automaticClusterUpdateEnabled;

  final TfArg<bool>? complianceSecurityProfileEnabled;

  final List<DatabricksWorkspaceComplianceSecurityProfileStandards>?
  complianceSecurityProfileStandards;

  final TfArg<bool>? enhancedSecurityMonitoringEnabled;

  @internal
  Map<String, Object?> encode() => {
    'automatic_cluster_update_enabled': ?automaticClusterUpdateEnabled
        ?.toTfJson(),
    'compliance_security_profile_enabled': ?complianceSecurityProfileEnabled
        ?.toTfJson(),
    if (complianceSecurityProfileStandards != null)
      'compliance_security_profile_standards': [
        for (final e in complianceSecurityProfileStandards!) e.toTfJson(),
      ],
    'enhanced_security_monitoring_enabled': ?enhancedSecurityMonitoringEnabled
        ?.toTfJson(),
  };
}

/// `compliance_security_profile_standards` — derived from the provider schema description.
extension type const DatabricksWorkspaceComplianceSecurityProfileStandards._(
  TfArg<String> _
) implements TfArg<String> {
  DatabricksWorkspaceComplianceSecurityProfileStandards.variable(String name)
    : this._(TfArg.variable(name));
  DatabricksWorkspaceComplianceSecurityProfileStandards.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DatabricksWorkspaceComplianceSecurityProfileStandards.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const hipaa = DatabricksWorkspaceComplianceSecurityProfileStandards._(
    TfArgLiteral('HIPAA'),
  );
  static const pciDss = DatabricksWorkspaceComplianceSecurityProfileStandards._(
    TfArgLiteral('PCI_DSS'),
  );
  static const fedrampModerate =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('FEDRAMP_MODERATE'),
      );
  static const irapProtected =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('IRAP_PROTECTED'),
      );
  static const fedrampHigh =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('FEDRAMP_HIGH'),
      );
  static const fedrampIl5 =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('FEDRAMP_IL5'),
      );
  static const itarEar =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('ITAR_EAR'),
      );
  static const cyberEssentialPlus =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('CYBER_ESSENTIAL_PLUS'),
      );
  static const canadaProtectedB =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('CANADA_PROTECTED_B'),
      );
  static const ismap = DatabricksWorkspaceComplianceSecurityProfileStandards._(
    TfArgLiteral('ISMAP'),
  );
  static const hitrust =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('HITRUST'),
      );
  static const kFsi = DatabricksWorkspaceComplianceSecurityProfileStandards._(
    TfArgLiteral('K_FSI'),
  );
  static const germanyC5 =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('GERMANY_C5'),
      );
  static const germanyTisax =
      DatabricksWorkspaceComplianceSecurityProfileStandards._(
        TfArgLiteral('GERMANY_TISAX'),
      );

  static const List<DatabricksWorkspaceComplianceSecurityProfileStandards>
  values = [
    hipaa,
    pciDss,
    fedrampModerate,
    irapProtected,
    fedrampHigh,
    fedrampIl5,
    itarEar,
    cyberEssentialPlus,
    canadaProtectedB,
    ismap,
    hitrust,
    kFsi,
    germanyC5,
    germanyTisax,
  ];
}

/// Factory wrapper for `azurerm_databricks_workspace`.
final class AzurermDatabricksWorkspace extends Resource {
  static const String tfType = 'azurerm_databricks_workspace';

  AzurermDatabricksWorkspace(
    super.localName, {
    TfArg<String>? accessConnectorId,
    TfArg<bool>? customerManagedKeyEnabled,
    TfArg<bool>? defaultStorageFirewallEnabled,
    TfArg<bool>? infrastructureEncryptionEnabled,
    TfArg<String>? loadBalancerBackendAddressPoolId,
    required TfArg<String> location,
    TfArg<String>? managedDiskCmkKeyVaultId,
    TfArg<String>? managedDiskCmkKeyVaultKeyId,
    TfArg<bool>? managedDiskCmkRotationToLatestVersionEnabled,
    TfArg<String>? managedResourceGroupName,
    TfArg<String>? managedServicesCmkKeyVaultId,
    TfArg<String>? managedServicesCmkKeyVaultKeyId,
    required TfArg<String> name,
    DatabricksWorkspaceNetworkSecurityGroupRulesRequired?
    networkSecurityGroupRulesRequired,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required DatabricksWorkspaceSku sku,
    TfArg<Map<String, String>>? tags,
    DatabricksWorkspaceCustomParameters? customParameters,
    DatabricksWorkspaceEnhancedSecurityCompliance? enhancedSecurityCompliance,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_connector_id': ?accessConnectorId,
           'customer_managed_key_enabled': ?customerManagedKeyEnabled,
           'default_storage_firewall_enabled': ?defaultStorageFirewallEnabled,
           'infrastructure_encryption_enabled':
               ?infrastructureEncryptionEnabled,
           'load_balancer_backend_address_pool_id':
               ?loadBalancerBackendAddressPoolId,
           'location': location,
           'managed_disk_cmk_key_vault_id': ?managedDiskCmkKeyVaultId,
           'managed_disk_cmk_key_vault_key_id': ?managedDiskCmkKeyVaultKeyId,
           'managed_disk_cmk_rotation_to_latest_version_enabled':
               ?managedDiskCmkRotationToLatestVersionEnabled,
           'managed_resource_group_name': ?managedResourceGroupName,
           'managed_services_cmk_key_vault_id': ?managedServicesCmkKeyVaultId,
           'managed_services_cmk_key_vault_key_id':
               ?managedServicesCmkKeyVaultKeyId,
           'name': name,
           'network_security_group_rules_required':
               ?networkSecurityGroupRulesRequired,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
           if (customParameters != null)
             'custom_parameters': TfArg.literal(customParameters.encode()),
           if (enhancedSecurityCompliance != null)
             'enhanced_security_compliance': TfArg.literal(
               enhancedSecurityCompliance.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDatabricksWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDatabricksWorkspace>`.
  RefTo<AzurermDatabricksWorkspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disk_encryption_set_id` attribute.
  TfRef<String> get diskEncryptionSetId =>
      TfRef.attribute<String>(this, 'disk_encryption_set_id');

  /// Reference to `managed_disk_identity` attribute.
  TfRef<List<Map<String, Object?>>> get managedDiskIdentity =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'managed_disk_identity',
      );

  /// Reference to `managed_resource_group_id` attribute.
  TfRef<String> get managedResourceGroupId =>
      TfRef.attribute<String>(this, 'managed_resource_group_id');

  /// Reference to `storage_account_identity` attribute.
  TfRef<List<Map<String, Object?>>> get storageAccountIdentity =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'storage_account_identity',
      );

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');

  /// Reference to `workspace_url` attribute.
  TfRef<String> get workspaceUrl =>
      TfRef.attribute<String>(this, 'workspace_url');

  /// Reference to `access_connector_id` attribute.
  TfRef<String> get accessConnectorId =>
      TfRef.attribute<String>(this, 'access_connector_id');

  /// Reference to `customer_managed_key_enabled` attribute.
  TfRef<bool> get customerManagedKeyEnabled =>
      TfRef.attribute<bool>(this, 'customer_managed_key_enabled');

  /// Reference to `default_storage_firewall_enabled` attribute.
  TfRef<bool> get defaultStorageFirewallEnabled =>
      TfRef.attribute<bool>(this, 'default_storage_firewall_enabled');

  /// Reference to `infrastructure_encryption_enabled` attribute.
  TfRef<bool> get infrastructureEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'infrastructure_encryption_enabled');

  /// Reference to `load_balancer_backend_address_pool_id` attribute.
  TfRef<String> get loadBalancerBackendAddressPoolId =>
      TfRef.attribute<String>(this, 'load_balancer_backend_address_pool_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_disk_cmk_key_vault_id` attribute.
  TfRef<String> get managedDiskCmkKeyVaultId =>
      TfRef.attribute<String>(this, 'managed_disk_cmk_key_vault_id');

  /// Reference to `managed_disk_cmk_key_vault_key_id` attribute.
  TfRef<String> get managedDiskCmkKeyVaultKeyId =>
      TfRef.attribute<String>(this, 'managed_disk_cmk_key_vault_key_id');

  /// Reference to `managed_disk_cmk_rotation_to_latest_version_enabled` attribute.
  TfRef<bool> get managedDiskCmkRotationToLatestVersionEnabled =>
      TfRef.attribute<bool>(
        this,
        'managed_disk_cmk_rotation_to_latest_version_enabled',
      );

  /// Reference to `managed_resource_group_name` attribute.
  TfRef<String> get managedResourceGroupName =>
      TfRef.attribute<String>(this, 'managed_resource_group_name');

  /// Reference to `managed_services_cmk_key_vault_id` attribute.
  TfRef<String> get managedServicesCmkKeyVaultId =>
      TfRef.attribute<String>(this, 'managed_services_cmk_key_vault_id');

  /// Reference to `managed_services_cmk_key_vault_key_id` attribute.
  TfRef<String> get managedServicesCmkKeyVaultKeyId =>
      TfRef.attribute<String>(this, 'managed_services_cmk_key_vault_key_id');

  /// Reference to `network_security_group_rules_required` attribute.
  TfRef<String> get networkSecurityGroupRulesRequired =>
      TfRef.attribute<String>(this, 'network_security_group_rules_required');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
