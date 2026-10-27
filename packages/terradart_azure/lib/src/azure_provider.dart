import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '_provider_version.g.dart';

/// Provider source identifier: `hashicorp/azurerm`.
const String kAzureProviderSource = 'hashicorp/azurerm';

/// Exact version pin: the provider release the wrappers were generated
/// against.
const String kAzureProviderVersionConstraint = terradartProviderVersion;

/// Concrete `StackProvider` for `hashicorp/azurerm`.
///
/// Credentials never enter synth output. This class has no client id,
/// client secret, client certificate, or OIDC token parameters. Apply
/// authenticates through `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`,
/// `ARM_CLIENT_CERTIFICATE`, `ARM_USE_OIDC`, `ARM_USE_MSI`, `ARM_USE_CLI`,
/// and the other `ARM_*` variables the provider reads.
///
/// The `features` block is required by the provider. An omitted [features]
/// argument still emits an empty block, which is enough for `terraform
/// validate`.
@immutable
final class AzureProvider implements StackProvider {
  const AzureProvider({
    this.alias,
    this.subscriptionId,
    this.tenantId,
    this.auxiliaryTenantIds,
    this.environment,
    this.metadataHost,
    this.useOidc,
    this.useMsi,
    this.msiEndpoint,
    this.msiApiVersion,
    this.useCli,
    this.useAksWorkloadIdentity,
    this.partnerId,
    this.disableCorrelationRequestId,
    this.disableTerraformPartnerId,
    this.resourceProviderRegistrations,
    this.resourceProvidersToRegister,
    this.storageUseAzuread,
    this.features,
  });

  @override
  final String? alias;

  /// Subscription the provider operates in. Falls back to
  /// `ARM_SUBSCRIPTION_ID` when unset.
  final String? subscriptionId;

  /// Tenant the provider operates in. Falls back to `ARM_TENANT_ID`.
  final String? tenantId;

  /// Extra tenants for cross-tenant resources. At most three.
  final List<String>? auxiliaryTenantIds;

  /// Cloud environment: `public`, `usgovernment`, or `china`.
  /// Falls back to `ARM_ENVIRONMENT`, then `public`.
  final String? environment;

  /// Hostname of the Azure Metadata Service. Falls back to
  /// `ARM_METADATA_HOSTNAME`.
  final String? metadataHost;

  /// Allow OpenID Connect. The token itself stays in the environment.
  final bool? useOidc;

  /// Allow managed identity.
  final bool? useMsi;

  /// Custom managed-identity endpoint.
  final String? msiEndpoint;

  /// API version for the managed-identity endpoint.
  final String? msiApiVersion;

  /// Allow the Azure CLI credential. Defaults to true in the provider.
  final bool? useCli;

  /// Allow AKS workload identity.
  final bool? useAksWorkloadIdentity;

  /// Partner GUID registered with Microsoft for usage attribution.
  final String? partnerId;

  /// Disable the correlation request id header.
  final bool? disableCorrelationRequestId;

  /// Disable the Terraform partner id when [partnerId] is unset.
  final bool? disableTerraformPartnerId;

  /// Which resource providers to register: `core`, `extended`, `all`,
  /// `none`, or `legacy`.
  final String? resourceProviderRegistrations;

  /// Resource providers to register in addition to
  /// [resourceProviderRegistrations].
  final List<String>? resourceProvidersToRegister;

  /// Use Azure AD for the storage data plane.
  final bool? storageUseAzuread;

  /// Provider feature flags. Omit for an empty `features` block.
  final AzureFeatures? features;

  @override
  String get providerName => 'azurerm';

  @override
  String get source => kAzureProviderSource;

  @override
  String get versionConstraint => kAzureProviderVersionConstraint;

  @override
  Map<String, Object?> get configArgs => {
    if (subscriptionId != null) 'subscription_id': subscriptionId,
    if (tenantId != null) 'tenant_id': tenantId,
    if (auxiliaryTenantIds != null) 'auxiliary_tenant_ids': auxiliaryTenantIds,
    if (environment != null) 'environment': environment,
    if (metadataHost != null) 'metadata_host': metadataHost,
    if (useOidc != null) 'use_oidc': useOidc,
    if (useMsi != null) 'use_msi': useMsi,
    if (msiEndpoint != null) 'msi_endpoint': msiEndpoint,
    if (msiApiVersion != null) 'msi_api_version': msiApiVersion,
    if (useCli != null) 'use_cli': useCli,
    if (useAksWorkloadIdentity != null)
      'use_aks_workload_identity': useAksWorkloadIdentity,
    if (partnerId != null) 'partner_id': partnerId,
    if (disableCorrelationRequestId != null)
      'disable_correlation_request_id': disableCorrelationRequestId,
    if (disableTerraformPartnerId != null)
      'disable_terraform_partner_id': disableTerraformPartnerId,
    if (resourceProviderRegistrations != null)
      'resource_provider_registrations': resourceProviderRegistrations,
    if (resourceProvidersToRegister != null)
      'resource_providers_to_register': resourceProvidersToRegister,
    if (storageUseAzuread != null) 'storage_use_azuread': storageUseAzuread,
    'features': [features?.toJson() ?? const <String, Object?>{}],
  };
}

/// The required `features` block of [AzureProvider].
@immutable
final class AzureFeatures {
  const AzureFeatures({
    this.persistIdOnCreateBeforePollingForCompletion,
    this.skipImportCheckOnCreateAndAllowOverwritingExistingResources,
    this.enhancedValidation,
    this.apiManagement,
    this.appConfiguration,
    this.applicationInsights,
    this.cognitiveAccount,
    this.keyVault,
    this.logAnalyticsWorkspace,
    this.templateDeployment,
    this.virtualMachine,
    this.virtualMachineScaleSet,
    this.resourceGroup,
    this.recoveryServicesVaults,
    this.managedDisk,
    this.storage,
    this.subscription,
    this.postgresqlFlexibleServer,
    this.machineLearning,
    this.recoveryService,
    this.netapp,
    this.databricksWorkspace,
    this.servicebus,
  });

  /// Set the resource id in state before polling an asynchronous create.
  final bool? persistIdOnCreateBeforePollingForCompletion;

  /// Skip the import check and allow overwriting an existing remote resource.
  final bool? skipImportCheckOnCreateAndAllowOverwritingExistingResources;

  final AzureEnhancedValidationFeatures? enhancedValidation;
  final AzureApiManagementFeatures? apiManagement;
  final AzureAppConfigurationFeatures? appConfiguration;
  final AzureApplicationInsightsFeatures? applicationInsights;
  final AzureCognitiveAccountFeatures? cognitiveAccount;
  final AzureKeyVaultFeatures? keyVault;
  final AzureLogAnalyticsWorkspaceFeatures? logAnalyticsWorkspace;
  final AzureTemplateDeploymentFeatures? templateDeployment;
  final AzureVirtualMachineFeatures? virtualMachine;
  final AzureVirtualMachineScaleSetFeatures? virtualMachineScaleSet;
  final AzureResourceGroupFeatures? resourceGroup;
  final AzureRecoveryServicesVaultsFeatures? recoveryServicesVaults;
  final AzureManagedDiskFeatures? managedDisk;
  final AzureStorageFeatures? storage;
  final AzureSubscriptionFeatures? subscription;
  final AzurePostgresqlFlexibleServerFeatures? postgresqlFlexibleServer;
  final AzureMachineLearningFeatures? machineLearning;
  final AzureRecoveryServiceFeatures? recoveryService;
  final AzureNetappFeatures? netapp;
  final AzureDatabricksWorkspaceFeatures? databricksWorkspace;
  final AzureServicebusFeatures? servicebus;

  Map<String, Object?> toJson() => {
    if (persistIdOnCreateBeforePollingForCompletion != null)
      'persist_id_on_create_before_polling_for_completion':
          persistIdOnCreateBeforePollingForCompletion,
    if (skipImportCheckOnCreateAndAllowOverwritingExistingResources != null)
      'skip_import_check_on_create_and_allow_overwriting_existing_resources':
          skipImportCheckOnCreateAndAllowOverwritingExistingResources,
    if (enhancedValidation != null)
      'enhanced_validation': [enhancedValidation!.toJson()],
    if (apiManagement != null) 'api_management': [apiManagement!.toJson()],
    if (appConfiguration != null)
      'app_configuration': [appConfiguration!.toJson()],
    if (applicationInsights != null)
      'application_insights': [applicationInsights!.toJson()],
    if (cognitiveAccount != null)
      'cognitive_account': [cognitiveAccount!.toJson()],
    if (keyVault != null) 'key_vault': [keyVault!.toJson()],
    if (logAnalyticsWorkspace != null)
      'log_analytics_workspace': [logAnalyticsWorkspace!.toJson()],
    if (templateDeployment != null)
      'template_deployment': [templateDeployment!.toJson()],
    if (virtualMachine != null) 'virtual_machine': [virtualMachine!.toJson()],
    if (virtualMachineScaleSet != null)
      'virtual_machine_scale_set': [virtualMachineScaleSet!.toJson()],
    if (resourceGroup != null) 'resource_group': [resourceGroup!.toJson()],
    if (recoveryServicesVaults != null)
      'recovery_services_vaults': [recoveryServicesVaults!.toJson()],
    if (managedDisk != null) 'managed_disk': [managedDisk!.toJson()],
    if (storage != null) 'storage': [storage!.toJson()],
    if (subscription != null) 'subscription': [subscription!.toJson()],
    if (postgresqlFlexibleServer != null)
      'postgresql_flexible_server': [postgresqlFlexibleServer!.toJson()],
    if (machineLearning != null)
      'machine_learning': [machineLearning!.toJson()],
    if (recoveryService != null)
      'recovery_service': [recoveryService!.toJson()],
    if (netapp != null) 'netapp': [netapp!.toJson()],
    if (databricksWorkspace != null)
      'databricks_workspace': [databricksWorkspace!.toJson()],
    if (servicebus != null) 'servicebus': [servicebus!.toJson()],
  };
}

/// The `enhanced_validation` block of [AzureFeatures].
@immutable
final class AzureEnhancedValidationFeatures {
  const AzureEnhancedValidationFeatures({
    this.locations,
    this.resourceProviders,
    this.preflightEnabled,
    this.preflightLocationFallback,
  });

  final bool? locations;
  final bool? resourceProviders;
  final bool? preflightEnabled;
  final String? preflightLocationFallback;

  Map<String, Object?> toJson() => {
    if (locations != null) 'locations': locations,
    if (resourceProviders != null) 'resource_providers': resourceProviders,
    if (preflightEnabled != null) 'preflight_enabled': preflightEnabled,
    if (preflightLocationFallback != null)
      'preflight_location_fallback': preflightLocationFallback,
  };
}

/// The `api_management` block of [AzureFeatures].
@immutable
final class AzureApiManagementFeatures {
  const AzureApiManagementFeatures({
    this.purgeSoftDeleteOnDestroy,
    this.recoverSoftDeleted,
  });

  final bool? purgeSoftDeleteOnDestroy;
  final bool? recoverSoftDeleted;

  Map<String, Object?> toJson() => {
    if (purgeSoftDeleteOnDestroy != null)
      'purge_soft_delete_on_destroy': purgeSoftDeleteOnDestroy,
    if (recoverSoftDeleted != null) 'recover_soft_deleted': recoverSoftDeleted,
  };
}

/// The `app_configuration` block of [AzureFeatures].
@immutable
final class AzureAppConfigurationFeatures {
  const AzureAppConfigurationFeatures({
    this.purgeSoftDeleteOnDestroy,
    this.recoverSoftDeleted,
  });

  final bool? purgeSoftDeleteOnDestroy;
  final bool? recoverSoftDeleted;

  Map<String, Object?> toJson() => {
    if (purgeSoftDeleteOnDestroy != null)
      'purge_soft_delete_on_destroy': purgeSoftDeleteOnDestroy,
    if (recoverSoftDeleted != null) 'recover_soft_deleted': recoverSoftDeleted,
  };
}

/// The `application_insights` block of [AzureFeatures].
@immutable
final class AzureApplicationInsightsFeatures {
  const AzureApplicationInsightsFeatures({this.disableGeneratedRule});

  final bool? disableGeneratedRule;

  Map<String, Object?> toJson() => {
    if (disableGeneratedRule != null)
      'disable_generated_rule': disableGeneratedRule,
  };
}

/// The `cognitive_account` block of [AzureFeatures].
@immutable
final class AzureCognitiveAccountFeatures {
  const AzureCognitiveAccountFeatures({this.purgeSoftDeleteOnDestroy});

  final bool? purgeSoftDeleteOnDestroy;

  Map<String, Object?> toJson() => {
    if (purgeSoftDeleteOnDestroy != null)
      'purge_soft_delete_on_destroy': purgeSoftDeleteOnDestroy,
  };
}

/// The `key_vault` block of [AzureFeatures].
@immutable
final class AzureKeyVaultFeatures {
  const AzureKeyVaultFeatures({
    this.purgeSoftDeleteOnDestroy,
    this.purgeSoftDeletedCertificatesOnDestroy,
    this.purgeSoftDeletedKeysOnDestroy,
    this.purgeSoftDeletedSecretsOnDestroy,
    this.purgeSoftDeletedHardwareSecurityModulesOnDestroy,
    this.purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy,
    this.recoverSoftDeletedCertificates,
    this.recoverSoftDeletedKeyVaults,
    this.recoverSoftDeletedKeys,
    this.recoverSoftDeletedSecrets,
    this.recoverSoftDeletedHardwareSecurityModuleKeys,
  });

  final bool? purgeSoftDeleteOnDestroy;
  final bool? purgeSoftDeletedCertificatesOnDestroy;
  final bool? purgeSoftDeletedKeysOnDestroy;
  final bool? purgeSoftDeletedSecretsOnDestroy;
  final bool? purgeSoftDeletedHardwareSecurityModulesOnDestroy;
  final bool? purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy;
  final bool? recoverSoftDeletedCertificates;
  final bool? recoverSoftDeletedKeyVaults;
  final bool? recoverSoftDeletedKeys;
  final bool? recoverSoftDeletedSecrets;
  final bool? recoverSoftDeletedHardwareSecurityModuleKeys;

  Map<String, Object?> toJson() => {
    if (purgeSoftDeleteOnDestroy != null)
      'purge_soft_delete_on_destroy': purgeSoftDeleteOnDestroy,
    if (purgeSoftDeletedCertificatesOnDestroy != null)
      'purge_soft_deleted_certificates_on_destroy':
          purgeSoftDeletedCertificatesOnDestroy,
    if (purgeSoftDeletedKeysOnDestroy != null)
      'purge_soft_deleted_keys_on_destroy': purgeSoftDeletedKeysOnDestroy,
    if (purgeSoftDeletedSecretsOnDestroy != null)
      'purge_soft_deleted_secrets_on_destroy': purgeSoftDeletedSecretsOnDestroy,
    if (purgeSoftDeletedHardwareSecurityModulesOnDestroy != null)
      'purge_soft_deleted_hardware_security_modules_on_destroy':
          purgeSoftDeletedHardwareSecurityModulesOnDestroy,
    if (purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy != null)
      'purge_soft_deleted_hardware_security_module_keys_on_destroy':
          purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy,
    if (recoverSoftDeletedCertificates != null)
      'recover_soft_deleted_certificates': recoverSoftDeletedCertificates,
    if (recoverSoftDeletedKeyVaults != null)
      'recover_soft_deleted_key_vaults': recoverSoftDeletedKeyVaults,
    if (recoverSoftDeletedKeys != null)
      'recover_soft_deleted_keys': recoverSoftDeletedKeys,
    if (recoverSoftDeletedSecrets != null)
      'recover_soft_deleted_secrets': recoverSoftDeletedSecrets,
    if (recoverSoftDeletedHardwareSecurityModuleKeys != null)
      'recover_soft_deleted_hardware_security_module_keys':
          recoverSoftDeletedHardwareSecurityModuleKeys,
  };
}

/// The `log_analytics_workspace` block of [AzureFeatures].
@immutable
final class AzureLogAnalyticsWorkspaceFeatures {
  const AzureLogAnalyticsWorkspaceFeatures({this.permanentlyDeleteOnDestroy});

  final bool? permanentlyDeleteOnDestroy;

  Map<String, Object?> toJson() => {
    if (permanentlyDeleteOnDestroy != null)
      'permanently_delete_on_destroy': permanentlyDeleteOnDestroy,
  };
}

/// The `template_deployment` block of [AzureFeatures].
@immutable
final class AzureTemplateDeploymentFeatures {
  const AzureTemplateDeploymentFeatures({this.deleteNestedItemsDuringDeletion});

  final bool? deleteNestedItemsDuringDeletion;

  Map<String, Object?> toJson() => {
    if (deleteNestedItemsDuringDeletion != null)
      'delete_nested_items_during_deletion': deleteNestedItemsDuringDeletion,
  };
}

/// The `virtual_machine` block of [AzureFeatures].
@immutable
final class AzureVirtualMachineFeatures {
  const AzureVirtualMachineFeatures({
    this.detachImplicitDataDiskOnDeletion,
    this.deleteOsDiskOnDeletion,
    this.skipShutdownAndForceDelete,
  });

  final bool? detachImplicitDataDiskOnDeletion;
  final bool? deleteOsDiskOnDeletion;
  final bool? skipShutdownAndForceDelete;

  Map<String, Object?> toJson() => {
    if (detachImplicitDataDiskOnDeletion != null)
      'detach_implicit_data_disk_on_deletion': detachImplicitDataDiskOnDeletion,
    if (deleteOsDiskOnDeletion != null)
      'delete_os_disk_on_deletion': deleteOsDiskOnDeletion,
    if (skipShutdownAndForceDelete != null)
      'skip_shutdown_and_force_delete': skipShutdownAndForceDelete,
  };
}

/// The `virtual_machine_scale_set` block of [AzureFeatures].
@immutable
final class AzureVirtualMachineScaleSetFeatures {
  const AzureVirtualMachineScaleSetFeatures({
    this.forceDelete,
    this.reimageOnManualUpgrade,
    this.rollInstancesWhenRequired,
    this.scaleToZeroBeforeDeletion,
  });

  final bool? forceDelete;
  final bool? reimageOnManualUpgrade;
  final bool? rollInstancesWhenRequired;
  final bool? scaleToZeroBeforeDeletion;

  Map<String, Object?> toJson() => {
    if (forceDelete != null) 'force_delete': forceDelete,
    if (reimageOnManualUpgrade != null)
      'reimage_on_manual_upgrade': reimageOnManualUpgrade,
    if (rollInstancesWhenRequired != null)
      'roll_instances_when_required': rollInstancesWhenRequired,
    if (scaleToZeroBeforeDeletion != null)
      'scale_to_zero_before_deletion': scaleToZeroBeforeDeletion,
  };
}

/// The `resource_group` block of [AzureFeatures].
@immutable
final class AzureResourceGroupFeatures {
  const AzureResourceGroupFeatures({this.preventDeletionIfContainsResources});

  final bool? preventDeletionIfContainsResources;

  Map<String, Object?> toJson() => {
    if (preventDeletionIfContainsResources != null)
      'prevent_deletion_if_contains_resources':
          preventDeletionIfContainsResources,
  };
}

/// The `recovery_services_vaults` block of [AzureFeatures].
@immutable
final class AzureRecoveryServicesVaultsFeatures {
  const AzureRecoveryServicesVaultsFeatures({
    this.recoverSoftDeletedBackupProtectedVm,
  });

  final bool? recoverSoftDeletedBackupProtectedVm;

  Map<String, Object?> toJson() => {
    if (recoverSoftDeletedBackupProtectedVm != null)
      'recover_soft_deleted_backup_protected_vm':
          recoverSoftDeletedBackupProtectedVm,
  };
}

/// The `managed_disk` block of [AzureFeatures].
@immutable
final class AzureManagedDiskFeatures {
  const AzureManagedDiskFeatures({this.expandWithoutDowntime});

  final bool? expandWithoutDowntime;

  Map<String, Object?> toJson() => {
    if (expandWithoutDowntime != null)
      'expand_without_downtime': expandWithoutDowntime,
  };
}

/// The `storage` block of [AzureFeatures].
@immutable
final class AzureStorageFeatures {
  const AzureStorageFeatures({this.dataPlaneAvailable});

  final bool? dataPlaneAvailable;

  Map<String, Object?> toJson() => {
    if (dataPlaneAvailable != null) 'data_plane_available': dataPlaneAvailable,
  };
}

/// The `subscription` block of [AzureFeatures].
@immutable
final class AzureSubscriptionFeatures {
  const AzureSubscriptionFeatures({this.preventCancellationOnDestroy});

  final bool? preventCancellationOnDestroy;

  Map<String, Object?> toJson() => {
    if (preventCancellationOnDestroy != null)
      'prevent_cancellation_on_destroy': preventCancellationOnDestroy,
  };
}

/// The `postgresql_flexible_server` block of [AzureFeatures].
@immutable
final class AzurePostgresqlFlexibleServerFeatures {
  const AzurePostgresqlFlexibleServerFeatures({
    this.restartServerOnConfigurationValueChange,
  });

  final bool? restartServerOnConfigurationValueChange;

  Map<String, Object?> toJson() => {
    if (restartServerOnConfigurationValueChange != null)
      'restart_server_on_configuration_value_change':
          restartServerOnConfigurationValueChange,
  };
}

/// The `machine_learning` block of [AzureFeatures].
@immutable
final class AzureMachineLearningFeatures {
  const AzureMachineLearningFeatures({this.purgeSoftDeletedWorkspaceOnDestroy});

  final bool? purgeSoftDeletedWorkspaceOnDestroy;

  Map<String, Object?> toJson() => {
    if (purgeSoftDeletedWorkspaceOnDestroy != null)
      'purge_soft_deleted_workspace_on_destroy':
          purgeSoftDeletedWorkspaceOnDestroy,
  };
}

/// The `recovery_service` block of [AzureFeatures].
@immutable
final class AzureRecoveryServiceFeatures {
  const AzureRecoveryServiceFeatures({
    this.vmBackupStopProtectionAndRetainDataOnDestroy,
    this.vmBackupSuspendProtectionAndRetainDataOnDestroy,
    this.purgeProtectedItemsFromVaultOnDestroy,
  });

  final bool? vmBackupStopProtectionAndRetainDataOnDestroy;
  final bool? vmBackupSuspendProtectionAndRetainDataOnDestroy;
  final bool? purgeProtectedItemsFromVaultOnDestroy;

  Map<String, Object?> toJson() => {
    if (vmBackupStopProtectionAndRetainDataOnDestroy != null)
      'vm_backup_stop_protection_and_retain_data_on_destroy':
          vmBackupStopProtectionAndRetainDataOnDestroy,
    if (vmBackupSuspendProtectionAndRetainDataOnDestroy != null)
      'vm_backup_suspend_protection_and_retain_data_on_destroy':
          vmBackupSuspendProtectionAndRetainDataOnDestroy,
    if (purgeProtectedItemsFromVaultOnDestroy != null)
      'purge_protected_items_from_vault_on_destroy':
          purgeProtectedItemsFromVaultOnDestroy,
  };
}

/// The `netapp` block of [AzureFeatures].
@immutable
final class AzureNetappFeatures {
  const AzureNetappFeatures({
    this.deleteBackupsOnBackupVaultDestroy,
    this.preventVolumeDestruction,
  });

  final bool? deleteBackupsOnBackupVaultDestroy;
  final bool? preventVolumeDestruction;

  Map<String, Object?> toJson() => {
    if (deleteBackupsOnBackupVaultDestroy != null)
      'delete_backups_on_backup_vault_destroy':
          deleteBackupsOnBackupVaultDestroy,
    if (preventVolumeDestruction != null)
      'prevent_volume_destruction': preventVolumeDestruction,
  };
}

/// The `databricks_workspace` block of [AzureFeatures].
@immutable
final class AzureDatabricksWorkspaceFeatures {
  const AzureDatabricksWorkspaceFeatures({this.forceDelete});

  final bool? forceDelete;

  Map<String, Object?> toJson() => {
    if (forceDelete != null) 'force_delete': forceDelete,
  };
}

/// The `servicebus` block of [AzureFeatures].
@immutable
final class AzureServicebusFeatures {
  const AzureServicebusFeatures({this.autoDeleteSubscriptionDefaultRule});

  final bool? autoDeleteSubscriptionDefaultRule;

  Map<String, Object?> toJson() => {
    if (autoDeleteSubscriptionDefaultRule != null)
      'auto_delete_subscription_default_rule':
          autoDeleteSubscriptionDefaultRule,
  };
}
