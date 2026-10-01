// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_rollout_plan`.
const Set<String> _googleComputeRolloutPlanSensitive = <String>{};

/// Compute Rollout Plan Location enum for `location_scope`.
extension type const ComputeRolloutPlanLocationScope._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRolloutPlanLocationScope.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRolloutPlanLocationScope.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRolloutPlanLocationScope.arg(TfArg<String> arg) : this._(arg);

  static const locationScopeUnspecified = ComputeRolloutPlanLocationScope._(
    TfArgLiteral('LOCATION_SCOPE_UNSPECIFIED'),
  );
  static const zonal = ComputeRolloutPlanLocationScope._(TfArgLiteral('ZONAL'));
  static const regional = ComputeRolloutPlanLocationScope._(
    TfArgLiteral('REGIONAL'),
  );

  static const List<ComputeRolloutPlanLocationScope> values = [
    locationScopeUnspecified,
    zonal,
    regional,
  ];
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

  final ComputeRolloutPlanOrchestrationOptions? orchestrationOptions;

  final List<ComputeRolloutPlanSelectors> selectors;

  final ComputeRolloutPlanValidation validation;

  @internal
  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'orchestration_options': ?orchestrationOptions?.encode(),
    'selectors': [for (final e in selectors) e.encode()],
    'validation': validation.encode(),
  };
}

/// Typed helper for the `waves.orchestration_options` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanOrchestrationOptions {
  const ComputeRolloutPlanOrchestrationOptions({
    this.maxConcurrentLocations,
    this.maxConcurrentResourcesPerLocation,
    this.delays,
  });

  final TfArg<num>? maxConcurrentLocations;

  final TfArg<num>? maxConcurrentResourcesPerLocation;

  final List<ComputeRolloutPlanDelays>? delays;

  @internal
  Map<String, Object?> encode() => {
    'max_concurrent_locations': ?maxConcurrentLocations?.toTfJson(),
    'max_concurrent_resources_per_location': ?maxConcurrentResourcesPerLocation
        ?.toTfJson(),
    if (delays != null) 'delays': [for (final e in delays!) e.encode()],
  };
}

/// Typed helper for the `waves.orchestration_options.delays` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanDelays {
  const ComputeRolloutPlanDelays({this.delimiter, this.duration, this.type});

  final ComputeRolloutPlanDelimiter? delimiter;

  final TfArg<String>? duration;

  final ComputeRolloutPlanType? type;

  @internal
  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'duration': ?duration?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `delimiter` — derived from the provider schema description.
extension type const ComputeRolloutPlanDelimiter._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRolloutPlanDelimiter.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRolloutPlanDelimiter.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRolloutPlanDelimiter.arg(TfArg<String> arg) : this._(arg);

  static const delimiterUnspecified = ComputeRolloutPlanDelimiter._(
    TfArgLiteral('DELIMITER_UNSPECIFIED'),
  );
  static const delimiterLocation = ComputeRolloutPlanDelimiter._(
    TfArgLiteral('DELIMITER_LOCATION'),
  );
  static const delimiterBatch = ComputeRolloutPlanDelimiter._(
    TfArgLiteral('DELIMITER_BATCH'),
  );

  static const List<ComputeRolloutPlanDelimiter> values = [
    delimiterUnspecified,
    delimiterLocation,
    delimiterBatch,
  ];
}

/// `type` — derived from the provider schema description.
extension type const ComputeRolloutPlanType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRolloutPlanType.variable(String name) : this._(TfArg.variable(name));
  ComputeRolloutPlanType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRolloutPlanType.arg(TfArg<String> arg) : this._(arg);

  static const typeUnspecified = ComputeRolloutPlanType._(
    TfArgLiteral('TYPE_UNSPECIFIED'),
  );
  static const typeOffset = ComputeRolloutPlanType._(
    TfArgLiteral('TYPE_OFFSET'),
  );
  static const typeMinimum = ComputeRolloutPlanType._(
    TfArgLiteral('TYPE_MINIMUM'),
  );

  static const List<ComputeRolloutPlanType> values = [
    typeUnspecified,
    typeOffset,
    typeMinimum,
  ];
}

/// Typed helper for the `waves.selectors` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanSelectors {
  const ComputeRolloutPlanSelectors({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  final ComputeRolloutPlanLocationSelector? locationSelector;

  final ComputeRolloutPlanResourceHierarchySelector? resourceHierarchySelector;

  @internal
  Map<String, Object?> encode() => {
    'location_selector': ?locationSelector?.encode(),
    'resource_hierarchy_selector': ?resourceHierarchySelector?.encode(),
  };
}

/// Typed helper for the `waves.selectors.location_selector` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanLocationSelector {
  const ComputeRolloutPlanLocationSelector({this.includedLocations});

  final TfArg<List<String>>? includedLocations;

  @internal
  Map<String, Object?> encode() => {
    'included_locations': ?includedLocations?.toTfJson(),
  };
}

/// Typed helper for the `waves.selectors.resource_hierarchy_selector` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanResourceHierarchySelector {
  const ComputeRolloutPlanResourceHierarchySelector({
    this.includedFolders,
    this.includedOrganizations,
    this.includedProjects,
  });

  final TfArg<List<String>>? includedFolders;

  final TfArg<List<String>>? includedOrganizations;

  final TfArg<List<String>>? includedProjects;

  @internal
  Map<String, Object?> encode() => {
    'included_folders': ?includedFolders?.toTfJson(),
    'included_organizations': ?includedOrganizations?.toTfJson(),
    'included_projects': ?includedProjects?.toTfJson(),
  };
}

/// Typed helper for the `waves.validation` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanValidation {
  const ComputeRolloutPlanValidation({
    required this.type,
    this.timeBasedValidationMetadata,
  });

  final TfArg<String> type;

  final ComputeRolloutPlanTimeBasedValidationMetadata?
  timeBasedValidationMetadata;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'time_based_validation_metadata': ?timeBasedValidationMetadata?.encode(),
  };
}

/// Typed helper for the `waves.validation.time_based_validation_metadata` block of
/// `google_compute_rollout_plan` (derived from provider schema).
@immutable
final class ComputeRolloutPlanTimeBasedValidationMetadata {
  const ComputeRolloutPlanTimeBasedValidationMetadata({this.waitDuration});

  final TfArg<String>? waitDuration;

  @internal
  Map<String, Object?> encode() => {'wait_duration': ?waitDuration?.toTfJson()};
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

  GoogleComputeRolloutPlan(
    super.localName, {
    required TfArg<String> name,
    ComputeRolloutPlanLocationScope? locationScope,
    TfArg<String>? description,
    required List<ComputeRolloutPlanWaves> waves,
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
           'location_scope': ?locationScope,
           'description': ?description,
           'waves': TfArg.literal([for (final e in waves) e.encode()]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRolloutPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRolloutPlan>`.
  RefTo<GoogleComputeRolloutPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location_scope` attribute.
  TfRef<String> get locationScope =>
      TfRef.attribute<String>(this, 'location_scope');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
