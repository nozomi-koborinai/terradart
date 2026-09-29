// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_clouddeploy_automation`.
const Set<String> _googleClouddeployAutomationSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationRules {
  const ClouddeployAutomationRules({required this.rule});

  final ClouddeployAutomationRulesRule rule;

  Map<String, Object?> encode() => {...rule.encode()};
}

/// Exactly one of `promote_release_rule`, `advance_rollout_rule`, `repair_rollout_rule`, `timed_promote_release_rule` on the `rules` block of `google_clouddeploy_automation`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.promoteReleaseRule(...)`.
sealed class ClouddeployAutomationRulesRule {
  const ClouddeployAutomationRulesRule();

  /// Sets `promote_release_rule`.
  const factory ClouddeployAutomationRulesRule.promoteReleaseRule(
    ClouddeployAutomationRulesPromoteReleaseRule promoteReleaseRule,
  ) = ClouddeployAutomationRulesRulePromoteReleaseRule;

  /// Sets `advance_rollout_rule`.
  const factory ClouddeployAutomationRulesRule.advanceRolloutRule(
    ClouddeployAutomationRulesAdvanceRolloutRule advanceRolloutRule,
  ) = ClouddeployAutomationRulesRuleAdvanceRolloutRule;

  /// Sets `repair_rollout_rule`.
  const factory ClouddeployAutomationRulesRule.repairRolloutRule(
    ClouddeployAutomationRulesRepairRolloutRule repairRolloutRule,
  ) = ClouddeployAutomationRulesRuleRepairRolloutRule;

  /// Sets `timed_promote_release_rule`.
  const factory ClouddeployAutomationRulesRule.timedPromoteReleaseRule(
    ClouddeployAutomationRulesTimedPromoteReleaseRule timedPromoteReleaseRule,
  ) = ClouddeployAutomationRulesRuleTimedPromoteReleaseRule;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ClouddeployAutomationRulesRule.promoteReleaseRule] choice: sets `promote_release_rule`.
final class ClouddeployAutomationRulesRulePromoteReleaseRule
    extends ClouddeployAutomationRulesRule {
  const ClouddeployAutomationRulesRulePromoteReleaseRule(
    this.promoteReleaseRule,
  );

  final ClouddeployAutomationRulesPromoteReleaseRule promoteReleaseRule;

  @override
  String get blockKey => 'promote_release_rule';

  @override
  Map<String, Object?> encode() => {
    'promote_release_rule': promoteReleaseRule.encode(),
  };
}

/// The [ClouddeployAutomationRulesRule.advanceRolloutRule] choice: sets `advance_rollout_rule`.
final class ClouddeployAutomationRulesRuleAdvanceRolloutRule
    extends ClouddeployAutomationRulesRule {
  const ClouddeployAutomationRulesRuleAdvanceRolloutRule(
    this.advanceRolloutRule,
  );

  final ClouddeployAutomationRulesAdvanceRolloutRule advanceRolloutRule;

  @override
  String get blockKey => 'advance_rollout_rule';

  @override
  Map<String, Object?> encode() => {
    'advance_rollout_rule': advanceRolloutRule.encode(),
  };
}

/// The [ClouddeployAutomationRulesRule.repairRolloutRule] choice: sets `repair_rollout_rule`.
final class ClouddeployAutomationRulesRuleRepairRolloutRule
    extends ClouddeployAutomationRulesRule {
  const ClouddeployAutomationRulesRuleRepairRolloutRule(this.repairRolloutRule);

  final ClouddeployAutomationRulesRepairRolloutRule repairRolloutRule;

  @override
  String get blockKey => 'repair_rollout_rule';

  @override
  Map<String, Object?> encode() => {
    'repair_rollout_rule': repairRolloutRule.encode(),
  };
}

/// The [ClouddeployAutomationRulesRule.timedPromoteReleaseRule] choice: sets `timed_promote_release_rule`.
final class ClouddeployAutomationRulesRuleTimedPromoteReleaseRule
    extends ClouddeployAutomationRulesRule {
  const ClouddeployAutomationRulesRuleTimedPromoteReleaseRule(
    this.timedPromoteReleaseRule,
  );

  final ClouddeployAutomationRulesTimedPromoteReleaseRule
  timedPromoteReleaseRule;

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
final class ClouddeployAutomationRulesAdvanceRolloutRule {
  const ClouddeployAutomationRulesAdvanceRolloutRule({
    required this.id,
    this.sourcePhases,
    this.wait,
  });

  final TfArg<String> id;

  final TfArg<List<Object?>>? sourcePhases;

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
final class ClouddeployAutomationRulesPromoteReleaseRule {
  const ClouddeployAutomationRulesPromoteReleaseRule({
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
final class ClouddeployAutomationRulesRepairRolloutRule {
  const ClouddeployAutomationRulesRepairRolloutRule({
    required this.id,
    this.jobs,
    this.phases,
    this.repairPhases,
  });

  final TfArg<String> id;

  final TfArg<List<Object?>>? jobs;

  final TfArg<List<Object?>>? phases;

  final List<ClouddeployAutomationRulesRepairRolloutRuleRepairPhases>?
  repairPhases;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'jobs': ?jobs?.toTfJson(),
    'phases': ?phases?.toTfJson(),
    if (repairPhases != null)
      'repair_phases': [for (final e in repairPhases!) e.encode()],
  };
}

/// Typed helper for the `rules.repair_rollout_rule.repair_phases` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationRulesRepairRolloutRuleRepairPhases {
  const ClouddeployAutomationRulesRepairRolloutRuleRepairPhases({
    required this.phase,
  });

  final ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhase phase;

  Map<String, Object?> encode() => {...phase.encode()};
}

/// Exactly one of `retry`, `rollback` on the `rules.repair_rollout_rule.repair_phases` block of `google_clouddeploy_automation`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.retry(...)`.
sealed class ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhase {
  const ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhase();

  /// Sets `retry`.
  const factory ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhase.retry(
    ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRetry retry,
  ) = ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhaseRetry;

  /// Sets `rollback`.
  const factory ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhase.rollback(
    ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRollback rollback,
  ) = ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhaseRollback;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhase.retry] choice: sets `retry`.
final class ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhaseRetry
    extends ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhase {
  const ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhaseRetry(
    this.retry,
  );

  final ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRetry retry;

  @override
  String get blockKey => 'retry';

  @override
  Map<String, Object?> encode() => {'retry': retry.encode()};
}

/// The [ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhase.rollback] choice: sets `rollback`.
final class ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhaseRollback
    extends ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhase {
  const ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesPhaseRollback(
    this.rollback,
  );

  final ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRollback
  rollback;

  @override
  String get blockKey => 'rollback';

  @override
  Map<String, Object?> encode() => {'rollback': rollback.encode()};
}

/// Typed helper for the `rules.repair_rollout_rule.repair_phases.retry` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRetry {
  const ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRetry({
    required this.attempts,
    this.backoffMode,
    this.wait,
  });

  final TfArg<String> attempts;

  final TfArg<
    ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRetryBackoffMode
  >?
  backoffMode;

  final TfArg<String>? wait;

  Map<String, Object?> encode() => {
    'attempts': attempts.toTfJson(),
    'backoff_mode': ?backoffMode?.toTfJson(),
    'wait': ?wait?.toTfJson(),
  };
}

/// `backoff_mode` — derived from the provider schema description.
enum ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRetryBackoffMode
    implements TerraformEnum {
  backoffModeUnspecified('BACKOFF_MODE_UNSPECIFIED'),
  backoffModeLinear('BACKOFF_MODE_LINEAR'),
  backoffModeExponential('BACKOFF_MODE_EXPONENTIAL');

  const ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRetryBackoffMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.repair_rollout_rule.repair_phases.rollback` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRollback {
  const ClouddeployAutomationRulesRepairRolloutRuleRepairPhasesRollback({
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
final class ClouddeployAutomationRulesTimedPromoteReleaseRule {
  const ClouddeployAutomationRulesTimedPromoteReleaseRule({
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

  final List<ClouddeployAutomationSelectorTargets> targets;

  Map<String, Object?> encode() => {
    'targets': [for (final e in targets) e.encode()],
  };
}

/// Typed helper for the `selector.targets` block of
/// `google_clouddeploy_automation` (derived from provider schema).
@immutable
final class ClouddeployAutomationSelectorTargets {
  const ClouddeployAutomationSelectorTargets({this.id, this.labels});

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
///       ClouddeployAutomationSelectorTargets(
///         id: .literal('terradart-run-target'),
///       ),
///     ],
///   ),
///   rules: [
///     ClouddeployAutomationRules(
///       rule: .promoteReleaseRule(
///         ClouddeployAutomationRulesPromoteReleaseRule(
///           id: .literal('promote-release'),
///         ),
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
}
