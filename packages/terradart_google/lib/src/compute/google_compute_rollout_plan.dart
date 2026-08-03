// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_rollout_plan`.
const Set<String> _googleComputeRolloutPlanSensitive = <String>{};

/// Compute Rollout Plan Location enum for `location_scope`.
enum ComputeRolloutPlanLocationScope implements TerraformEnum {
  locationScopeUnspecified('LOCATION_SCOPE_UNSPECIFIED'),
  zonal('ZONAL'),
  regional('REGIONAL');

  const ComputeRolloutPlanLocationScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `waves` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanWaves {
  const ComputeRolloutPlanWaves({
    this.displayName,
    this.orchestrationOptions,
    required this.selectors,
    required this.validation,
  });

  final TfArg<String>? displayName;

  final ComputeRolloutPlanWavesOrchestrationOptions? orchestrationOptions;

  final List<ComputeRolloutPlanWavesSelectors> selectors;

  final ComputeRolloutPlanWavesValidation validation;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (orchestrationOptions != null)
      'orchestration_options': orchestrationOptions!.encode(),
    'selectors': [for (final e in selectors) e.encode()],
    'validation': validation.encode(),
  };
}

/// Typed helper for the `waves.orchestration_options` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanWavesOrchestrationOptions {
  const ComputeRolloutPlanWavesOrchestrationOptions({
    this.maxConcurrentLocations,
    this.maxConcurrentResourcesPerLocation,
    this.delays,
  });

  final TfArg<num>? maxConcurrentLocations;

  final TfArg<num>? maxConcurrentResourcesPerLocation;

  final List<ComputeRolloutPlanWavesOrchestrationOptionsDelays>? delays;

  Map<String, Object?> encode() => {
    if (maxConcurrentLocations != null)
      'max_concurrent_locations': maxConcurrentLocations!.toTfJson(),
    if (maxConcurrentResourcesPerLocation != null)
      'max_concurrent_resources_per_location':
          maxConcurrentResourcesPerLocation!.toTfJson(),
    if (delays != null) 'delays': [for (final e in delays!) e.encode()],
  };
}

/// Typed helper for the `waves.orchestration_options.delays` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanWavesOrchestrationOptionsDelays {
  const ComputeRolloutPlanWavesOrchestrationOptionsDelays({
    this.delimiter,
    this.duration,
    this.type,
  });

  final TfArg<ComputeRolloutPlanWavesOrchestrationOptionsDelaysDelimiter>?
  delimiter;

  final TfArg<String>? duration;

  final TfArg<ComputeRolloutPlanWavesOrchestrationOptionsDelaysType>? type;

  Map<String, Object?> encode() => {
    if (delimiter != null) 'delimiter': delimiter!.toTfJson(),
    if (duration != null) 'duration': duration!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `delimiter` — derived from the provider schema description.
enum ComputeRolloutPlanWavesOrchestrationOptionsDelaysDelimiter
    implements TerraformEnum {
  delimiterUnspecified('DELIMITER_UNSPECIFIED'),
  delimiterLocation('DELIMITER_LOCATION'),
  delimiterBatch('DELIMITER_BATCH');

  const ComputeRolloutPlanWavesOrchestrationOptionsDelaysDelimiter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum ComputeRolloutPlanWavesOrchestrationOptionsDelaysType
    implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  typeOffset('TYPE_OFFSET'),
  typeMinimum('TYPE_MINIMUM');

  const ComputeRolloutPlanWavesOrchestrationOptionsDelaysType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `waves.selectors` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanWavesSelectors {
  const ComputeRolloutPlanWavesSelectors({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  final ComputeRolloutPlanWavesSelectorsLocationSelector? locationSelector;

  final ComputeRolloutPlanWavesSelectorsResourceHierarchySelector?
  resourceHierarchySelector;

  Map<String, Object?> encode() => {
    if (locationSelector != null)
      'location_selector': locationSelector!.encode(),
    if (resourceHierarchySelector != null)
      'resource_hierarchy_selector': resourceHierarchySelector!.encode(),
  };
}

/// Typed helper for the `waves.selectors.location_selector` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanWavesSelectorsLocationSelector {
  const ComputeRolloutPlanWavesSelectorsLocationSelector({
    this.includedLocations,
  });

  final TfArg<List<Object?>>? includedLocations;

  Map<String, Object?> encode() => {
    if (includedLocations != null)
      'included_locations': includedLocations!.toTfJson(),
  };
}

/// Typed helper for the `waves.selectors.resource_hierarchy_selector` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanWavesSelectorsResourceHierarchySelector {
  const ComputeRolloutPlanWavesSelectorsResourceHierarchySelector({
    this.includedFolders,
    this.includedOrganizations,
    this.includedProjects,
  });

  final TfArg<List<Object?>>? includedFolders;

  final TfArg<List<Object?>>? includedOrganizations;

  final TfArg<List<Object?>>? includedProjects;

  Map<String, Object?> encode() => {
    if (includedFolders != null)
      'included_folders': includedFolders!.toTfJson(),
    if (includedOrganizations != null)
      'included_organizations': includedOrganizations!.toTfJson(),
    if (includedProjects != null)
      'included_projects': includedProjects!.toTfJson(),
  };
}

/// Typed helper for the `waves.validation` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanWavesValidation {
  const ComputeRolloutPlanWavesValidation({
    required this.type,
    this.timeBasedValidationMetadata,
  });

  final TfArg<String> type;

  final ComputeRolloutPlanWavesValidationTimeBasedValidationMetadata?
  timeBasedValidationMetadata;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (timeBasedValidationMetadata != null)
      'time_based_validation_metadata': timeBasedValidationMetadata!.encode(),
  };
}

/// Typed helper for the `waves.validation.time_based_validation_metadata` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanWavesValidationTimeBasedValidationMetadata {
  const ComputeRolloutPlanWavesValidationTimeBasedValidationMetadata({
    this.waitDuration,
  });

  final TfArg<String>? waitDuration;

  Map<String, Object?> encode() => {
    if (waitDuration != null) 'wait_duration': waitDuration!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_rollout_plan`.
///
/// A RolloutPlan is the customer-defined strategy to divide a large-scale
/// change into smaller increments, referred to as "waves". Each wave targets a
/// specific portion of the overall affected area and defines criteria that must
/// be met before progressing to the subsequent wave.
///
/// Compute Engine **rollout plan** — a project-global wave strategy that
/// divides a large-scale change into sequenced increments (`waves`).
/// Each wave selects targets (location and/or resource-hierarchy) and
/// defines validation before the next wave proceeds.
///
/// **Cost / apply:** The plan itself is configuration metadata. Cloud
/// Billing Catalog service `6F81-5844-456A` (Compute Engine) has no SKU
/// for rollout / wave / plan (gcp-cost `list_skus` → 0). Creating or
/// deleting a plan does not provision VMs. Ships without a quickstart
/// (`tool/example_debt.yaml`) until a dedicated smoke stack lands.
///
/// Requires [name] and at least one [waves] entry. Enable
/// `compute.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleComputeRolloutPlan extends Resource {
  static const String tfType = 'google_compute_rollout_plan';

  GoogleComputeRolloutPlan({
    required super.localName,
    required TfArg<String> name,
    TfArg<ComputeRolloutPlanLocationScope>? locationScope,
    TfArg<String>? description,
    required List<ComputeRolloutPlanWaves> waves,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (locationScope != null) 'location_scope': locationScope,
           if (description != null) 'description': description,
           'waves': TfArg.literal([for (final e in waves) e.encode()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRolloutPlanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
