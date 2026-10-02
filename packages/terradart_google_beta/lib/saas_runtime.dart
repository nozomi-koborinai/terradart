// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// SaaS Runtime units, tenants, releases, and rollouts (beta-only).
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/saas_runtime/google_saas_runtime_release.dart'
    show
        GoogleSaasRuntimeRelease,
        SaasRuntimeReleaseBlueprint,
        SaasRuntimeReleaseInputVariableDefaults,
        SaasRuntimeReleaseRequirements,
        SaasRuntimeReleaseType;
export 'src/saas_runtime/google_saas_runtime_rollout_kind.dart'
    show
        GoogleSaasRuntimeRolloutKind,
        SaasRuntimeRolloutKindErrorBudget,
        SaasRuntimeRolloutKindUpdateUnitKindStrategy;
export 'src/saas_runtime/google_saas_runtime_saas.dart'
    show GoogleSaasRuntimeSaas, SaasRuntimeSaasLocations;
export 'src/saas_runtime/google_saas_runtime_tenant.dart'
    show GoogleSaasRuntimeTenant;
export 'src/saas_runtime/google_saas_runtime_unit.dart'
    show GoogleSaasRuntimeUnit, SaasRuntimeUnitMaintenance;
export 'src/saas_runtime/google_saas_runtime_unit_kind.dart'
    show
        GoogleSaasRuntimeUnitKind,
        SaasRuntimeUnitKindDependencies,
        SaasRuntimeUnitKindFrom,
        SaasRuntimeUnitKindInputVariableMappings,
        SaasRuntimeUnitKindOutputVariableMappings,
        SaasRuntimeUnitKindTo;
export 'src/saas_runtime/google_saas_runtime_unit_operation.dart'
    show
        GoogleSaasRuntimeUnitOperation,
        SaasRuntimeUnitOperationDeprovision,
        SaasRuntimeUnitOperationInputVariables,
        SaasRuntimeUnitOperationProvision,
        SaasRuntimeUnitOperationUpgrade;
