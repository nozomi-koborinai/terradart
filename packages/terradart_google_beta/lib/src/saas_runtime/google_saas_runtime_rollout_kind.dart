// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_rollout_kind`.
const Set<String> _googleSaasRuntimeRolloutKindSensitive = <String>{};

/// Factory wrapper for `google_saas_runtime_rollout_kind`.
final class GoogleSaasRuntimeRolloutKind extends Resource {
  static const String tfType = 'google_saas_runtime_rollout_kind';

  GoogleSaasRuntimeRolloutKind({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> rolloutKindId,
    TfArg<String>? rolloutOrchestrationStrategy,
    TfArg<String>? unitFilter,
    required TfArg<String> unitKind,
    TfArg<String>? updateUnitKindStrategy,
    TfArg<Map<String, dynamic>>? errorBudget,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'rollout_kind_id': rolloutKindId,
           if (rolloutOrchestrationStrategy != null)
             'rollout_orchestration_strategy': rolloutOrchestrationStrategy,
           if (unitFilter != null) 'unit_filter': unitFilter,
           'unit_kind': unitKind,
           if (updateUnitKindStrategy != null)
             'update_unit_kind_strategy': updateUnitKindStrategy,
           if (errorBudget != null) 'error_budget': errorBudget,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeRolloutKindSensitive;
}
