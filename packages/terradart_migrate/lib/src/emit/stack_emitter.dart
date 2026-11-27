import 'dart:convert';

import 'package:terradart_appwrite/provider.dart'
    show kAppwriteProviderVersionConstraint;
import 'package:terradart_aws/provider.dart' show kAwsProviderVersionConstraint;
import 'package:terradart_azure/provider.dart'
    show kAzureProviderVersionConstraint;
import 'package:terradart_cloudflare/provider.dart'
    show kCloudflareProviderVersionConstraint;
import 'package:terradart_core/internal.dart'
    show outputEnvironmentName, parseGoDuration, templateVariableNames;
import 'package:terradart_google/provider.dart'
    show kGoogleProviderVersionConstraint;
import 'package:terradart_google_beta/provider.dart'
    show kBetaProviderVersionConstraint;
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_time/terradart_time.dart'
    show kTimeProviderVersionConstraint;

import '../migrate_manifest.dart';
import '../provider_secrets.dart';
import '../report.dart';
import 'blocker.dart';
import 'body_map.dart';
import 'context.dart';
import 'dart_literal.dart';
import 'expand.dart';
import 'module_wrapper.dart';
import 'naming.dart';
import 'tf_expr.dart';
import 'value_emitter.dart';
import 'variable_type.dart';

final class StackStatement {
  const StackStatement({
    required this.tag,
    required this.text,
    this.comments = '',
    this.uses = const {},
    this.declaresLocal = false,
  });

  final String tag;
  final String text;
  final String comments;
  final Set<String> uses;
  final bool declaresLocal;
}

final class EmittedStack {
  const EmittedStack({
    required this.stackClass,
    required this.source,
    required this.packages,
    required this.report,
    this.hasStack = true,
    this.moduleWrappers = const {},
    this.usesWorkspace = false,
    this.statements = const [],
    this.imports = const [],
    this.ctorInit = '',
    this.envSlotTypes = const {},
    this.envValueSources = const {},
    this.envImports = const [],
  });

  final String stackClass;
  final String source;
  final bool hasStack;
  final List<String> packages;
  final Set<String> moduleWrappers;
  final List<StackStatement> statements;
  final bool usesWorkspace;
  final List<String> imports;
  final String ctorInit;
  final Map<String, String> envSlotTypes;
  final Map<String, String> envValueSources;
  final List<String> envImports;
  final MigrationReport report;
}

final class _ProviderRecipe {
  const _ProviderRecipe(
    this.package,
    this.className,
    this.args,
    this.pin, {
    this.barrel = 'provider',
  });

  final String package;
  final String className;
  final Map<String, _ProviderArg> args;
  final String pin;
  final String barrel;
}

sealed class _ProviderArg {
  const _ProviderArg(this.param);

  final String param;
}

final class _Scalar extends _ProviderArg {
  const _Scalar(super.param);
}

final class _Strings extends _ProviderArg {
  const _Strings(super.param);
}

final class _StringMap extends _ProviderArg {
  const _StringMap(super.param, {this.key});

  final String? key;
}

final class _Blocks extends _ProviderArg {
  const _Blocks(
    super.param,
    this.className,
    this.fields, {
    required this.repeated,
  });

  final String className;
  final Map<String, _ProviderArg> fields;
  final bool repeated;
}

const _providerRecipes = <String, _ProviderRecipe>{
  'google': _ProviderRecipe('terradart_google', 'GoogleProvider', {
    'project': _Scalar('project'),
    'region': _Scalar('region'),
    'zone': _Scalar('zone'),
    'user_project_override': _Scalar('userProjectOverride'),
  }, kGoogleProviderVersionConstraint),
  'google-beta':
      _ProviderRecipe('terradart_google_beta', 'GoogleBetaProvider', {
        'project': _Scalar('project'),
        'region': _Scalar('region'),
        'zone': _Scalar('zone'),
        'user_project_override': _Scalar('userProjectOverride'),
      }, kBetaProviderVersionConstraint),
  'appwrite': _ProviderRecipe('terradart_appwrite', 'AppwriteProvider', {
    'endpoint': _Scalar('endpoint'),
    'project_id': _Scalar('projectId'),
    'organization_id': _Scalar('organizationId'),
    'self_signed': _Scalar('selfSigned'),
    'http_timeout_seconds': _Scalar('httpTimeoutSeconds'),
    'max_retries': _Scalar('maxRetries'),
  }, kAppwriteProviderVersionConstraint),
  'cloudflare': _ProviderRecipe('terradart_cloudflare', 'CloudflareProvider', {
    'base_url': _Scalar('baseUrl'),
    'email': _Scalar('email'),
    'user_agent_operator_suffix': _Scalar('userAgentOperatorSuffix'),
  }, kCloudflareProviderVersionConstraint),
  'aws': _ProviderRecipe('terradart_aws', 'AwsProvider', {
    'region': _Scalar('region'),
    'profile': _Scalar('profile'),
    'allowed_account_ids': _Strings('allowedAccountIds'),
    'forbidden_account_ids': _Strings('forbiddenAccountIds'),
    'assume_role': _Blocks('assumeRole', 'AwsAssumeRole', {
      'role_arn': _Scalar('roleArn'),
      'session_name': _Scalar('sessionName'),
      'external_id': _Scalar('externalId'),
      'duration': _Scalar('duration'),
      'policy': _Scalar('policy'),
      'policy_arns': _Strings('policyArns'),
      'source_identity': _Scalar('sourceIdentity'),
      'tags': _StringMap('tags'),
      'transitive_tag_keys': _Strings('transitiveTagKeys'),
    }, repeated: true),
    'default_tags': _StringMap('defaultTags', key: 'tags'),
    'ignore_tags': _Blocks('ignoreTags', 'AwsIgnoreTags', {
      'keys': _Strings('keys'),
      'key_prefixes': _Strings('keyPrefixes'),
    }, repeated: false),
    'endpoints': _StringMap('endpoints'),
    'shared_config_files': _Strings('sharedConfigFiles'),
    'shared_credentials_files': _Strings('sharedCredentialsFiles'),
    'skip_credentials_validation': _Scalar('skipCredentialsValidation'),
    'skip_metadata_api_check': _Scalar('skipMetadataApiCheck'),
    'skip_region_validation': _Scalar('skipRegionValidation'),
    'skip_requesting_account_id': _Scalar('skipRequestingAccountId'),
    'retry_mode': _Scalar('retryMode'),
    'max_retries': _Scalar('maxRetries'),
    'use_fips_endpoint': _Scalar('useFipsEndpoint'),
    'use_dualstack_endpoint': _Scalar('useDualstackEndpoint'),
  }, kAwsProviderVersionConstraint),
  'azurerm': _ProviderRecipe('terradart_azure', 'AzureProvider', {
    'subscription_id': _Scalar('subscriptionId'),
    'tenant_id': _Scalar('tenantId'),
    'auxiliary_tenant_ids': _Strings('auxiliaryTenantIds'),
    'environment': _Scalar('environment'),
    'metadata_host': _Scalar('metadataHost'),
    'use_oidc': _Scalar('useOidc'),
    'use_msi': _Scalar('useMsi'),
    'msi_endpoint': _Scalar('msiEndpoint'),
    'msi_api_version': _Scalar('msiApiVersion'),
    'use_cli': _Scalar('useCli'),
    'use_aks_workload_identity': _Scalar('useAksWorkloadIdentity'),
    'partner_id': _Scalar('partnerId'),
    'disable_correlation_request_id': _Scalar('disableCorrelationRequestId'),
    'disable_terraform_partner_id': _Scalar('disableTerraformPartnerId'),
    'resource_provider_registrations': _Scalar('resourceProviderRegistrations'),
    'resource_providers_to_register': _Strings('resourceProvidersToRegister'),
    'storage_use_azuread': _Scalar('storageUseAzuread'),
    'features': _Blocks('features', 'AzureFeatures', {
      'persist_id_on_create_before_polling_for_completion': _Scalar(
        'persistIdOnCreateBeforePollingForCompletion',
      ),
      'skip_import_check_on_create_and_allow_overwriting_existing_resources':
          _Scalar(
            'skipImportCheckOnCreateAndAllowOverwritingExistingResources',
          ),
      'enhanced_validation':
          _Blocks('enhancedValidation', 'AzureEnhancedValidationFeatures', {
            'locations': _Scalar('locations'),
            'resource_providers': _Scalar('resourceProviders'),
            'preflight_enabled': _Scalar('preflightEnabled'),
            'preflight_location_fallback': _Scalar('preflightLocationFallback'),
          }, repeated: false),
      'api_management': _Blocks('apiManagement', 'AzureApiManagementFeatures', {
        'purge_soft_delete_on_destroy': _Scalar('purgeSoftDeleteOnDestroy'),
        'recover_soft_deleted': _Scalar('recoverSoftDeleted'),
      }, repeated: false),
      'app_configuration':
          _Blocks('appConfiguration', 'AzureAppConfigurationFeatures', {
            'purge_soft_delete_on_destroy': _Scalar('purgeSoftDeleteOnDestroy'),
            'recover_soft_deleted': _Scalar('recoverSoftDeleted'),
          }, repeated: false),
      'application_insights': _Blocks(
        'applicationInsights',
        'AzureApplicationInsightsFeatures',
        {'disable_generated_rule': _Scalar('disableGeneratedRule')},
        repeated: false,
      ),
      'cognitive_account': _Blocks(
        'cognitiveAccount',
        'AzureCognitiveAccountFeatures',
        {'purge_soft_delete_on_destroy': _Scalar('purgeSoftDeleteOnDestroy')},
        repeated: false,
      ),
      'key_vault': _Blocks('keyVault', 'AzureKeyVaultFeatures', {
        'purge_soft_delete_on_destroy': _Scalar('purgeSoftDeleteOnDestroy'),
        'purge_soft_deleted_certificates_on_destroy': _Scalar(
          'purgeSoftDeletedCertificatesOnDestroy',
        ),
        'purge_soft_deleted_keys_on_destroy': _Scalar(
          'purgeSoftDeletedKeysOnDestroy',
        ),
        'purge_soft_deleted_secrets_on_destroy': _Scalar(
          'purgeSoftDeletedSecretsOnDestroy',
        ),
        'purge_soft_deleted_hardware_security_modules_on_destroy': _Scalar(
          'purgeSoftDeletedHardwareSecurityModulesOnDestroy',
        ),
        'purge_soft_deleted_hardware_security_module_keys_on_destroy': _Scalar(
          'purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy',
        ),
        'recover_soft_deleted_certificates': _Scalar(
          'recoverSoftDeletedCertificates',
        ),
        'recover_soft_deleted_key_vaults': _Scalar(
          'recoverSoftDeletedKeyVaults',
        ),
        'recover_soft_deleted_keys': _Scalar('recoverSoftDeletedKeys'),
        'recover_soft_deleted_secrets': _Scalar('recoverSoftDeletedSecrets'),
        'recover_soft_deleted_hardware_security_module_keys': _Scalar(
          'recoverSoftDeletedHardwareSecurityModuleKeys',
        ),
      }, repeated: false),
      'log_analytics_workspace': _Blocks(
        'logAnalyticsWorkspace',
        'AzureLogAnalyticsWorkspaceFeatures',
        {
          'permanently_delete_on_destroy': _Scalar(
            'permanentlyDeleteOnDestroy',
          ),
        },
        repeated: false,
      ),
      'template_deployment':
          _Blocks('templateDeployment', 'AzureTemplateDeploymentFeatures', {
            'delete_nested_items_during_deletion': _Scalar(
              'deleteNestedItemsDuringDeletion',
            ),
          }, repeated: false),
      'virtual_machine':
          _Blocks('virtualMachine', 'AzureVirtualMachineFeatures', {
            'detach_implicit_data_disk_on_deletion': _Scalar(
              'detachImplicitDataDiskOnDeletion',
            ),
            'delete_os_disk_on_deletion': _Scalar('deleteOsDiskOnDeletion'),
            'skip_shutdown_and_force_delete': _Scalar(
              'skipShutdownAndForceDelete',
            ),
          }, repeated: false),
      'virtual_machine_scale_set': _Blocks(
        'virtualMachineScaleSet',
        'AzureVirtualMachineScaleSetFeatures',
        {
          'force_delete': _Scalar('forceDelete'),
          'reimage_on_manual_upgrade': _Scalar('reimageOnManualUpgrade'),
          'roll_instances_when_required': _Scalar('rollInstancesWhenRequired'),
          'scale_to_zero_before_deletion': _Scalar('scaleToZeroBeforeDeletion'),
        },
        repeated: false,
      ),
      'resource_group': _Blocks('resourceGroup', 'AzureResourceGroupFeatures', {
        'prevent_deletion_if_contains_resources': _Scalar(
          'preventDeletionIfContainsResources',
        ),
      }, repeated: false),
      'recovery_services_vaults': _Blocks(
        'recoveryServicesVaults',
        'AzureRecoveryServicesVaultsFeatures',
        {
          'recover_soft_deleted_backup_protected_vm': _Scalar(
            'recoverSoftDeletedBackupProtectedVm',
          ),
        },
        repeated: false,
      ),
      'managed_disk': _Blocks('managedDisk', 'AzureManagedDiskFeatures', {
        'expand_without_downtime': _Scalar('expandWithoutDowntime'),
      }, repeated: false),
      'storage': _Blocks('storage', 'AzureStorageFeatures', {
        'data_plane_available': _Scalar('dataPlaneAvailable'),
      }, repeated: false),
      'subscription': _Blocks('subscription', 'AzureSubscriptionFeatures', {
        'prevent_cancellation_on_destroy': _Scalar(
          'preventCancellationOnDestroy',
        ),
      }, repeated: false),
      'postgresql_flexible_server': _Blocks(
        'postgresqlFlexibleServer',
        'AzurePostgresqlFlexibleServerFeatures',
        {
          'restart_server_on_configuration_value_change': _Scalar(
            'restartServerOnConfigurationValueChange',
          ),
        },
        repeated: false,
      ),
      'machine_learning':
          _Blocks('machineLearning', 'AzureMachineLearningFeatures', {
            'purge_soft_deleted_workspace_on_destroy': _Scalar(
              'purgeSoftDeletedWorkspaceOnDestroy',
            ),
          }, repeated: false),
      'recovery_service':
          _Blocks('recoveryService', 'AzureRecoveryServiceFeatures', {
            'vm_backup_stop_protection_and_retain_data_on_destroy': _Scalar(
              'vmBackupStopProtectionAndRetainDataOnDestroy',
            ),
            'vm_backup_suspend_protection_and_retain_data_on_destroy': _Scalar(
              'vmBackupSuspendProtectionAndRetainDataOnDestroy',
            ),
            'purge_protected_items_from_vault_on_destroy': _Scalar(
              'purgeProtectedItemsFromVaultOnDestroy',
            ),
          }, repeated: false),
      'netapp': _Blocks('netapp', 'AzureNetappFeatures', {
        'delete_backups_on_backup_vault_destroy': _Scalar(
          'deleteBackupsOnBackupVaultDestroy',
        ),
        'prevent_volume_destruction': _Scalar('preventVolumeDestruction'),
      }, repeated: false),
      'databricks_workspace': _Blocks(
        'databricksWorkspace',
        'AzureDatabricksWorkspaceFeatures',
        {'force_delete': _Scalar('forceDelete')},
        repeated: false,
      ),
      'servicebus': _Blocks('servicebus', 'AzureServicebusFeatures', {
        'auto_delete_subscription_default_rule': _Scalar(
          'autoDeleteSubscriptionDefaultRule',
        ),
      }, repeated: false),
    }, repeated: false),
  }, kAzureProviderVersionConstraint),
  'time': _ProviderRecipe(
    'terradart_time',
    'TimeProvider',
    {},
    kTimeProviderVersionConstraint,
    barrel: 'terradart_time',
  ),
};

String? _aliasLabel(Expr expr) {
  if (expr is TraversalExpr && expr.steps.every((s) => s is AttrStep)) {
    final path = expr.dottedPath;
    return path.contains('.') ? path : null;
  }
  final text = expr.constantString;
  if (text != null && text.contains('.') && !text.contains(r'${')) {
    return text;
  }
  return null;
}

Iterable<String> _referencedAliasLabels(TfModule module) sync* {
  for (final block in [...module.resources, ...module.dataSources]) {
    final provider = block.argument('provider');
    if (provider == null) continue;
    final label = _aliasLabel(provider);
    if (label != null) yield label;
  }
  for (final call in module.moduleCalls) {
    final raw = call.argument('providers');
    final map = raw == null ? null : objectMap(raw);
    if (map == null) continue;
    for (final value in map.values) {
      final label = _aliasLabel(value);
      if (label != null) yield label;
    }
  }
}

Iterable<String> _configurationAliasLabels(Expr pinned) sync* {
  final raw = objectMap(pinned)?['configuration_aliases'];
  if (raw is! TupleExpr) return;
  for (final element in raw.elements) {
    final label = _aliasLabel(element);
    if (label != null) yield label;
  }
}

const _blockedMeta = <String, String>{
  'dynamic': 'dynamic blocks have no synth path',
  'provisioner': 'provisioner blocks have no synth path',
  'connection': 'connection blocks have no synth path',
};

final class _Emitted {
  _Emitted({
    required this.address,
    required this.tfType,
    required this.dartName,
    required this.call,
    required this.usesWorkspace,
    required this.usedTargets,
    required this.usedVariables,
    required this.usedHandles,
    required this.package,
    required this.barrel,
    this.providerName,
    this.providerLabel,
    this.isModule = false,
    this.isData = false,
    this.moduleProviders = const [],
    this.wrapperFile,
    this.shapes = const {},
    this.types = const {},
  });

  final String address;
  final String tfType;
  final String dartName;
  final Set<MigratedShape> shapes;
  final Set<String> types;
  final bool isModule;
  final bool isData;
  final List<String> moduleProviders;
  final String? wrapperFile;
  final String? providerName;
  final String? providerLabel;
  final String call;
  final bool usesWorkspace;
  final Set<String> usedTargets;
  final Set<String> usedVariables;
  final Set<String> usedHandles;
  final String package;
  final String barrel;
}

final class StackEmitter {
  StackEmitter(
    this.module, {
    required this.ctx,
    required this.moduleName,
    required this.stackClass,
    required this.stackFile,
    required this.version,
    this.childModule = false,
    this.localModules = const {},
    this.envValues = const {},
    this.forceLocals = const {},
    this.reservedNames = const {},
    this.liftWorkspace = false,
    this.carryComments = true,
  }) {
    assert(
      _providerRecipes.entries.every(
        (e) => !e.value.args.keys.any(
          (k) => (droppedProviderArguments[e.key] ?? const {}).contains(k),
        ),
      ),
      'Provider recipe must not model a dropped credential argument',
    );
  }

  final TfModule module;
  final EmitContext ctx;
  final String moduleName;
  final String stackClass;
  final String stackFile;
  final String version;
  final bool childModule;
  final Map<String, LocalModule> localModules;
  final Map<String, Map<String, String>> envValues;
  final Set<String> forceLocals;
  final Set<String> reservedNames;
  final bool liftWorkspace;
  final bool carryComments;

  final _envSlotTypes = <String, String>{};
  final _envValueSources = <String, String>{};
  final _envImports = <String>{};
  final _moduleWrappers = <String>{};
  final _registeredProviders = <String>[];
  final _configurationAliases = <String>{};

  late final Map<String, String> _providerHandles = () {
    final handles = <String, String>{};
    final used = <String>{};
    for (final label in {
      ..._providerRecipes.keys,
      for (final p in module.providers)
        p.alias == null ? p.name : '${p.name}.${p.alias}',
      ..._referencedAliasLabels(module),
    }) {
      final base = lowerCamel('${label}_provider');
      var handle = base;
      for (var n = 2; !used.add(handle); n++) {
        handle = '$base$n';
      }
      handles[label] = handle;
    }
    return handles;
  }();

  final _expansions = <String, Expansion>{};
  var _rewriter = ReferenceRewriter(const []);

  static const _localReason = 'locals stay in Terraform';

  static const _noStackReason =
      'nothing in this directory translates, so no Stack is generated; the '
      'block stays as written';

  final _kept = <KeptItem>[];
  final _migrated = <MigratedItem>[];
  final _warnings = <String>[];

  EmittedStack emit() {
    final variableTypes = <String, VariableType>{};
    final untypedVariables = <String, String>{};
    for (final v in module.variables) {
      ctx.declaredVariables.add(v.name);
      try {
        variableTypes[v.name] = _variableType(v);
      } on MigrateBlocker catch (e) {
        untypedVariables[v.name] = e.reason;
      }
    }

    final refused = <String, String>{};
    late List<_BlockInfo> blocks;
    late Map<String, String> dartNames;
    var kept = <String, String>{};
    var emitted = <String, _Emitted>{};
    while (true) {
      blocks = _blocksInOrder(refused);
      final names = NameAllocator(
        reserved: {
          ...reservedNames,
          ..._providerHandles.values,
          if (liftWorkspace) 'workspace',
        },
      );
      dartNames = <String, String>{
        for (final b in blocks)
          b.address: names.allocate(
            b.name,
            suffix: NameAllocator.typeSuffix(b.type),
          ),
      };
      ctx.variableHandles
        ..clear()
        ..addAll({
          for (final MapEntry(:key, :value) in variableTypes.entries)
            key: (
              dartName: names.allocate(key, suffix: 'Var'),
              dartType: value.dartType,
            ),
        });
      kept = <String, String>{};
      while (true) {
        ctx.targets.clear();
        ctx.moduleTargets.clear();
        ctx.resetPass();
        for (final b in blocks) {
          if (kept.containsKey(b.address)) continue;
          if (b.call != null) {
            ctx.moduleTargets[b.address] = ModuleTarget(
              address: b.address,
              dartName: dartNames[b.address]!,
              local: localModules[b.name],
            );
            continue;
          }
          final hit = ctx.lookup(b.type, b.kind);
          if (hit == null) continue;
          ctx.targets[b.address] = EmitTarget(
            address: b.address,
            dartName: dartNames[b.address]!,
            entry: hit.entry,
            manifest: hit.manifest,
            isData: b.isData,
          );
        }
        final nextKept = <String, String>{};
        emitted = {};
        for (final b in blocks) {
          try {
            emitted[b.address] = _emitBlock(b, dartNames[b.address]!);
          } on MigrateBlocker catch (e) {
            nextKept[b.address] = e.reason;
          }
        }
        if (nextKept.keys.toSet().containsAll(kept.keys) &&
            kept.keys.toSet().containsAll(nextKept.keys)) {
          kept = nextKept;
          break;
        }
        kept = nextKept;
      }

      var rolledBack = false;
      for (final ex in _expansions.values) {
        for (final inst in ex.item.instances) {
          final reason = kept[inst.to];
          if (reason == null) continue;
          refused[ex.address] = 'instance ${inst.from}: $reason';
          rolledBack = true;
          break;
        }
      }
      if (!rolledBack) break;
    }

    final referenced = <String>{};
    final usedVariables = <String>{};
    final usedHandles = <String>{};
    _moduleWrappers.clear();
    final dataBarrels = <String, Set<String>>{};
    for (final e in emitted.values) {
      referenced.addAll(e.usedTargets);
      usedVariables.addAll(e.usedVariables);
      usedHandles.addAll(e.usedHandles);
      if (e.isModule) {
        final wrapper = e.wrapperFile;
        if (wrapper != null) _moduleWrappers.add(wrapper);
        continue;
      }
      if (e.isData) {
        dataBarrels.putIfAbsent(e.package, () => {}).add(e.barrel);
      } else {
        ctx.import(e.package, e.barrel);
      }
    }
    for (final MapEntry(key: package, value: barrels) in dataBarrels.entries) {
      for (final barrel in barrels.contains('data') ? {'data'} : barrels) {
        ctx.import(package, barrel);
      }
    }

    final body = <StackStatement>[];
    void write(String tag, String text) =>
        body.add(StackStatement(tag: tag, text: text));
    final ctorInit = StringBuffer();

    final providerNames = <String>[
      ...module.requiredProviders.keys,
      for (final p in module.providers)
        if (!module.requiredProviders.containsKey(p.name)) p.name,
    ];
    for (final e in emitted.values) {
      if (e.isModule) {
        for (final label in e.moduleProviders) {
          final name = label.split('.').first;
          if (!providerNames.contains(name)) providerNames.add(name);
        }
        continue;
      }
      final needed = e.providerName ?? _defaultProviderFor(e.package, e.tfType);
      if (!providerNames.contains(needed)) providerNames.add(needed);
    }
    final selectedProviders = {
      for (final e in emitted.values) ...[
        ?e.providerLabel,
        ...e.moduleProviders,
      ],
      for (final tag in forceLocals)
        if (tag.startsWith('provider.')) tag.substring('provider.'.length),
    };
    final providerExprs = <String>[];
    void register(
      String label,
      String expr, {
      bool configurationAlias = false,
      bool external = false,
    }) {
      if (configurationAlias || external) {
        final selected = selectedProviders.contains(label);
        final call = configurationAlias
            ? 'addConfigurationAlias($expr)'
            : 'addExternalProvider($expr)';
        body.add(
          StackStatement(
            tag: 'provider.$label',
            text: selected
                ? 'final ${_providerHandles[label]} = $call;'
                : '$call;',
            declaresLocal: selected,
          ),
        );
        return;
      }
      if (!selectedProviders.contains(label)) {
        providerExprs.add(expr);
        return;
      }
      body.add(
        StackStatement(
          tag: 'provider.$label',
          text: 'final ${_providerHandles[label]} = addProvider($expr);',
          declaresLocal: true,
        ),
      );
    }

    for (final name in providerNames) {
      final recipe = _providerRecipes[name];
      if (recipe == null) {
        final dropped = droppedProviderArguments[name] ?? const <String>{};
        for (final p in module.providers.where((p) => p.name == name)) {
          final values = objectMap(bodyAsObject(p.body)) ?? {};
          for (final key in values.keys.where(dropped.contains)) {
            _warnings.add(
              'provider "$name": argument "$key" has no TerraDart '
              'parameter and was dropped',
            );
          }
        }
        _keep('provider.$name', 'provider "$name" has no TerraDart factory');
        continue;
      }
      final configs = module.providers.where((p) => p.name == name).toList();
      final defaults = childModule
          ? const <ProviderBlock>[]
          : configs.where((p) => p.alias == null).toList();
      final aliases = childModule
          ? const <ProviderBlock>[]
          : configs.where((p) => p.alias != null).toList();
      if (childModule) {
        for (final p in configs) {
          _keep(
            p.alias == null ? 'provider.$name' : 'provider.$name.${p.alias}',
            'a provider configuration inside a child module stays in '
            'Terraform; the Stack only registers the provider',
          );
        }
      }
      if (defaults.length > 1) {
        _warnings.add(
          'provider "$name" is configured ${defaults.length} times; only the '
          'first configuration is migrated',
        );
      }
      final externalDefault =
          defaults.isNotEmpty &&
          _externalizeUnmodeled(recipe, name, name, defaults.first);
      final config = defaults.isEmpty || externalDefault
          ? (args: const <String>[], isConst: true)
          : _providerArgs(recipe, name, defaults.first);
      final args = config.args;
      final pinned = module.requiredProviders[name];
      final wanted = pinned == null ? null : objectMap(pinned)?['version'];
      final wantedText = wanted?.constantString;
      if (wantedText != null && wantedText != recipe.pin) {
        _warnings.add(
          'required_providers.$name pins "$wantedText"; the Stack emits the '
          '${recipe.package} pin "${recipe.pin}"',
        );
      }
      ctx.import(recipe.package, recipe.barrel);
      register(
        name,
        '${config.isConst ? 'const ' : ''}'
        '${recipe.className}(${args.join(', ')})',
        external: externalDefault,
      );
      _registeredProviders.add(name);
      if (!externalDefault && (!childModule || configs.isEmpty)) {
        _migrated.add(MigratedItem(address: 'provider.$name'));
      }
      for (final p in aliases) {
        final alias = p.alias!;
        final label = '$name.$alias';
        if (_externalizeUnmodeled(recipe, name, label, p)) {
          register(
            label,
            'const ${recipe.className}(alias: ${dartString(alias)})',
            external: true,
          );
          continue;
        }
        final aliasConfig = _providerArgs(recipe, label, p);
        final aliasArgs = ['alias: ${dartString(alias)}', ...aliasConfig.args];
        register(
          label,
          '${aliasConfig.isConst ? 'const ' : ''}'
          '${recipe.className}(${aliasArgs.join(', ')})',
        );
        _migrated.add(MigratedItem(address: 'provider.$label'));
      }
    }
    if (childModule) {
      for (final entry in module.requiredProviders.entries) {
        for (final label in _configurationAliasLabels(entry.value)) {
          if (label.startsWith('${entry.key}.')) {
            _configurationAliases.add(label);
          }
        }
      }
    }
    for (final label in _configurationAliases) {
      final dot = label.indexOf('.');
      if (dot <= 0 || dot == label.length - 1) continue;
      final name = label.substring(0, dot);
      final alias = label.substring(dot + 1);
      final recipe = _providerRecipes[name];
      if (recipe == null) continue;
      // Terraform rejects declaring a configuration_alias when the module also configures that provider alias.
      final configured = module.providers.any(
        (p) => p.name == name && p.alias == alias,
      );
      if (configured) continue;
      ctx.import(recipe.package, recipe.barrel);
      register(
        label,
        'const ${recipe.className}(alias: ${dartString(alias)})',
        configurationAlias: true,
      );
      if (!_registeredProviders.contains(name)) {
        _registeredProviders.add(name);
      }
      _migrated.add(MigratedItem(address: 'provider.$label'));
    }
    ctorInit.write('providers: [${providerExprs.join(', ')}]');
    final noStack =
        providerExprs.isEmpty &&
        !body.any((s) => s.tag.startsWith('provider.')) &&
        !emitted.values.any((e) => e.isModule);

    final backendExpr = noStack
        ? _keptBackend(_noStackReason)
        : childModule
        ? _keptBackend(
            'a backend inside a child module is ignored by Terraform; kept '
            'as written',
          )
        : _backend();
    if (backendExpr != null) ctorInit.write(', backend: $backendExpr');

    for (final t in module.terraform) {
      final values = objectMap(bodyAsObject(t.body)) ?? {};
      for (final key in values.keys) {
        switch (key) {
          case 'required_version':
            final v = values[key]!.constantString;
            if (noStack) {
              _keep('terraform.required_version', _noStackReason);
            } else if (v == null) {
              _keep('terraform.required_version', 'not a literal');
            } else {
              ctorInit.write(', requiredVersion: ${dartString(v)}');
              _migrated.add(
                const MigratedItem(address: 'terraform.required_version'),
              );
            }
          case 'required_providers' || 'backend':
            break;
          case 'cloud':
            _keep(
              'terraform.cloud',
              'Terraform Cloud settings stay in Terraform',
            );
          default:
            _keep('terraform.$key', 'no synth path for "terraform.$key"');
        }
      }
    }

    for (final v in module.variables) {
      if (noStack) {
        _keep('variable.${v.name}', _noStackReason);
        continue;
      }
      final type = variableTypes[v.name];
      final handle = ctx.variableHandles[v.name];
      final declares =
          type != null && handle != null && usedHandles.contains(v.name);
      if (untypedVariables[v.name] case final reason?) {
        _keep('variable.${v.name}', reason);
      }
      final stmt = type == null ? null : _variable(v, type);
      if (stmt == null) {
        write('variable.${v.name}', _externalVariable(v.name));
        continue;
      }
      body.add(
        StackStatement(
          tag: 'variable.${v.name}',
          text: declares ? 'final ${handle.dartName} = $stmt' : stmt,
          declaresLocal: declares,
        ),
      );
      _migrated.add(MigratedItem(address: 'variable.${v.name}'));
    }
    for (final name in usedVariables) {
      if (!noStack && !ctx.declaredVariables.contains(name)) {
        write('variable.$name', _externalVariable(name));
        _warnings.add(
          'variable "$name" is referenced but not declared in this module; '
          'declared as external',
        );
      }
    }

    final outputStatements = <StackStatement>[];
    final defineOutputs = <OutputBlock>[];
    for (final o in module.outputs) {
      if (noStack) {
        _keep('output.${o.name}', _noStackReason);
        continue;
      }
      if (o.value is ObjectExpr) {
        defineOutputs.add(o);
        continue;
      }
      final output = _output(o);
      if (output != null) {
        outputStatements.add(
          StackStatement(
            tag: 'output.${o.name}',
            text: output.statement,
            uses: {output.address},
          ),
        );
        _migrated.add(MigratedItem(address: 'output.${o.name}'));
      }
    }
    for (final o in defineOutputs) {
      final statement = _dartDefineOutput(o);
      if (statement == null) {
        _output(o);
        continue;
      }
      outputStatements.add(
        StackStatement(tag: 'output.${o.name}', text: statement),
      );
      _migrated.add(MigratedItem(address: 'output.${o.name}'));
    }
    referenced.addAll(_outputRefs);
    referenced.addAll(forceLocals);

    final commented = <String>{};
    final keptAt = <({int at, String address})>[];
    for (final b in blocks) {
      final e = emitted[b.address];
      if (e == null) {
        _kept.add(KeptItem(address: b.address, reason: kept[b.address]!));
        if (!noStack) keptAt.add((at: body.length, address: b.address));
        continue;
      }
      if (noStack) {
        _kept.add(KeptItem(address: b.address, reason: _noStackReason));
        continue;
      }
      final declares = referenced.contains(b.address);
      final assign = declares ? 'final ${e.dartName} = ' : '';
      body.add(
        StackStatement(
          tag: b.address,
          text: '$assign${e.call};',
          comments: commented.add(b.sourceAddress)
              ? _blockComments[b.sourceAddress] ?? ''
              : '',
          uses: {
            ...e.usedTargets,
            for (final name in e.usedHandles) 'variable.$name',
            if (e.providerLabel case final label?) 'provider.$label',
            for (final label in e.moduleProviders) 'provider.$label',
          },
          declaresLocal: declares,
        ),
      );
      _migrated.add(
        MigratedItem(
          address: b.address,
          dartName: referenced.contains(b.address) ? e.dartName : null,
        ),
      );
    }

    final movedFroms = <String>{};
    for (final ex in _expansions.values) {
      if (ex.isData) continue;
      for (final inst in ex.item.instances) {
        write(
          'moved.${inst.from}',
          'addMoved(${dartString(inst.from)}, ${dartString(inst.to)});',
        );
        movedFroms.add(inst.from);
      }
    }
    final translatedMoved = <OpaqueBlock>{};
    for (final o in module.opaque) {
      if (o.type != 'moved' || o.block.labels.isNotEmpty || noStack) continue;
      try {
        for (final stmt in _moved(o, movedFroms, emitted)) {
          write('moved:$stmt', stmt);
        }
        translatedMoved.add(o);
      } on MigrateBlocker catch (e) {
        _keep('moved', e.reason);
        translatedMoved.add(o);
      }
    }

    body.addAll(outputStatements);

    for (final (:at, :address) in keptAt.reversed) {
      final read = RegExp(
        '(?<![\\w.\\-])${RegExp.escape(address)}(?![\\w\\-])',
      );
      if (!body.any((s) => read.hasMatch(s.text))) continue;
      body.insert(
        at,
        StackStatement(
          tag: 'external.$address',
          text: 'addExternalBlock(${dartString(address)});',
        ),
      );
    }

    for (final l in module.locals) {
      _keep('local.${l.name}', _localReason);
    }
    for (final o in module.opaque) {
      if (translatedMoved.contains(o)) continue;
      final labels = o.block.labels.map((l) => '.${l.text}').join();
      _keep('${o.type}$labels', 'no synth path for "${o.type}" blocks');
    }
    for (final a in module.strayAttributes) {
      _keep(a.name, 'a top-level attribute is not valid Terraform');
    }
    for (final w in module.warnings) {
      _warnings.add(w.toString());
    }

    final usesWorkspace = emitted.values.any((e) => e.usesWorkspace);
    final parameters = usesWorkspace ? '{required String workspace}' : '';
    final packages = ctx.imports.keys.toList()..sort();
    final wrappers = noStack
        ? const <String>[]
        : (_moduleWrappers.toList()..sort());
    final imports = <String>[
      if (packages.isEmpty)
        "import 'package:terradart_core/terradart_core.dart';",
      for (final p in packages)
        for (final barrel in (ctx.imports[p]!.toList()..sort()))
          "import 'package:$p/$barrel.dart';",
      for (final w in wrappers) "import '$w.dart';",
    ];
    final src = StringBuffer()
      ..writeln(
        '/// $stackClass — migrated from `$moduleName` by terradart-migrate $version.',
      )
      ..writeln('///')
      ..writeln(
        '/// One Stack per Terraform module directory. Resource addresses are',
      )
      ..writeln(
        '/// preserved, so `terraform plan` against the existing state reports',
      )
      ..writeln('/// no changes once the sidecar is in place.')
      ..writeln('library;')
      ..writeln()
      ..writeln(imports.join('\n'))
      ..writeln()
      ..writeln('final class $stackClass extends Stack {')
      ..writeln('  $stackClass($parameters) : super($ctorInit) {')
      ..writeln([for (final s in body) '${s.comments}${s.text}'].join('\n'))
      ..writeln('  }')
      ..writeln('}');

    ctx.warnings.addAll(_warnings);
    return EmittedStack(
      stackClass: stackClass,
      source: noStack ? '' : src.toString(),
      hasStack: !noStack,
      packages: packages,
      moduleWrappers: Set.unmodifiable(wrappers),
      usesWorkspace: usesWorkspace,
      statements: List.unmodifiable(body),
      imports: List.unmodifiable(imports),
      ctorInit: ctorInit.toString(),
      envSlotTypes: Map.unmodifiable(_envSlotTypes),
      envValueSources: Map.unmodifiable(_envValueSources),
      envImports: List.unmodifiable(_envImports.toList()..sort()),
      report: MigrationReport(
        module: moduleName,
        stackClass: stackClass,
        migrated: List.unmodifiable(_migrated),
        shapes: Set.unmodifiable({for (final e in emitted.values) ...e.shapes}),
        types: Set.unmodifiable({for (final e in emitted.values) ...e.types}),
        kept: List.unmodifiable(_kept),
        warnings: List.unmodifiable(ctx.warnings),
        packages: packages,
        providers: List.unmodifiable(_registeredProviders),
        expanded: List.unmodifiable([
          for (final e in _expansions.values) e.item,
        ]),
      ),
    );
  }

  void _keep(String address, String reason) {
    _kept.add(KeptItem(address: address, reason: reason));
  }

  late final Map<String, String> _blockComments = !carryComments
      ? const {}
      : {
          for (final r in module.resources) r.address: _dartComments(r.block),
          for (final d in module.dataSources) d.address: _dartComments(d.block),
          for (final c in module.moduleCalls)
            'module.${c.name}': _dartComments(c.block),
        };

  static String _dartComments(Block block) {
    final out = <String>[];
    for (final comment in block.leadingComments) {
      final lines = _commentLines(comment);
      if (lines.isEmpty || lines.first.startsWith('terradart-migrate:')) {
        continue;
      }
      for (final line in lines) {
        out.add(line.isEmpty ? '//' : '// $line');
      }
    }
    return out.isEmpty ? '' : '${out.join('\n')}\n';
  }

  static List<String> _commentLines(Comment comment) {
    var text = comment.text.trim();
    if (comment.isBlock) {
      text = text
          .replaceFirst(RegExp(r'^/\*'), '')
          .replaceFirst(RegExp(r'\*/$'), '');
    }
    final out = <String>[];
    for (final raw in const LineSplitter().convert(text)) {
      out.add(
        raw.trim().replaceFirst(
          comment.isBlock ? RegExp(r'^\*\s?') : RegExp(r'^(#+|//)\s?'),
          '',
        ),
      );
    }
    while (out.isNotEmpty && out.last.isEmpty) {
      out.removeLast();
    }
    while (out.isNotEmpty && out.first.isEmpty) {
      out.removeAt(0);
    }
    return out;
  }

  bool _externalizeUnmodeled(
    _ProviderRecipe recipe,
    String providerName,
    String label,
    ProviderBlock block,
  ) {
    final values = objectMap(bodyAsObject(block.body)) ?? {};
    final secrets = droppedProviderArguments[providerName] ?? const {};
    final unmodeled = <String>[];
    final secretKeys = <String>[];
    for (final key in values.keys) {
      if (key == 'alias') continue;
      if (secrets.contains(key)) {
        secretKeys.add(key);
        continue;
      }
      if (!recipe.args.containsKey(key)) unmodeled.add(key);
    }
    if (unmodeled.isEmpty) return false;
    for (final key in secretKeys) {
      _warnings.add(
        'provider "$label": argument "$key" has no '
        '${recipe.className} parameter and was dropped',
      );
    }
    final listed = unmodeled.map((k) => '"$k"').join(', ');
    _keep(
      'provider.$label',
      'provider "$label" sets $listed, which ${recipe.className} does not '
          'model; the configuration stays in Terraform',
    );
    return true;
  }

  ({List<String> args, bool isConst}) _providerArgs(
    _ProviderRecipe recipe,
    String label,
    ProviderBlock block,
  ) {
    final overrides = envValues['provider.$label'] ?? const <String, String>{};
    var isConst = true;
    final values = objectMap(bodyAsObject(block.body)) ?? {};
    final args = <String>[];
    for (final entry in values.entries) {
      if (entry.key == 'alias') continue;
      final arg = recipe.args[entry.key];
      final override = overrides[entry.key];
      if (arg is _Scalar && override != null) {
        isConst = false;
        args.add('${arg.param}: $override');
        continue;
      }
      if (arg == null) {
        _warnings.add(
          'provider "$label": argument "${entry.key}" has no '
          '${recipe.className} parameter and was dropped',
        );
        continue;
      }
      final value = _providerValue(arg, entry.value, label, entry.key);
      if (value != null) args.add('${arg.param}: $value');
    }
    return (args: args, isConst: isConst);
  }

  String? _providerValue(
    _ProviderArg arg,
    Expr expr,
    String label,
    String path,
  ) {
    String? drop() {
      _warnings.add(
        'provider "$label": argument "$path" is not a literal and was '
        'dropped',
      );
      return null;
    }

    String? literalString(Object? json) =>
        json is String && !json.contains(r'${') ? json : null;

    switch (arg) {
      case _Scalar():
        final json = jsonValue(expr);
        final literal =
            json == null ||
            json is bool ||
            json is num ||
            literalString(json) != null;
        return literal ? dartValue(json) : drop();
      case _Strings():
        final json = jsonValue(expr);
        if (json is! List) return drop();
        final items = json.map(literalString).toList();
        if (items.contains(null)) return drop();
        return items.isEmpty ? '<String>[]' : dartValue(items);
      case _StringMap(:final key):
        var map = objectMap(expr);
        if (key == null && expr is TupleExpr && expr.elements.length > 1) {
          // Terraform allows repeated map blocks (e.g. endpoints); merge them unless keys conflict.
          final merged = <String, Expr>{};
          for (final block in expr.elements) {
            final m = objectMap(block);
            if (m == null) return drop();
            for (final MapEntry(key: k, :value) in m.entries) {
              final prior = merged[k];
              if (prior != null && jsonValue(prior) != jsonValue(value)) {
                return drop();
              }
              merged[k] = value;
            }
          }
          map = merged;
        }
        if (key != null) {
          final inner = map?[key];
          map = inner == null ? null : objectMap(inner);
        }
        if (map == null) return drop();
        final out = <String, String>{};
        for (final MapEntry(key: k, :value) in map.entries) {
          final s = literalString(jsonValue(value));
          if (s == null) return drop();
          out[k] = s;
        }
        return out.isEmpty ? '<String, String>{}' : dartValue(out);
      case _Blocks(:final className, :final fields, :final repeated):
        final blocks = expr is TupleExpr ? expr.elements : [expr];
        if (!repeated && blocks.isEmpty) return drop();
        if (!repeated && blocks.length > 1) {
          _warnings.add(
            'provider "$label": only the first "$path" block is migrated',
          );
        }
        final instances = <String>[];
        for (final b in repeated ? blocks : blocks.take(1)) {
          final values = objectMap(b);
          if (values == null) return drop();
          final named = <String>[];
          for (final MapEntry(key: k, :value) in values.entries) {
            final field = fields[k];
            if (field == null) {
              _warnings.add(
                'provider "$label": argument "$path.$k" has no $className '
                'parameter and was dropped',
              );
              continue;
            }
            final v = _providerValue(field, value, label, '$path.$k');
            if (v != null) named.add('${field.param}: $v');
          }
          instances.add('$className(${named.join(', ')})');
        }
        return repeated ? '[${instances.join(', ')}]' : instances.single;
    }
  }

  _Emitted _emitBlock(_BlockInfo b, String dartName) {
    if (b.call != null) {
      final blocker = b.expansionBlocker;
      if (blocker != null) throw MigrateBlocker(blocker);
      return _emitModuleCall(b, dartName);
    }
    final hit = ctx.lookup(b.type, b.kind);
    if (hit == null) {
      throw MigrateBlocker(
        'no curated factory for ${b.isData ? 'data source' : 'resource'} '
        'type "${b.type}" (request curation)',
      );
    }
    final entry = hit.entry;
    final manifest = hit.manifest;
    final expansionBlocker = b.expansionBlocker;
    if (expansionBlocker != null) throw MigrateBlocker(expansionBlocker);
    final values = objectMap(bodyAsObject(b.body)) ?? {};
    for (final meta in _blockedMeta.keys) {
      if (values.containsKey(meta)) throw MigrateBlocker(_blockedMeta[meta]!);
    }
    final emitter = ValueEmitter(
      ctx,
      manifest,
      sensitivePaths: b.isData
          ? const {}
          : ctx.sensitive.of(manifest.package, b.type, b.kind),
      envValues: envValues[b.address] ?? const {},
      liftWorkspace: liftWorkspace,
    );

    final extras = <String>[];
    String? providerName;
    String? providerLabel;
    final provider = values.remove('provider');
    if (provider != null) {
      // Terraform HCL writes provider as a traversal (google.west); tf.json writes a string.
      final selected = provider.constantString ?? hclSource(provider);
      final own = _defaultProviderFor(manifest.package, b.type);
      if (selected != own) {
        final dot = selected.indexOf('.');
        final name = dot < 0 ? selected : selected.substring(0, dot);
        final alias = dot < 0 ? null : selected.substring(dot + 1);
        if (!_providerRecipes.containsKey(name)) {
          throw MigrateBlocker(
            'provider = $selected: provider "$name" has no TerraDart factory',
          );
        }
        if (alias != null) {
          final configured = module.providers.any(
            (p) => p.name == name && p.alias == alias,
          );
          if (childModule && configured) {
            throw MigrateBlocker(
              'provider = $selected: a provider configuration inside a child '
              'module stays in Terraform, and so does a resource that '
              'selects it',
            );
          }
          if (!configured) {
            if (!childModule) {
              throw MigrateBlocker(
                'provider = $selected: this module has no provider "$name" '
                'block with alias = "$alias"',
              );
            }
            _configurationAliases.add(selected);
          }
        }
        providerName = name;
        providerLabel = selected;
        extras.add('provider: ${_selectProvider(selected)}');
      }
    }
    final dependsOn = values.remove('depends_on');
    if (dependsOn != null) {
      extras.add('dependsOn: ${_dependsOn(dependsOn, emitter)}');
    }
    final lifecycle = values.remove('lifecycle');
    if (lifecycle != null) {
      if (b.isData) {
        throw MigrateBlocker('lifecycle on a data source has no synth path');
      }
      extras.add('lifecycle: ${_lifecycle(lifecycle, emitter)}');
    }
    final timeouts = values.remove('timeouts');
    if (timeouts != null) {
      extras.add('timeouts: ${_timeouts(timeouts)}');
    }

    final level = BodyLevel(values, path: '');
    final args = emitter.emitArgs(entry.slots, level);
    level.checkClaimed();
    _envSlotTypes.addAll(emitter.envSlotTypes);
    _envValueSources.addAll(emitter.envValueSources);
    if (emitter.envValueSources.isNotEmpty) {
      _envImports.add(
        "import 'package:${manifest.package}/${entry.barrel}.dart';",
      );
    }
    final ctor =
        '${entry.className}(${dartString(b.name)}'
        '${args.isEmpty ? '' : ', ${args.join(', ')}'}'
        '${extras.isEmpty ? '' : ', ${extras.join(', ')}'})';
    return _Emitted(
      address: b.address,
      tfType: b.type,
      dartName: dartName,
      call: 'add($ctor)',
      usesWorkspace: emitter.usedWorkspace,
      usedTargets: emitter.usedTargets,
      usedVariables: emitter.usedVariables,
      usedHandles: emitter.usedHandles,
      shapes: emitter.shapes,
      types: emitter.types,
      package: manifest.package,
      barrel: entry.barrel,
      isData: b.isData,
      providerName: providerName,
      providerLabel: providerLabel,
    );
  }

  static const _moduleManifest = MigrateManifest(
    package: '',
    entries: [],
    helpers: {},
    enums: {},
  );

  _Emitted _emitModuleCall(_BlockInfo b, String dartName) {
    final call = b.call!;
    // Terraform treats dynamic, provisioner, connection, and timeouts as ordinary module inputs, not meta-arguments.
    final values = objectMap(bodyAsObject(b.body)) ?? {};
    for (final meta in const ['count', 'for_each']) {
      if (values.containsKey(meta)) {
        throw MigrateBlocker(
          'a $meta on a module call addresses its instances '
          '`module.${call.name}[...]`, which no ModuleCall output spells',
        );
      }
    }
    if (values.containsKey('lifecycle')) {
      throw MigrateBlocker('lifecycle on a module call has no synth path');
    }

    final sourceExpr = values.remove('source');
    if (sourceExpr == null) throw MigrateBlocker('the call has no "source"');
    final source = sourceExpr.constantString;
    if (source == null) {
      throw MigrateBlocker(
        'source = ${hclSource(sourceExpr)} is not a literal',
      );
    }
    final extras = <String>[dartString(call.name)];
    extras.add('source: ${dartString(source)}');
    final versionExpr = values.remove('version');
    if (versionExpr != null) {
      final version = versionExpr.constantString;
      if (version == null) {
        throw MigrateBlocker(
          'version = ${hclSource(versionExpr)} is not a literal',
        );
      }
      extras.add('version: ${dartString(version)}');
    }

    final emitter = ValueEmitter(
      ctx,
      _moduleManifest,
      sensitivePaths: const {},
      envValues: envValues[b.address] ?? const {},
      liftWorkspace: liftWorkspace,
    );
    final moduleProviders = <String>[];
    final providers = values.remove('providers');
    if (providers != null) {
      extras.add(_moduleProviders(providers, moduleProviders));
    }
    final dependsOn = values.remove('depends_on');
    if (dependsOn != null) {
      extras.add('dependsOn: ${_dependsOn(dependsOn, emitter)}');
    }

    final local = localModules[call.name];
    final level = BodyLevel(values, path: '');
    final String ctor;
    if (local == null) {
      final inputs = <String>[];
      for (final key in values.keys) {
        final expr = emitter.emitSlot(_input(key, 'Object?'), level);
        if (expr != null) inputs.add('${dartString(key)}: $expr');
      }
      if (inputs.isNotEmpty) extras.add('inputs: {${inputs.join(', ')}}');
      ctor = 'ModuleCall(${extras.join(', ')})';
    } else {
      final args = emitter.emitArgs([
        for (final i in local.inputs)
          _input(
            i.tfName,
            i.dartType,
            dartName: i.dartName,
            required: i.required,
          ),
      ], level);
      ctor =
          '${local.className}(${extras.join(', ')}'
          '${args.isEmpty ? '' : ', ${args.join(', ')}'})';
    }
    level.checkClaimed();
    _envSlotTypes.addAll(emitter.envSlotTypes);
    return _Emitted(
      address: b.address,
      tfType: 'module',
      dartName: dartName,
      call: 'addModule($ctor)',
      usesWorkspace: emitter.usedWorkspace,
      usedTargets: emitter.usedTargets,
      usedVariables: emitter.usedVariables,
      usedHandles: emitter.usedHandles,
      package: '',
      barrel: '',
      isModule: true,
      moduleProviders: moduleProviders,
      wrapperFile: local?.fileStem,
    );
  }

  static MigrateSlot _input(
    String tfName,
    String dartType, {
    String? dartName,
    bool required = false,
  }) => MigrateSlot(
    tfName: tfName,
    dartName: dartName ?? tfName,
    kind: MigrateSlotKind.scalar,
    required: required,
    dartType: dartType,
  );

  String _moduleProviders(Expr value, List<String> selected) {
    final m = objectMap(value);
    if (m == null) {
      throw MigrateBlocker('providers must be a map of provider references');
    }
    final entries = <String>[];
    for (final entry in m.entries) {
      final ref =
          entry.value.constantString ??
          (singleReference(entry.value) == null
              ? null
              : hclSource(singleReference(entry.value)!));
      if (ref == null) {
        throw MigrateBlocker(
          'providers.${entry.key} = ${hclSource(entry.value)} is not a '
          'provider reference',
        );
      }
      final dot = ref.indexOf('.');
      final name = dot < 0 ? ref : ref.substring(0, dot);
      final alias = dot < 0 ? null : ref.substring(dot + 1);
      if (!_providerRecipes.containsKey(name)) {
        throw MigrateBlocker(
          'providers.${entry.key} = $ref: provider "$name" has no TerraDart '
          'factory',
        );
      }
      if (alias != null) {
        final configured = module.providers.any(
          (p) => p.name == name && p.alias == alias,
        );
        if (childModule && configured) {
          throw MigrateBlocker(
            'providers.${entry.key} = $ref: a provider configuration inside a '
            'child module stays in Terraform',
          );
        }
        if (!configured) {
          if (!childModule) {
            throw MigrateBlocker(
              'providers.${entry.key} = $ref: this module has no provider '
              '"$name" block with alias = "$alias"',
            );
          }
          _configurationAliases.add(ref);
        }
      }
      selected.add(ref);
      entries.add('${dartString(entry.key)}: ${_selectProvider(ref)}');
    }
    return 'providers: {${entries.join(', ')}}';
  }

  String _selectProvider(String label) => _providerHandles[label]!;

  List<String> _moved(
    OpaqueBlock o,
    Set<String> froms,
    Map<String, _Emitted> emitted,
  ) {
    final values = objectMap(bodyAsObject(o.body)) ?? {};
    for (final key in values.keys) {
      if (key != 'from' && key != 'to') {
        throw MigrateBlocker('moved.$key has no synth path');
      }
    }
    TraversalExpr address(String key) {
      final e = values[key];
      if (e == null) throw MigrateBlocker('moved block has no "$key"');
      final text = e.constantString;
      final t = text != null ? _traversalOf(text) : singleReference(e);
      if (t == null) {
        throw MigrateBlocker('moved.$key = ${hclSource(e)} is not an address');
      }
      return t;
    }

    final from = hclSource(address('from'));
    final toTraversal = address('to');
    final to = _rewriter.expr(toTraversal);
    final targets = <String>[];
    final moves = <(String, String)>[];
    switch (to) {
      case TraversalExpr():
        targets.add(hclSource(to));
        moves.add((from, hclSource(to)));
      case TupleExpr(:final elements):
        for (var i = 0; i < elements.length; i++) {
          final t = hclSource(elements[i]);
          targets.add(t);
          moves.add(('$from[$i]', t));
        }
      case ObjectExpr(:final items):
        for (final item in items) {
          final t = hclSource(item.value);
          targets.add(t);
          moves.add(('$from[${hclSource(item.key)}]', t));
        }
      default:
        throw MigrateBlocker('moved.to = ${hclSource(to)} is not an address');
    }
    for (final t in targets) {
      if (t.startsWith('module.')) continue;
      final parts = t.split('.');
      final base = parts.length >= 2
          ? '${parts[0]}.${parts[1].split('[').first}'
          : t;
      if (!emitted.containsKey(base)) {
        throw MigrateBlocker(
          'moved.to = $t: "$base" stays in Terraform, so the block does too',
        );
      }
    }
    final out = <String>[];
    for (final (f, t) in moves) {
      if (f == t) {
        throw MigrateBlocker('moved.from and moved.to are the same address');
      }
      if (!froms.add(f)) {
        throw MigrateBlocker('another moved block already moves "$f"');
      }
      out.add('addMoved(${dartString(f)}, ${dartString(t)});');
      _migrated.add(MigratedItem(address: 'moved.$f'));
    }
    return out;
  }

  String _dependsOn(Expr value, ValueEmitter emitter) {
    if (value is! TupleExpr) {
      throw MigrateBlocker('depends_on must be a list of addresses');
    }
    final out = <String>[];
    for (final e in value.elements) {
      final address =
          e.constantString ??
          (singleReference(e) == null ? null : hclSource(singleReference(e)!));
      if (address == null) {
        throw MigrateBlocker(
          'depends_on entry ${hclSource(e)} is not an address',
        );
      }
      final dartName =
          ctx.targets[address]?.dartName ??
          ctx.moduleTargets[address]?.dartName;
      if (dartName == null) {
        throw MigrateBlocker(
          'depends_on target "$address" is not migrated (a Dart dependency '
          'needs the Dart object)',
        );
      }
      emitter.usedTargets.add(address);
      out.add(dartName);
    }
    return '[${out.join(', ')}]';
  }

  String _timeouts(Expr value) {
    final m = objectMap(value);
    if (m == null) throw MigrateBlocker('timeouts is not a block');
    const operations = {
      'create': 'create',
      'read': 'read',
      'update': 'update',
      'delete': 'delete',
    };
    final args = <String>[];
    for (final entry in m.entries) {
      final param = operations[entry.key];
      if (param == null) {
        throw MigrateBlocker(
          'timeouts.${entry.key} is not a Terraform operation (create, read, '
          'update, delete)',
        );
      }
      final text = entry.value.constantString;
      if (text == null) {
        throw MigrateBlocker(
          'timeouts.${entry.key} = ${hclSource(entry.value)} is not a '
          'duration string',
        );
      }
      final duration = parseGoDuration(text);
      if (duration == null) {
        throw MigrateBlocker(
          'timeouts.${entry.key} = "$text" is not a Terraform duration '
          'string (e.g. "30m")',
        );
      }
      args.add('$param: ${_durationSource(duration)}');
    }
    if (args.isEmpty) throw MigrateBlocker('timeouts sets no operation');
    return 'const TfTimeouts(${args.join(', ')})';
  }

  static String _durationSource(Duration d) {
    final parts = [
      ('hours', d.inHours),
      ('minutes', d.inMinutes % 60),
      ('seconds', d.inSeconds % 60),
      ('milliseconds', d.inMilliseconds % 1000),
      ('microseconds', d.inMicroseconds % 1000),
    ];
    final args = [
      for (final (unit, n) in parts)
        if (n != 0) '$unit: $n',
    ];
    return args.isEmpty ? 'Duration.zero' : 'Duration(${args.join(', ')})';
  }

  String _lifecycle(Expr value, ValueEmitter emitter) {
    final m = objectMap(value);
    if (m == null) throw MigrateBlocker('lifecycle is not a block');
    final args = <String>[];
    final conditions = <String>[];
    for (final entry in m.entries) {
      switch (entry.key) {
        case 'create_before_destroy' || 'prevent_destroy':
          final v = entry.value;
          if (v is! LiteralExpr || v.value is! bool) {
            throw MigrateBlocker('lifecycle.${entry.key} must be a boolean');
          }
          args.add(
            '${entry.key == 'create_before_destroy' ? 'createBeforeDestroy' : 'preventDestroy'}: ${v.value}',
          );
        case 'ignore_changes':
          final v = entry.value;
          if (v.constantString == 'all' ||
              v is TraversalExpr && hclSource(v) == 'all') {
            args.add('ignoreChanges: .all');
            continue;
          }
          if (v is! TupleExpr) {
            throw MigrateBlocker(
              'lifecycle.ignore_changes = ${hclSource(v)} has no synth path '
              '(only a list of attribute paths does)',
            );
          }
          final paths = <String>[];
          for (final e in v.elements) {
            final s =
                e.constantString ?? (e is TraversalExpr ? hclSource(e) : null);
            if (s == null) {
              throw MigrateBlocker(
                'lifecycle.ignore_changes entry ${hclSource(e)} is not an '
                'attribute path',
              );
            }
            paths.add(dartString(s));
          }
          args.add('ignoreChanges: .of([${paths.join(', ')}])');
        case 'replace_triggered_by':
          final v = entry.value;
          if (v is! TupleExpr) {
            throw MigrateBlocker(
              'lifecycle.replace_triggered_by must be a list',
            );
          }
          final refs = <String>[];
          for (final e in v.elements) {
            final t = singleReference(e) ?? _traversalOf(e.constantString);
            final c = t == null ? null : classifyTraversal(t);
            if (c is! BlockReference) {
              throw MigrateBlocker(
                'lifecycle.replace_triggered_by entry ${hclSource(e)} is not '
                'a resource reference',
              );
            }
            final target = ctx.targets[c.address];
            if (target == null) {
              throw MigrateBlocker(
                'lifecycle.replace_triggered_by target "${c.address}" is not '
                'migrated',
              );
            }
            emitter.usedTargets.add(c.address);
            refs.add(
              c.attribute.isEmpty
                  ? target.dartName
                  : 'TfRef.attribute<Object?>(${target.dartName}, ${dartString(c.attribute)})',
            );
          }
          args.add('replaceTriggeredBy: [${refs.join(', ')}]');
        case 'precondition' || 'postcondition':
          final blocks = switch (entry.value) {
            TupleExpr(:final elements) => elements,
            final e => [e],
          };
          for (final b in blocks) {
            final c = objectMap(b);
            final condition = c?['condition'];
            final message = c?['error_message']?.constantString;
            if (condition == null || message == null || c!.length != 2) {
              throw MigrateBlocker(
                'lifecycle.${entry.key} ${hclSource(b)} is not a condition '
                'with a literal error_message',
              );
            }
            final template = jsonValue(condition);
            if (template is! String) {
              throw MigrateBlocker(
                'lifecycle.${entry.key} condition ${hclSource(condition)} is '
                'not an expression',
              );
            }
            emitter.usedVariables.addAll(templateVariableNames(template));
            conditions.add(
              '.${entry.key == 'precondition' ? 'pre' : 'post'}('
              '.expression(${dartString(template)}), ${dartString(message)})',
            );
          }
        default:
          throw MigrateBlocker('lifecycle.${entry.key} has no synth path');
      }
    }
    if (conditions.isNotEmpty) {
      args.add('conditions: [${conditions.join(', ')}]');
    }
    return '.new(${args.join(', ')})';
  }

  String? _keptBackend(String reason) {
    if (module.backend != null) _keep('terraform.backend', reason);
    return null;
  }

  String? _backend() {
    final b = module.backend;
    if (b == null) {
      if (module.terraform.any((t) => t.cloud != null)) return null;
      return null;
    }
    final type = b.labels.isEmpty ? '' : b.labels.first.text;
    final values = objectMap(bodyAsObject(b.body)) ?? {};
    final overrides =
        envValues['terraform.backend'] ?? const <String, String>{};
    var isConst = true;
    String? arg(String param, String key) {
      final v = values[key];
      if (v == null) return null;
      final override = overrides[key];
      if (override != null) {
        isConst = false;
        return '$param: $override';
      }
      final s = v.constantString;
      if (s == null) {
        throw MigrateBlocker('backend "$type": "$key" is not a literal');
      }
      return '$param: ${dartString(s)}';
    }

    try {
      switch (type) {
        case 'gcs':
          final extra = values.keys.where(
            (k) => k != 'bucket' && k != 'prefix',
          );
          if (extra.isNotEmpty) {
            throw MigrateBlocker(
              'backend "gcs": GcsBackend has no parameter for '
              '${extra.map((k) => '"$k"').join(', ')}',
            );
          }
          final bucket = arg('bucket', 'bucket');
          final prefix = arg('prefix', 'prefix');
          final args = <String>[?bucket, ?prefix];
          _migrated.add(const MigratedItem(address: 'terraform.backend'));
          return '${isConst ? 'const ' : ''}GcsBackend(${args.join(', ')})';
        case 'local':
          final extra = values.keys.where((k) => k != 'path');
          if (extra.isNotEmpty) {
            throw MigrateBlocker(
              'backend "local": LocalBackend has no parameter for '
              '${extra.map((k) => '"$k"').join(', ')}',
            );
          }
          final path = arg('path', 'path');
          _migrated.add(const MigratedItem(address: 'terraform.backend'));
          return '${isConst ? 'const ' : ''}LocalBackend(${path ?? ''})';
        case 's3':
          const params = {
            'bucket': 'bucket',
            'key': 'key',
            'region': 'region',
            'endpoints': 'endpoints',
            'use_path_style': 'usePathStyle',
            'skip_credentials_validation': 'skipCredentialsValidation',
            'skip_region_validation': 'skipRegionValidation',
            'skip_requesting_account_id': 'skipRequestingAccountId',
            'skip_metadata_api_check': 'skipMetadataApiCheck',
            'skip_s3_checksum': 'skipS3Checksum',
          };
          final args = <String>[];
          for (final entry in values.entries) {
            final param = params[entry.key];
            if (param == null) {
              throw MigrateBlocker(
                'backend "s3": S3Backend has no parameter for "${entry.key}"',
              );
            }
            final override = overrides[entry.key];
            if (override != null) {
              isConst = false;
              args.add('$param: $override');
              continue;
            }
            final json = jsonValue(entry.value);
            if (json is String && json.contains(r'${')) {
              throw MigrateBlocker(
                'backend "s3": "${entry.key}" is not a literal',
              );
            }
            args.add('$param: ${dartValue(json)}');
          }
          _migrated.add(const MigratedItem(address: 'terraform.backend'));
          return '${isConst ? 'const ' : ''}S3Backend(${args.join(', ')})';
        case 'azurerm':
          const params = [
            'resource_group_name',
            'storage_account_name',
            'container_name',
            'key',
          ];
          final dropped =
              droppedProviderArguments['azurerm'] ?? const <String>{};
          for (final key in values.keys.where(dropped.contains)) {
            _warnings.add(
              'backend "azurerm": argument "$key" has no TerraDart '
              'parameter and was dropped',
            );
          }
          final extra = values.keys.where(
            (k) => !params.contains(k) && !dropped.contains(k),
          );
          if (extra.isNotEmpty) {
            throw MigrateBlocker(
              'backend "azurerm": AzurermBackend has no parameter for '
              '${extra.map((k) => '"$k"').join(', ')}',
            );
          }
          final args = <String>[
            ?arg('resourceGroupName', 'resource_group_name'),
            ?arg('storageAccountName', 'storage_account_name'),
            ?arg('containerName', 'container_name'),
            ?arg('key', 'key'),
          ];
          _migrated.add(const MigratedItem(address: 'terraform.backend'));
          return '${isConst ? 'const ' : ''}AzurermBackend(${args.join(', ')})';
        default:
          final dropped = droppedProviderArguments[type] ?? const <String>{};
          for (final key in values.keys.where(dropped.contains)) {
            _warnings.add(
              'backend "$type": argument "$key" has no TerraDart '
              'parameter and was dropped',
            );
          }
          throw MigrateBlocker(
            'backend "$type" has no TerraDart type; it stays in backend.tf',
          );
      }
    } on MigrateBlocker catch (e) {
      _keep('terraform.backend', e.reason);
      return null;
    }
  }

  VariableType _variableType(VariableBlock v) {
    final values = objectMap(bodyAsObject(v.body)) ?? {};
    final defaultExpr = values['default'];
    final defaultValue = defaultExpr == null ? null : jsonValue(defaultExpr);
    return variableTypeOf(values['type'], defaultValue: defaultValue);
  }

  static String _externalVariable(String name) =>
      'externalVariable(${dartString(name)});';

  String? _variable(VariableBlock v, VariableType type) {
    final values = objectMap(bodyAsObject(v.body)) ?? {};
    final overrides =
        envValues['variable.${v.name}'] ?? const <String, String>{};
    final args = <String>[dartString(v.name)];
    try {
      for (final entry in values.entries) {
        final value = entry.value;
        final override = overrides[entry.key];
        switch (entry.key) {
          case 'type':
            if (type.tfType case final tfType?) args.add('type: $tfType');
          case 'description':
            if (override != null) {
              args.add('description: $override');
              break;
            }
            final s = value.constantString;
            if (s == null) throw MigrateBlocker('description is not a literal');
            args.add('description: ${dartString(s)}');
          case 'default':
            if (override != null) {
              if (type.dartType != 'Object?') {
                _envSlotTypes[override] = type.dartType;
              }
              args.add('defaultValue: $override');
              break;
            }
            args.add('defaultValue: ${dartValue(jsonValue(value))}');
          case 'sensitive' || 'nullable':
            if (value is! LiteralExpr || value.value is! bool) {
              throw MigrateBlocker('${entry.key} must be a boolean');
            }
            args.add('${entry.key}: ${value.value}');
          default:
            throw MigrateBlocker(
              '"${entry.key}" has no Stack.variable argument; the variable '
              'stays in Terraform (declared as external)',
            );
        }
      }
    } on MigrateBlocker catch (e) {
      _keep('variable.${v.name}', e.reason);
      return null;
    }
    return 'variable<${type.dartType}>(${args.join(', ')});';
  }

  ({String statement, String address})? _output(OutputBlock o) {
    final values = objectMap(bodyAsObject(o.body)) ?? {};
    try {
      var value = values['value'];
      if (value == null) throw MigrateBlocker('output has no value');
      value = _rewriter.expr(value);
      final t = singleReference(value);
      final c = t == null ? null : classifyTraversal(t);
      final isModule = c is ModuleReference;
      final address = switch (c) {
        BlockReference(:final address) => address,
        ModuleReference(:final address) => address,
        _ => null,
      };
      final attribute = switch (c) {
        BlockReference(:final attribute) => attribute,
        ModuleReference(:final attribute) => attribute,
        _ => '',
      };
      if (address == null || attribute.isEmpty) {
        throw MigrateBlocker(
          'only an output whose value is one resource or module attribute '
          'becomes addOutput; this one stays in outputs.tf',
        );
      }
      final target = isModule ? null : ctx.targets[address];
      final moduleTarget = isModule ? ctx.moduleTargets[address] : null;
      if (target == null && moduleTarget == null) {
        throw MigrateBlocker(
          'output references "$address", which is not migrated',
        );
      }
      final args = <String>[];
      for (final entry in values.entries) {
        final v = entry.value;
        switch (entry.key) {
          case 'value':
            break;
          case 'description':
            final s = v.constantString;
            if (s == null) throw MigrateBlocker('description is not a literal');
            args.add('description: ${dartString(s)}');
          case 'sensitive':
            if (v is! LiteralExpr || v.value is! bool) {
              throw MigrateBlocker('sensitive must be a boolean');
            }
            if (v.value == true) args.add('sensitive: true');
          default:
            throw MigrateBlocker(
              '"${entry.key}" has no addOutput equivalent; the output stays '
              'in outputs.tf',
            );
        }
      }
      final dartName = target?.dartName ?? moduleTarget!.dartName;
      final getterName = target != null
          ? target.getter(attribute)?.dartName
          : moduleTarget!.getter(attribute)?.dartName;
      final ref = getterName != null
          ? '$dartName.$getterName'
          : 'TfRef.attribute<Object?>($dartName, ${dartString(attribute)})';
      final dartType = getterName == null
          ? 'Object?'
          : target?.getter(attribute)?.dartType ?? 'String';
      _outputRefs.add(address);
      if (!args.contains('sensitive: true')) {
        _environment.add((
          name: o.name,
          variable: outputEnvironmentName(o.name),
          value: dartType == 'String' || dartType == 'String?'
              ? _interpolated(value)
              : 'jsonencode(${_interpolated(value)})',
        ));
      }
      return (
        statement:
            'addOutput(${[dartString(o.name), ref, ...args].join(', ')});',
        address: address,
      );
    } on MigrateBlocker catch (e) {
      _keep('output.${o.name}', e.reason);
      return null;
    }
  }

  final _outputRefs = <String>{};
  final _environment = <({String name, String variable, String value})>[];

  String? _dartDefineOutput(OutputBlock o) {
    final values = objectMap(bodyAsObject(o.body)) ?? {};
    final object = values['value'];
    if (object is! ObjectExpr || object.items.isEmpty) return null;
    final carried = <String>[];
    for (final item in object.items) {
      final key = item.key.constantString;
      final match = [
        for (final e in _environment)
          if (e.variable == key) e,
      ];
      if (match.length != 1 ||
          carried.contains(match.single.name) ||
          _interpolated(_rewriter.expr(item.value)) != match.single.value) {
        return null;
      }
      carried.add(match.single.name);
    }
    final args = <String>[
      if (o.name != 'dart_defines') 'name: ${dartString(o.name)}',
      if (carried.join('\n') !=
          [for (final e in _environment) e.name].join('\n'))
        'only: [${carried.map(dartString).join(', ')}]',
    ];
    for (final MapEntry(:key, value: v) in values.entries) {
      switch (key) {
        case 'value':
          break;
        case 'description':
          final s = v.constantString;
          if (s == null) return null;
          args.add('description: ${dartString(s)}');
        default:
          return null;
      }
    }
    return 'addDartDefineOutput(${args.join(', ')});';
  }

  static String _interpolated(Expr value) => switch (value) {
    TemplateExpr(
      parts: [
        TemplateInterpolation(:final expr, stripLeft: false, stripRight: false),
      ],
    ) =>
      hclSource(expr),
    _ => hclSource(value),
  };

  List<_BlockInfo> _blocksInOrder(Map<String, String> refused) {
    _expansions.clear();
    final taken = <String, Set<String>>{};
    for (final d in module.dataSources) {
      taken.putIfAbsent('data.${d.type}', () => {}).add(d.name);
    }
    for (final r in module.resources) {
      taken.putIfAbsent(r.type, () => {}).add(r.name);
    }

    final collected = <_BlockInfo>[];
    void collect({
      required String address,
      required String type,
      required String name,
      required CatalogKind kind,
      required Body body,
      required bool isData,
    }) {
      Expansion? expansion;
      var blocker = refused[address];
      final names = taken[isData ? 'data.$type' : type]!;
      if (blocker == null) {
        try {
          expansion = expandBlock(
            type: type,
            name: name,
            body: body,
            isData: isData,
            siblingNames: names,
          );
        } on MigrateBlocker catch (e) {
          blocker = e.reason;
        }
      }
      if (expansion != null) {
        for (final instance in expansion.item.instances) {
          names.add(instance.to.split('.').last);
        }
      }
      if (expansion == null) {
        collected.add(
          _BlockInfo(
            address: address,
            type: type,
            name: name,
            kind: kind,
            body: body,
            isData: isData,
            expansionBlocker: blocker,
          ),
        );
        return;
      }
      _expansions[address] = expansion;
      for (var i = 0; i < expansion.bodies.length; i++) {
        final instance = expansion.item.instances[i];
        collected.add(
          _BlockInfo(
            address: instance.to,
            type: type,
            name: instance.to.split('.').last,
            kind: kind,
            body: expansion.bodies[i],
            isData: isData,
            expandedFrom: instance.from,
          ),
        );
      }
    }

    for (final d in module.dataSources) {
      collect(
        address: d.address,
        type: d.type,
        name: d.name,
        kind: CatalogKind.dataSource,
        body: d.body,
        isData: true,
      );
    }
    for (final r in module.resources) {
      collect(
        address: r.address,
        type: r.type,
        name: r.name,
        kind: CatalogKind.resource,
        body: r.body,
        isData: false,
      );
    }
    for (final c in module.moduleCalls) {
      collected.add(
        _BlockInfo(
          address: 'module.${c.name}',
          type: 'module',
          name: c.name,
          kind: CatalogKind.resource,
          body: c.body,
          isData: false,
          call: c,
        ),
      );
    }

    _rewriter = ReferenceRewriter([for (final e in _expansions.values) e.item]);
    final all = <_BlockInfo>[];
    for (final b in collected) {
      if (_rewriter.isEmpty || b.expansionBlocker != null) {
        all.add(b);
        continue;
      }
      try {
        all.add(b.withBody(_rewriter.body(b.body, topLevel: true)));
      } on MigrateBlocker catch (e) {
        all.add(b.withBlocker(e.reason));
      }
    }

    final index = {for (final b in all) b.address: b};
    final deps = <String, Set<String>>{
      for (final b in all)
        b.address: _references(b).where(index.containsKey).toSet(),
    };
    final out = <_BlockInfo>[];
    final done = <String>{};
    var progress = true;
    while (out.length < all.length && progress) {
      progress = false;
      for (final b in all) {
        if (done.contains(b.address)) continue;
        if (deps[b.address]!.every(done.contains)) {
          out.add(b);
          done.add(b.address);
          progress = true;
        }
      }
    }
    for (final b in all) {
      if (!done.contains(b.address)) out.add(b);
    }
    return out;
  }

  Set<String> _references(_BlockInfo b) {
    final out = <String>{};
    void visit(Expr e) {
      final t = singleReference(e);
      if (t != null) {
        final c = classifyTraversal(t);
        if (c is BlockReference) out.add(c.address);
        if (c is ModuleReference) out.add(c.address);
      }
      switch (e) {
        case TemplateExpr(:final parts):
          for (final p in parts) {
            if (p is TemplateInterpolation) visit(p.expr);
          }
        case TupleExpr(:final elements):
          elements.forEach(visit);
        case ObjectExpr(:final items):
          for (final i in items) {
            visit(i.value);
          }
        default:
          break;
      }
    }

    final values = objectMap(bodyAsObject(b.body)) ?? {};
    for (final entry in values.entries) {
      switch (entry.key) {
        case 'depends_on':
          _addAddresses(entry.value, out);
        case 'lifecycle':
          // Terraform HCL uses references in replace_triggered_by; tf.json uses address strings.
          final replace = objectMap(entry.value)?['replace_triggered_by'];
          if (replace != null) _addAddresses(replace, out);
          visit(entry.value);
        default:
          visit(entry.value);
      }
    }
    out.remove(b.address);
    return out;
  }
}

void _addAddresses(Expr list, Set<String> out) {
  if (list is! TupleExpr) return;
  for (final e in list.elements) {
    final t = singleReference(e) ?? _traversalOf(e.constantString);
    final c = t == null ? null : classifyTraversal(t);
    if (c is BlockReference) out.add(c.address);
    if (c is ModuleReference) out.add(c.address);
  }
}

TraversalExpr? _traversalOf(String? source) {
  if (source == null) return null;
  try {
    final e = parseHclExpression(source);
    return e is TraversalExpr ? e : null;
  } on HclParseException {
    return null;
  }
}

String _defaultProviderFor(String package, String tfType) =>
    package == 'terradart_google_beta'
    ? 'google-beta'
    : tfType.split('_').first;

final class _BlockInfo {
  const _BlockInfo({
    required this.address,
    required this.type,
    required this.name,
    required this.kind,
    required this.body,
    required this.isData,
    this.expandedFrom,
    this.expansionBlocker,
    this.call,
  });

  final String address;
  final String type;
  final String name;
  final CatalogKind kind;
  final Body body;
  final bool isData;
  final ModuleCallBlock? call;
  final String? expandedFrom;

  String get sourceAddress =>
      expandedFrom?.replaceFirst(RegExp(r'\[.*\]$'), '') ?? address;

  final String? expansionBlocker;

  _BlockInfo withBody(Body body) => _BlockInfo(
    address: address,
    type: type,
    name: name,
    kind: kind,
    body: body,
    isData: isData,
    expandedFrom: expandedFrom,
    expansionBlocker: expansionBlocker,
    call: call,
  );

  _BlockInfo withBlocker(String reason) => _BlockInfo(
    address: address,
    type: type,
    name: name,
    kind: kind,
    body: body,
    isData: isData,
    expandedFrom: expandedFrom,
    expansionBlocker: reason,
    call: call,
  );
}
