// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_global_vm_extension_policy`.
const Set<String> _googleComputeGlobalVmExtensionPolicySensitive = <String>{};

/// Typed helper for the `extension_policies` block of
/// `google_compute_global_vm_extension_policy` (derived from provider schema).
@immutable
final class ComputeGlobalVmExtensionPolicyExtensionPolicies {
  const ComputeGlobalVmExtensionPolicyExtensionPolicies({
    required this.extensionName,
    this.pinnedVersion,
    this.stringConfig,
  });

  final TfArg<String> extensionName;

  final TfArg<String>? pinnedVersion;

  final TfArg<String>? stringConfig;

  Map<String, Object?> encode() => {
    'extension_name': extensionName.toTfJson(),
    if (pinnedVersion != null) 'pinned_version': pinnedVersion!.toTfJson(),
    if (stringConfig != null) 'string_config': stringConfig!.toTfJson(),
  };
}

/// Typed helper for the `instance_selectors` block of
/// `google_compute_global_vm_extension_policy` (derived from provider schema).
@immutable
final class ComputeGlobalVmExtensionPolicyInstanceSelectors {
  const ComputeGlobalVmExtensionPolicyInstanceSelectors({this.labelSelector});

  final ComputeGlobalVmExtensionPolicyInstanceSelectorsLabelSelector?
  labelSelector;

  Map<String, Object?> encode() => {
    if (labelSelector != null) 'label_selector': labelSelector!.encode(),
  };
}

/// Typed helper for the `instance_selectors.label_selector` block of
/// `google_compute_global_vm_extension_policy` (derived from provider schema).
@immutable
final class ComputeGlobalVmExtensionPolicyInstanceSelectorsLabelSelector {
  const ComputeGlobalVmExtensionPolicyInstanceSelectorsLabelSelector({
    this.inclusionLabels,
  });

  final TfArg<Map<String, String>>? inclusionLabels;

  Map<String, Object?> encode() => {
    if (inclusionLabels != null)
      'inclusion_labels': inclusionLabels!.toTfJson(),
  };
}

/// Typed helper for the `rollout_operation` block of
/// `google_compute_global_vm_extension_policy` (derived from provider schema).
@immutable
final class ComputeGlobalVmExtensionPolicyRolloutOperation {
  const ComputeGlobalVmExtensionPolicyRolloutOperation({
    required this.rolloutInput,
  });

  final ComputeGlobalVmExtensionPolicyRolloutOperationRolloutInput rolloutInput;

  Map<String, Object?> encode() => {'rollout_input': rolloutInput.encode()};
}

/// Typed helper for the `rollout_operation.rollout_input` block of
/// `google_compute_global_vm_extension_policy` (derived from provider schema).
@immutable
final class ComputeGlobalVmExtensionPolicyRolloutOperationRolloutInput {
  const ComputeGlobalVmExtensionPolicyRolloutOperationRolloutInput({
    this.conflictBehavior,
    this.name,
    this.predefinedRolloutPlan,
    this.retryUuid,
  });

  final TfArg<String>? conflictBehavior;

  final TfArg<String>? name;

  final TfArg<String>? predefinedRolloutPlan;

  final TfArg<String>? retryUuid;

  Map<String, Object?> encode() => {
    if (conflictBehavior != null)
      'conflict_behavior': conflictBehavior!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (predefinedRolloutPlan != null)
      'predefined_rollout_plan': predefinedRolloutPlan!.toTfJson(),
    if (retryUuid != null) 'retry_uuid': retryUuid!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_global_vm_extension_policy`.
///
/// A Global VM Extension Policy.
///
/// Compute Engine **global VM extension policy** — project-scoped policy
/// that installs / configures VM extensions (for example Ops Agent) across
/// selected instances, driven by a rollout plan.
///
/// **Cost / apply:** Policy metadata only. Cloud Billing Catalog service
/// `6F81-5844-456A` (Compute Engine) has no SKU for extension / VM
/// extension policy (gcp-cost `list_skus` keyword=extension → 0). Creating
/// or deleting the policy does not provision VMs. Ships without a
/// quickstart (`tool/example_debt.yaml`); the zonal sibling is covered by
/// `compute_quickstart`.
///
/// Inside [rolloutOperation].rolloutInput, set exactly one of `name`
/// (custom [GoogleComputeRolloutPlan]) or `predefinedRolloutPlan`.
/// Requires [name], [extensionPolicies], and [rolloutOperation]. Enable
/// `compute.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleComputeGlobalVmExtensionPolicy extends Resource {
  static const String tfType = 'google_compute_global_vm_extension_policy';

  GoogleComputeGlobalVmExtensionPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<num>? priority,
    required List<ComputeGlobalVmExtensionPolicyExtensionPolicies>
    extensionPolicies,
    List<ComputeGlobalVmExtensionPolicyInstanceSelectors>? instanceSelectors,
    required ComputeGlobalVmExtensionPolicyRolloutOperation rolloutOperation,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           if (priority != null) 'priority': priority,
           'extension_policies': TfArg.literal([
             for (final e in extensionPolicies) e.encode(),
           ]),
           if (instanceSelectors != null)
             'instance_selectors': TfArg.literal([
               for (final e in instanceSelectors) e.encode(),
             ]),
           'rollout_operation': TfArg.literal(rolloutOperation.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeGlobalVmExtensionPolicySensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `scoped_resource_status` attribute.
  TfRef<String> get scopedResourceStatus =>
      TfRef.attribute<String>(this, 'scoped_resource_status');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `update_timestamp` attribute.
  TfRef<String> get updateTimestamp =>
      TfRef.attribute<String>(this, 'update_timestamp');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
