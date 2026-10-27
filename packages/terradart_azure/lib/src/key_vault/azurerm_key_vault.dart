// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_key_vault`.
const Set<String> _azurermKeyVaultSensitive = <String>{};

/// Key Vault Sku enum for `sku_name`.
extension type const KeyVaultSkuName._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultSkuName.variable(String name) : this._(TfArg.variable(name));
  KeyVaultSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultSkuName.arg(TfArg<String> arg) : this._(arg);

  static const premium = KeyVaultSkuName._(TfArgLiteral('premium'));
  static const standard = KeyVaultSkuName._(TfArgLiteral('standard'));

  static const List<KeyVaultSkuName> values = [premium, standard];
}

/// Typed helper for the `network_acls` block of
/// `azurerm_key_vault` (derived from provider schema).
@immutable
final class KeyVaultNetworkAcls {
  const KeyVaultNetworkAcls({
    required this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.virtualNetworkSubnetIds,
  });

  final KeyVaultBypass bypass;

  final KeyVaultDefaultAction defaultAction;

  final TfArg<List<String>>? ipRules;

  final TfArg<List<String>>? virtualNetworkSubnetIds;

  @internal
  Map<String, Object?> encode() => {
    'bypass': bypass.toTfJson(),
    'default_action': defaultAction.toTfJson(),
    'ip_rules': ?ipRules?.toTfJson(),
    'virtual_network_subnet_ids': ?virtualNetworkSubnetIds?.toTfJson(),
  };
}

/// `bypass` — derived from the provider schema description.
extension type const KeyVaultBypass._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultBypass.variable(String name) : this._(TfArg.variable(name));
  KeyVaultBypass.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultBypass.arg(TfArg<String> arg) : this._(arg);

  static const azureservices = KeyVaultBypass._(TfArgLiteral('AzureServices'));
  static const none = KeyVaultBypass._(TfArgLiteral('None'));

  static const List<KeyVaultBypass> values = [azureservices, none];
}

/// `default_action` — derived from the provider schema description.
extension type const KeyVaultDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultDefaultAction.variable(String name) : this._(TfArg.variable(name));
  KeyVaultDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultDefaultAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = KeyVaultDefaultAction._(TfArgLiteral('Allow'));
  static const deny = KeyVaultDefaultAction._(TfArgLiteral('Deny'));

  static const List<KeyVaultDefaultAction> values = [allow, deny];
}

/// Factory wrapper for `azurerm_key_vault`.
final class AzurermKeyVault extends Resource {
  static const String tfType = 'azurerm_key_vault';

  AzurermKeyVault(
    super.localName, {
    TfArg<List<Map<String, Object?>>>? accessPolicy,
    TfArg<bool>? enabledForDeployment,
    TfArg<bool>? enabledForDiskEncryption,
    TfArg<bool>? enabledForTemplateDeployment,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<bool>? purgeProtectionEnabled,
    required TfArg<bool> rbacAuthorizationEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required KeyVaultSkuName skuName,
    TfArg<num>? softDeleteRetentionDays,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> tenantId,
    KeyVaultNetworkAcls? networkAcls,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_policy': ?accessPolicy,
           'enabled_for_deployment': ?enabledForDeployment,
           'enabled_for_disk_encryption': ?enabledForDiskEncryption,
           'enabled_for_template_deployment': ?enabledForTemplateDeployment,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'purge_protection_enabled': ?purgeProtectionEnabled,
           'rbac_authorization_enabled': rbacAuthorizationEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'soft_delete_retention_days': ?softDeleteRetentionDays,
           'tags': ?tags,
           'tenant_id': tenantId,
           if (networkAcls != null)
             'network_acls': TfArg.literal(networkAcls.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVault>`.
  RefTo<AzurermKeyVault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `vault_uri` attribute.
  TfRef<String> get vaultUri => TfRef.attribute<String>(this, 'vault_uri');

  /// Reference to `access_policy` attribute.
  TfRef<List<Map<String, Object?>>> get accessPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_policy');

  /// Reference to `enabled_for_deployment` attribute.
  TfRef<bool> get enabledForDeployment =>
      TfRef.attribute<bool>(this, 'enabled_for_deployment');

  /// Reference to `enabled_for_disk_encryption` attribute.
  TfRef<bool> get enabledForDiskEncryption =>
      TfRef.attribute<bool>(this, 'enabled_for_disk_encryption');

  /// Reference to `enabled_for_template_deployment` attribute.
  TfRef<bool> get enabledForTemplateDeployment =>
      TfRef.attribute<bool>(this, 'enabled_for_template_deployment');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `purge_protection_enabled` attribute.
  TfRef<bool> get purgeProtectionEnabled =>
      TfRef.attribute<bool>(this, 'purge_protection_enabled');

  /// Reference to `rbac_authorization_enabled` attribute.
  TfRef<bool> get rbacAuthorizationEnabled =>
      TfRef.attribute<bool>(this, 'rbac_authorization_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `soft_delete_retention_days` attribute.
  TfRef<num> get softDeleteRetentionDays =>
      TfRef.attribute<num>(this, 'soft_delete_retention_days');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
