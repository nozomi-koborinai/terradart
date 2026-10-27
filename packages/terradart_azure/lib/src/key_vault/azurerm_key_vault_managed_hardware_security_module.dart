// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module`.
const Set<String> _azurermKeyVaultManagedHardwareSecurityModuleSensitive =
    <String>{'security_domain_encrypted_data'};

/// Typed helper for the `network_acls` block of
/// `azurerm_key_vault_managed_hardware_security_module` (derived from provider schema).
@immutable
final class KeyVaultManagedHardwareSecurityModuleNetworkAcls {
  const KeyVaultManagedHardwareSecurityModuleNetworkAcls({
    required this.bypass,
    required this.defaultAction,
  });

  final KeyVaultManagedHardwareSecurityModuleBypass bypass;

  final KeyVaultManagedHardwareSecurityModuleDefaultAction defaultAction;

  @internal
  Map<String, Object?> encode() => {
    'bypass': bypass.toTfJson(),
    'default_action': defaultAction.toTfJson(),
  };
}

/// `bypass` — derived from the provider schema description.
extension type const KeyVaultManagedHardwareSecurityModuleBypass._(
  TfArg<String> _
) implements TfArg<String> {
  KeyVaultManagedHardwareSecurityModuleBypass.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultManagedHardwareSecurityModuleBypass.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultManagedHardwareSecurityModuleBypass.arg(TfArg<String> arg)
    : this._(arg);

  static const azureservices = KeyVaultManagedHardwareSecurityModuleBypass._(
    TfArgLiteral('AzureServices'),
  );
  static const none = KeyVaultManagedHardwareSecurityModuleBypass._(
    TfArgLiteral('None'),
  );

  static const List<KeyVaultManagedHardwareSecurityModuleBypass> values = [
    azureservices,
    none,
  ];
}

/// `default_action` — derived from the provider schema description.
extension type const KeyVaultManagedHardwareSecurityModuleDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  KeyVaultManagedHardwareSecurityModuleDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultManagedHardwareSecurityModuleDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultManagedHardwareSecurityModuleDefaultAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allow = KeyVaultManagedHardwareSecurityModuleDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = KeyVaultManagedHardwareSecurityModuleDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<KeyVaultManagedHardwareSecurityModuleDefaultAction> values =
      [allow, deny];
}

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module`.
final class AzurermKeyVaultManagedHardwareSecurityModule extends Resource {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module';

  AzurermKeyVaultManagedHardwareSecurityModule(
    super.localName, {
    required TfArg<List<String>> adminObjectIds,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<bool>? purgeProtectionEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<List<String>>? securityDomainKeyVaultCertificateIds,
    TfArg<num>? securityDomainQuorum,
    required TfArg<String> skuName,
    TfArg<num>? softDeleteRetentionDays,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> tenantId,
    KeyVaultManagedHardwareSecurityModuleNetworkAcls? networkAcls,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_object_ids': adminObjectIds,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'purge_protection_enabled': ?purgeProtectionEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'security_domain_key_vault_certificate_ids':
               ?securityDomainKeyVaultCertificateIds,
           'security_domain_quorum': ?securityDomainQuorum,
           'sku_name': skuName,
           'soft_delete_retention_days': ?softDeleteRetentionDays,
           'tags': ?tags,
           'tenant_id': tenantId,
           if (networkAcls != null)
             'network_acls': TfArg.literal(networkAcls.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultManagedHardwareSecurityModule>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hsm_uri` attribute.
  TfRef<String> get hsmUri => TfRef.attribute<String>(this, 'hsm_uri');

  /// Reference to `security_domain_encrypted_data` attribute.
  TfRef<String> get securityDomainEncryptedData =>
      TfRef.attribute<String>(this, 'security_domain_encrypted_data');

  /// Reference to `admin_object_ids` attribute.
  TfRef<List<String>> get adminObjectIds =>
      TfRef.attribute<List<String>>(this, 'admin_object_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `purge_protection_enabled` attribute.
  TfRef<bool> get purgeProtectionEnabled =>
      TfRef.attribute<bool>(this, 'purge_protection_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `security_domain_key_vault_certificate_ids` attribute.
  TfRef<List<String>> get securityDomainKeyVaultCertificateIds =>
      TfRef.attribute<List<String>>(
        this,
        'security_domain_key_vault_certificate_ids',
      );

  /// Reference to `security_domain_quorum` attribute.
  TfRef<num> get securityDomainQuorum =>
      TfRef.attribute<num>(this, 'security_domain_quorum');

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
