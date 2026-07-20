// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_preview_feature`.
const Set<String> _googleComputePreviewFeatureSensitive = <String>{};

/// Compute Preview Feature Activation enum for `activation_status`.
enum ComputePreviewFeatureActivationStatus implements TerraformEnum {
  enabled('ENABLED'),
  activationStateUnspecified('ACTIVATION_STATE_UNSPECIFIED');

  const ComputePreviewFeatureActivationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rollout_operation` block of
/// `google_compute_preview_feature` (derived from provider schema).
@immutable
final class ComputePreviewFeatureRolloutOperation {
  const ComputePreviewFeatureRolloutOperation({this.rolloutInput});

  final ComputePreviewFeatureRolloutOperationRolloutInput? rolloutInput;

  Map<String, Object?> encode() => {
    if (rolloutInput != null) 'rollout_input': rolloutInput!.encode(),
  };
}

/// Typed helper for the `rollout_operation.rollout_input` block of
/// `google_compute_preview_feature` (derived from provider schema).
@immutable
final class ComputePreviewFeatureRolloutOperationRolloutInput {
  const ComputePreviewFeatureRolloutOperationRolloutInput({
    required this.predefinedRolloutPlan,
  });

  final TfArg<String> predefinedRolloutPlan;

  Map<String, Object?> encode() => {
    'predefined_rollout_plan': predefinedRolloutPlan.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_preview_feature`.
///
/// Represents a single Google Compute Engine preview feature such as Alpha API
/// access, which can be enabled or unspecified for a project.
///
/// Compute Engine **preview feature** — enables or leaves unspecified a
/// project-level preview such as Alpha API access.
///
/// Prefer `name: alpha-api-access` with
/// `activationStatus: ACTIVATION_STATE_UNSPECIFIED` for smoke stacks (matches
/// the provider basic example). Enabling Alpha APIs does not provision VMs.
///
/// Enable `compute.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleComputePreviewFeature(
///   localName: 'alpha',
///   name: TfArg.literal('alpha-api-access'),
///   activationStatus: TfArg.literal(
///     ComputePreviewFeatureActivationStatus.activationStateUnspecified,
///   ),
/// );
/// ```
final class GoogleComputePreviewFeature extends Resource {
  static const String tfType = 'google_compute_preview_feature';

  GoogleComputePreviewFeature({
    required super.localName,
    required TfArg<String> name,
    required TfArg<ComputePreviewFeatureActivationStatus> activationStatus,
    ComputePreviewFeatureRolloutOperation? rolloutOperation,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'activation_status': activationStatus,
           if (rolloutOperation != null)
             'rollout_operation': TfArg.literal(rolloutOperation.encode()),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputePreviewFeatureSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
