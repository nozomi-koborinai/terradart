// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager key vault resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_key_vault.dart' show DataAzurermKeyVault;
export 'src/data/azurerm_key_vault_access_policy.dart'
    show DataAzurermKeyVaultAccessPolicy, DataKeyVaultAccessPolicyName;
export 'src/data/azurerm_key_vault_certificate.dart'
    show DataAzurermKeyVaultCertificate;
export 'src/data/azurerm_key_vault_certificate_data.dart'
    show DataAzurermKeyVaultCertificateData;
export 'src/data/azurerm_key_vault_certificate_issuer.dart'
    show DataAzurermKeyVaultCertificateIssuer;
export 'src/data/azurerm_key_vault_certificates.dart'
    show DataAzurermKeyVaultCertificates;
export 'src/data/azurerm_key_vault_encrypted_value.dart'
    show DataAzurermKeyVaultEncryptedValue, DataKeyVaultEncryptedValueAlgorithm;
export 'src/data/azurerm_key_vault_key.dart' show DataAzurermKeyVaultKey;
export 'src/data/azurerm_key_vault_managed_hardware_security_module.dart'
    show DataAzurermKeyVaultManagedHardwareSecurityModule;
export 'src/data/azurerm_key_vault_managed_hardware_security_module_key.dart'
    show DataAzurermKeyVaultManagedHardwareSecurityModuleKey;
export 'src/data/azurerm_key_vault_managed_hardware_security_module_role_definition.dart'
    show DataAzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition;
export 'src/data/azurerm_key_vault_secret.dart' show DataAzurermKeyVaultSecret;
export 'src/data/azurerm_key_vault_secrets.dart'
    show DataAzurermKeyVaultSecrets;
export 'src/key_vault/azurerm_dedicated_hardware_security_module.dart'
    show
        AzurermDedicatedHardwareSecurityModule,
        DedicatedHardwareSecurityModuleManagementNetworkProfile,
        DedicatedHardwareSecurityModuleNetworkProfile,
        DedicatedHardwareSecurityModuleSkuName,
        DedicatedHardwareSecurityModuleStampId;
export 'src/key_vault/azurerm_key_vault.dart'
    show
        AzurermKeyVault,
        KeyVaultBypass,
        KeyVaultDefaultAction,
        KeyVaultNetworkAcls,
        KeyVaultSkuName;
export 'src/key_vault/azurerm_key_vault_access_policy.dart'
    show
        AzurermKeyVaultAccessPolicy,
        KeyVaultAccessPolicyCertificatePermissions,
        KeyVaultAccessPolicyKeyPermissions,
        KeyVaultAccessPolicySecretPermissions,
        KeyVaultAccessPolicyStoragePermissions;
export 'src/key_vault/azurerm_key_vault_certificate.dart'
    show
        AzurermKeyVaultCertificate,
        KeyVaultCertificate,
        KeyVaultCertificateAction,
        KeyVaultCertificateIssuerParameters,
        KeyVaultCertificateKeyProperties,
        KeyVaultCertificateKeyType,
        KeyVaultCertificateLifetimeAction,
        KeyVaultCertificatePolicy,
        KeyVaultCertificateSecretProperties,
        KeyVaultCertificateSubjectAlternativeNames,
        KeyVaultCertificateTrigger,
        KeyVaultCertificateX509CertificateProperties;
export 'src/key_vault/azurerm_key_vault_certificate_contacts.dart'
    show AzurermKeyVaultCertificateContacts, KeyVaultCertificateContactsContact;
export 'src/key_vault/azurerm_key_vault_certificate_issuer.dart'
    show
        AzurermKeyVaultCertificateIssuer,
        KeyVaultCertificateIssuerAdmin,
        KeyVaultCertificateIssuerProviderName;
export 'src/key_vault/azurerm_key_vault_key.dart'
    show
        AzurermKeyVaultKey,
        KeyVaultKeyAutomatic,
        KeyVaultKeyCurve,
        KeyVaultKeyOpts,
        KeyVaultKeyParameter,
        KeyVaultKeyParameterCurve,
        KeyVaultKeyParameterKeySize,
        KeyVaultKeyReleasePolicy,
        KeyVaultKeyRotationPolicy,
        KeyVaultKeyType;
export 'src/key_vault/azurerm_key_vault_managed_hardware_security_module.dart'
    show
        AzurermKeyVaultManagedHardwareSecurityModule,
        KeyVaultManagedHardwareSecurityModuleBypass,
        KeyVaultManagedHardwareSecurityModuleDefaultAction,
        KeyVaultManagedHardwareSecurityModuleNetworkAcls,
        KeyVaultManagedHardwareSecurityModuleSkuName;
export 'src/key_vault/azurerm_key_vault_managed_hardware_security_module_key.dart'
    show
        AzurermKeyVaultManagedHardwareSecurityModuleKey,
        KeyVaultManagedHardwareSecurityModuleKeyCurve,
        KeyVaultManagedHardwareSecurityModuleKeyOpts,
        KeyVaultManagedHardwareSecurityModuleKeyType;
export 'src/key_vault/azurerm_key_vault_managed_hardware_security_module_key_rotation_policy.dart'
    show
        AzurermKeyVaultManagedHardwareSecurityModuleKeyRotationPolicy,
        KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTime,
        KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTimeAfterCreation,
        KeyVaultManagedHardwareSecurityModuleKeyRotationPolicyTimeBeforeExpiry;
export 'src/key_vault/azurerm_key_vault_managed_hardware_security_module_role_assignment.dart'
    show AzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment;
export 'src/key_vault/azurerm_key_vault_managed_hardware_security_module_role_definition.dart'
    show
        AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition,
        KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions,
        KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions,
        KeyVaultManagedHardwareSecurityModuleRoleDefinitionPermission;
export 'src/key_vault/azurerm_key_vault_managed_storage_account.dart'
    show AzurermKeyVaultManagedStorageAccount, KeyVaultManagedStorageAccountKey;
export 'src/key_vault/azurerm_key_vault_managed_storage_account_sas_token_definition.dart'
    show
        AzurermKeyVaultManagedStorageAccountSasTokenDefinition,
        KeyVaultManagedStorageAccountSasTokenDefinitionSasType;
export 'src/key_vault/azurerm_key_vault_secret.dart'
    show
        AzurermKeyVaultSecret,
        KeyVaultSecretValue,
        KeyVaultSecretValueChoice,
        KeyVaultSecretValueWo;
