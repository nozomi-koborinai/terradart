// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_rollout_kind`.
const Set<String> _googleSaasRuntimeRolloutKindSensitive = <String>{};

/// Saas Runtime Rollout Kind Update Unit Kind enum for `update_unit_kind_strategy`.
enum SaasRuntimeRolloutKindUpdateUnitKindStrategy implements TerraformEnum {
  updateUnitKindStrategyOnStart('UPDATE_UNIT_KIND_STRATEGY_ON_START'),
  updateUnitKindStrategyNever('UPDATE_UNIT_KIND_STRATEGY_NEVER');

  const SaasRuntimeRolloutKindUpdateUnitKindStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `error_budget` block of
/// `google_saas_runtime_rollout_kind` (derived from provider schema).
@immutable
final class SaasRuntimeRolloutKindErrorBudget {
  const SaasRuntimeRolloutKindErrorBudget({
    this.allowedCount,
    this.allowedPercentage,
  });

  final TfArg<num>? allowedCount;

  final TfArg<num>? allowedPercentage;

  Map<String, Object?> encode() => {
    'allowed_count': ?allowedCount?.toTfJson(),
    'allowed_percentage': ?allowedPercentage?.toTfJson(),
  };
}

/// Factory wrapper for `google_saas_runtime_rollout_kind`.
///
/// A RolloutKind is a reusable configuration resource that defines the
/// policies, strategies, and targeting for Rollout operations. It acts as a
/// template for repeatable Rollouts, providing guardrails and ensuring that
/// updates are executed in a consistent manner across a fleet of Units.
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
    TfArg<SaasRuntimeRolloutKindUpdateUnitKindStrategy>? updateUnitKindStrategy,
    SaasRuntimeRolloutKindErrorBudget? errorBudget,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           'rollout_kind_id': rolloutKindId,
           'rollout_orchestration_strategy': ?rolloutOrchestrationStrategy,
           'unit_filter': ?unitFilter,
           'unit_kind': unitKind,
           'update_unit_kind_strategy': ?updateUnitKindStrategy,
           if (errorBudget != null)
             'error_budget': TfArg.literal(errorBudget.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeRolloutKindSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSaasRuntimeRolloutKind>`.
  RefTo<GoogleSaasRuntimeRolloutKind> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `rollout_kind_id` attribute.
  TfRef<String> get rolloutKindIdRef =>
      TfRef.attribute<String>(this, 'rollout_kind_id');

  /// Reference to `rollout_orchestration_strategy` attribute.
  TfRef<String> get rolloutOrchestrationStrategyRef =>
      TfRef.attribute<String>(this, 'rollout_orchestration_strategy');

  /// Reference to `unit_filter` attribute.
  TfRef<String> get unitFilterRef =>
      TfRef.attribute<String>(this, 'unit_filter');

  /// Reference to `unit_kind` attribute.
  TfRef<String> get unitKindRef => TfRef.attribute<String>(this, 'unit_kind');

  /// Reference to `update_unit_kind_strategy` attribute.
  TfRef<String> get updateUnitKindStrategyRef =>
      TfRef.attribute<String>(this, 'update_unit_kind_strategy');
}
