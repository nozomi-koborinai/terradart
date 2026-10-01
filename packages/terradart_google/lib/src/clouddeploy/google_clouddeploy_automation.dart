// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_clouddeploy_automation`.
const Set<String> _googleClouddeployAutomationSensitive = <String>{};

/// Exactly one of `promote_release_rule`, `advance_rollout_rule`, `repair_rollout_rule`, `timed_promote_release_rule` on the `rules` block of `google_clouddeploy_automation`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.promoteReleaseRule(...)`.
sealed class ClouddeployAutomationRules {
  const ClouddeployAutomationRules();

  /// Sets `promote_release_rule`.
  const factory ClouddeployAutomationRules.promoteReleaseRule(
    ClouddeployAutomationPromoteReleaseRule promoteReleaseRule,
  ) = ClouddeployAutomationRulesPromoteReleaseRule;

  /// Sets `advance_rollout_rule`.
  const factory ClouddeployAutomationRules.advanceRolloutRule(
    ClouddeployAutomationAdvanceRolloutRule advanceRolloutRule,
  ) = ClouddeployAutomationRulesAdvanceRolloutRule;

  /// Sets `repair_rollout_rule`.
  const factory ClouddeployAutomationRules.repairRolloutRule(
    ClouddeployAutomationRepairRolloutRule repairRolloutRule,
  ) = ClouddeployAutomationRulesRepairRolloutRule;

  /// Sets `timed_promote_release_rule`.
  const factory ClouddeployAutomationRules.timedPromoteReleaseRule(
    ClouddeployAutomationTimedPromoteReleaseRule timedPromoteReleaseRule,
  ) = ClouddeployAutomationRulesTimedPromoteReleaseRule;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ClouddeployAutomationRules.promoteReleaseRule] choice: sets `promote_release_rule`.
final class ClouddeployAutomationRulesPromoteReleaseRule
    extends ClouddeployAutomationRules {
  const ClouddeployAutomationRulesPromoteReleaseRule(this.promoteReleaseRule);

  final ClouddeployAutomationPromoteReleaseRule promoteReleaseRule;

  @override
  String get blockKey => 'promote_release_rule';

  @override
  Map<String, Object?> encode() => {
    'promote_release_rule': promoteReleaseRule.encode(),
  };
}

/// The [ClouddeployAutomationRules.advanceRolloutRule] choice: sets `advance_rollout_rule`.
final class ClouddeployAutomationRulesAdvanceRolloutRule
    extends ClouddeployAutomationRules {
  const ClouddeployAutomationRulesAdvanceRolloutRule(this.advanceRolloutRule);

  final ClouddeployAutomationAdvanceRolloutRule advanceRolloutRule;

  @override
  String get blockKey => 'advance_rollout_rule';

  @override
  Map<String, Object?> encode() => {
    'advance_rollout_rule': advanceRolloutRule.encode(),
  };
}

/// The [ClouddeployAutomationRules.repairRolloutRule] choice: sets `repair_rollout_rule`.
final class ClouddeployAutomationRulesRepairRolloutRule
    extends ClouddeployAutomationRules {
  const ClouddeployAutomationRulesRepairRolloutRule(this.repairRolloutRule);

  final ClouddeployAutomationRepairRolloutRule repairRolloutRule;

  @override
  String get blockKey => 'repair_rollout_rule';

  @override
  Map<String, Object?> encode() => {
    'repair_rollout_rule': repairRolloutRule.encode(),
  };
}

/// The [ClouddeployAutomationRules.timedPromoteReleaseRule] choice: sets `timed_promote_release_rule`.
final class ClouddeployAutomationRulesTimedPromoteReleaseRule
    extends ClouddeployAutomationRules {
  const ClouddeployAutomationRulesTimedPromoteReleaseRule(
    this.timedPromoteReleaseRule,
  );

  final ClouddeployAutomationTimedPromoteReleaseRule timedPromoteReleaseRule;

  @override
  String get blockKey => 'timed_promote_release_rule';

  @override
  Map<String, Object?> encode() => {
    'timed_promote_release_rule': timedPromoteReleaseRule.encode(),
  };
}

/// Typed helper for the `rules.advance_rollout_rule` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationAdvanceRolloutRule {
  const ClouddeployAutomationAdvanceRolloutRule({
    required this.id,
    this.sourcePhases,
    this.wait,
  });

  final TfArg<String> id;

  final TfArg<List<String>>? sourcePhases;

  final TfArg<String>? wait;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'source_phases': ?sourcePhases?.toTfJson(),
    'wait': ?wait?.toTfJson(),
  };
}

/// Typed helper for the `rules.promote_release_rule` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationPromoteReleaseRule {
  const ClouddeployAutomationPromoteReleaseRule({
    this.destinationPhase,
    this.destinationTargetId,
    required this.id,
    this.wait,
  });

  final TfArg<String>? destinationPhase;

  final TfArg<String>? destinationTargetId;

  final TfArg<String> id;

  final TfArg<String>? wait;

  Map<String, Object?> encode() => {
    'destination_phase': ?destinationPhase?.toTfJson(),
    'destination_target_id': ?destinationTargetId?.toTfJson(),
    'id': id.toTfJson(),
    'wait': ?wait?.toTfJson(),
  };
}

/// Typed helper for the `rules.repair_rollout_rule` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationRepairRolloutRule {
  const ClouddeployAutomationRepairRolloutRule({
    required this.id,
    this.jobs,
    this.phases,
    this.repairPhases,
  });

  final TfArg<String> id;

  final TfArg<List<String>>? jobs;

  final TfArg<List<String>>? phases;

  final List<ClouddeployAutomationRepairPhases>? repairPhases;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'jobs': ?jobs?.toTfJson(),
    'phases': ?phases?.toTfJson(),
    if (repairPhases != null)
      'repair_phases': [for (final e in repairPhases!) e.encode()],
  };
}

/// Exactly one of `retry`, `rollback` on the `rules.repair_rollout_rule.repair_phases` block of `google_clouddeploy_automation`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.retry(...)`.
sealed class ClouddeployAutomationRepairPhases {
  const ClouddeployAutomationRepairPhases();

  /// Sets `retry`.
  const factory ClouddeployAutomationRepairPhases.retry(
    ClouddeployAutomationRetry retry,
  ) = ClouddeployAutomationRepairPhasesRetry;

  /// Sets `rollback`.
  const factory ClouddeployAutomationRepairPhases.rollback(
    ClouddeployAutomationRollback rollback,
  ) = ClouddeployAutomationRepairPhasesRollback;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ClouddeployAutomationRepairPhases.retry] choice: sets `retry`.
final class ClouddeployAutomationRepairPhasesRetry
    extends ClouddeployAutomationRepairPhases {
  const ClouddeployAutomationRepairPhasesRetry(this.retry);

  final ClouddeployAutomationRetry retry;

  @override
  String get blockKey => 'retry';

  @override
  Map<String, Object?> encode() => {'retry': retry.encode()};
}

/// The [ClouddeployAutomationRepairPhases.rollback] choice: sets `rollback`.
final class ClouddeployAutomationRepairPhasesRollback
    extends ClouddeployAutomationRepairPhases {
  const ClouddeployAutomationRepairPhasesRollback(this.rollback);

  final ClouddeployAutomationRollback rollback;

  @override
  String get blockKey => 'rollback';

  @override
  Map<String, Object?> encode() => {'rollback': rollback.encode()};
}

/// Typed helper for the `rules.repair_rollout_rule.repair_phases.retry` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationRetry {
  const ClouddeployAutomationRetry({
    required this.attempts,
    this.backoffMode,
    this.wait,
  });

  final TfArg<String> attempts;

  final TfArg<ClouddeployAutomationBackoffMode>? backoffMode;

  final TfArg<String>? wait;

  Map<String, Object?> encode() => {
    'attempts': attempts.toTfJson(),
    'backoff_mode': ?backoffMode?.toTfJson(),
    'wait': ?wait?.toTfJson(),
  };
}

/// `backoff_mode` — derived from the provider schema description.
enum ClouddeployAutomationBackoffMode implements TerraformEnum {
  backoffModeUnspecified('BACKOFF_MODE_UNSPECIFIED'),
  backoffModeLinear('BACKOFF_MODE_LINEAR'),
  backoffModeExponential('BACKOFF_MODE_EXPONENTIAL');

  const ClouddeployAutomationBackoffMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.repair_rollout_rule.repair_phases.rollback` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationRollback {
  const ClouddeployAutomationRollback({
    this.destinationPhase,
    this.disableRollbackIfRolloutPending,
  });

  final TfArg<String>? destinationPhase;

  final TfArg<bool>? disableRollbackIfRolloutPending;

  Map<String, Object?> encode() => {
    'destination_phase': ?destinationPhase?.toTfJson(),
    'disable_rollback_if_rollout_pending': ?disableRollbackIfRolloutPending
        ?.toTfJson(),
  };
}

/// Typed helper for the `rules.timed_promote_release_rule` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationTimedPromoteReleaseRule {
  const ClouddeployAutomationTimedPromoteReleaseRule({
    this.destinationPhase,
    this.destinationTargetId,
    required this.id,
    required this.schedule,
    required this.timeZone,
  });

  final TfArg<String>? destinationPhase;

  final TfArg<String>? destinationTargetId;

  final TfArg<String> id;

  final TfArg<String> schedule;

  final TfArg<String> timeZone;

  Map<String, Object?> encode() => {
    'destination_phase': ?destinationPhase?.toTfJson(),
    'destination_target_id': ?destinationTargetId?.toTfJson(),
    'id': id.toTfJson(),
    'schedule': schedule.toTfJson(),
    'time_zone': timeZone.toTfJson(),
  };
}

/// Typed helper for the `selector` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationSelector {
  const ClouddeployAutomationSelector({required this.targets});

  final List<ClouddeployAutomationTargets> targets;

  Map<String, Object?> encode() => {
    'targets': [for (final e in targets) e.encode()],
  };
}

/// Typed helper for the `selector.targets` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationTargets {
  const ClouddeployAutomationTargets({this.id, this.labels});

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'labels': ?labels?.toTfJson(),
  };
}

/// Factory wrapper for `google_clouddeploy_automation`.
///
/// An `Automation` enables the automation of manually driven actions for a
/// Delivery Pipeline, which includes Release promotion amongst Targets, Rollout
/// repair and Rollout deployment strategy advancement.
///
/// Cloud Deploy **automation** — promotes / advances / repairs rollouts
/// on a [GoogleClouddeployDeliveryPipeline]. Nested `rules` and
/// `selector` blocks are passed as structured maps (same as the other
/// Cloud Deploy factories). Set [suspended] to `true` so the automation
/// does not fire rollouts.
///
/// **Cost:** gcp-cost: Cloud Deploy `C3AD-803F-FC89` Active Multiple
/// Target Delivery Pipelines `E1A5-8E1F-C1DE` **$5/count**.
/// billing-behavior: automations are pipeline config — the catalog SKU
/// is for *active multi-target pipelines*, not for creating an
/// automation. Enable `clouddeploy.googleapis.com` before apply.
///
/// Example:
/// ```dart
/// GoogleClouddeployAutomation(
///   localName: 'promote',
///   name: .literal('terradart-automation'),
///   location: .literal('us-central1'),
///   deliveryPipeline: .ref(pipeline.nameRef),
///   serviceAccount: .of(deployer),
///   suspended: .literal(true),
///   selector: ClouddeployAutomationSelector(
///     targets: [
///       ClouddeployAutomationTargets(
///         id: .literal('terradart-run-target'),
///       ),
///     ],
///   ),
///   rules: [
///     .promoteReleaseRule(
///       ClouddeployAutomationPromoteReleaseRule(
///         id: .literal('promote-release'),
///       ),
///     ),
///   ],
/// );
/// ```
final class GoogleClouddeployAutomation extends Resource {
  static const String tfType = 'google_clouddeploy_automation';

  GoogleClouddeployAutomation({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> deliveryPipeline,
    required RefTo<GoogleServiceAccount> serviceAccount,
    required ClouddeployAutomationSelector selector,
    required List<ClouddeployAutomationRules> rules,
    TfArg<bool>? suspended,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'delivery_pipeline': deliveryPipeline,
           'service_account': serviceAccount.encodeAs('email'),
           'selector': TfArg.literal(selector.encode()),
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           'suspended': ?suspended,
           'description': ?description,
           'annotations': ?annotations,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleClouddeployAutomationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployAutomation>`.
  RefTo<GoogleClouddeployAutomation> get ref => RefTo.of(this);

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

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

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

  /// Reference to `delivery_pipeline` attribute.
  TfRef<String> get deliveryPipelineRef =>
      TfRef.attribute<String>(this, 'delivery_pipeline');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccountRef =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspendedRef => TfRef.attribute<bool>(this, 'suspended');
}
