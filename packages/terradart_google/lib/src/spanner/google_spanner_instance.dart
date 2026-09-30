// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_instance`.
const Set<String> _googleSpannerInstanceSensitive = <String>{};

/// Spanner Instance Default Backup Schedule enum for `default_backup_schedule_type`.
enum SpannerInstanceDefaultBackupScheduleType implements TerraformEnum {
  none('NONE'),
  automatic('AUTOMATIC');

  const SpannerInstanceDefaultBackupScheduleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spanner Instance enum for `edition`.
enum SpannerInstanceEdition implements TerraformEnum {
  editionUnspecified('EDITION_UNSPECIFIED'),
  standard('STANDARD'),
  enterprise('ENTERPRISE'),
  enterprisePlus('ENTERPRISE_PLUS');

  const SpannerInstanceEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spanner Instance Instance enum for `instance_type`.
enum SpannerInstanceInstanceType implements TerraformEnum {
  provisioned('PROVISIONED'),
  freeInstance('FREE_INSTANCE');

  const SpannerInstanceInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spanner Instance enum for `state`.
enum SpannerInstanceState implements TerraformEnum {
  ready('READY'),
  creating('CREATING');

  const SpannerInstanceState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `autoscaling_config` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceAutoscalingConfig {
  const SpannerInstanceAutoscalingConfig({
    this.asymmetricAutoscalingOptions,
    this.autoscalingLimits,
    this.autoscalingTargets,
  });

  final List<SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptions>?
  asymmetricAutoscalingOptions;

  final SpannerInstanceAutoscalingConfigAutoscalingLimits? autoscalingLimits;

  final SpannerInstanceAutoscalingConfigAutoscalingTargets? autoscalingTargets;

  Map<String, Object?> encode() => {
    if (asymmetricAutoscalingOptions != null)
      'asymmetric_autoscaling_options': [
        for (final e in asymmetricAutoscalingOptions!) e.encode(),
      ],
    'autoscaling_limits': ?autoscalingLimits?.encode(),
    'autoscaling_targets': ?autoscalingTargets?.encode(),
  };
}

/// Typed helper for the `autoscaling_config.asymmetric_autoscaling_options` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptions {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptions({
    required this.overrides,
    required this.replicaSelection,
  });

  final SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverrides
  overrides;

  final SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsReplicaSelection
  replicaSelection;

  Map<String, Object?> encode() => {
    'overrides': overrides.encode(),
    'replica_selection': replicaSelection.encode(),
  };
}

/// Typed helper for the `autoscaling_config.asymmetric_autoscaling_options.overrides` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverrides {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverrides({
    this.autoscalingTargetHighPriorityCpuUtilizationPercent,
    this.autoscalingTargetTotalCpuUtilizationPercent,
    this.disableHighPriorityCpuAutoscaling,
    this.disableTotalCpuAutoscaling,
    this.autoscalingLimits,
  });

  final TfArg<num>? autoscalingTargetHighPriorityCpuUtilizationPercent;

  final TfArg<num>? autoscalingTargetTotalCpuUtilizationPercent;

  final TfArg<bool>? disableHighPriorityCpuAutoscaling;

  final TfArg<bool>? disableTotalCpuAutoscaling;

  final SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimits?
  autoscalingLimits;

  Map<String, Object?> encode() => {
    'autoscaling_target_high_priority_cpu_utilization_percent':
        ?autoscalingTargetHighPriorityCpuUtilizationPercent?.toTfJson(),
    'autoscaling_target_total_cpu_utilization_percent':
        ?autoscalingTargetTotalCpuUtilizationPercent?.toTfJson(),
    'disable_high_priority_cpu_autoscaling': ?disableHighPriorityCpuAutoscaling
        ?.toTfJson(),
    'disable_total_cpu_autoscaling': ?disableTotalCpuAutoscaling?.toTfJson(),
    'autoscaling_limits': ?autoscalingLimits?.encode(),
  };
}

/// Typed helper for the `autoscaling_config.asymmetric_autoscaling_options.overrides.autoscaling_limits` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimits {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimits({
    required this.max,
    required this.min,
  });

  final SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMax
  max;

  final SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMin
  min;

  Map<String, Object?> encode() => {...max.encode(), ...min.encode()};
}

/// Exactly one of `min_nodes`, `min_processing_units` on the `autoscaling_config.asymmetric_autoscaling_options.overrides.autoscaling_limits` block of `google_spanner_instance`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.minNodes(...)`.
sealed class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMin {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMin();

  /// Sets `min_nodes`.
  const factory SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMin.minNodes(
    TfArg<num> minNodes,
  ) = SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMinNodes;

  /// Sets `min_processing_units`.
  const factory SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMin.minProcessingUnits(
    TfArg<num> minProcessingUnits,
  ) = SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMinProcessingUnits;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMin.minNodes] choice: sets `min_nodes`.
final class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMinNodes
    extends
        SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMin {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMinNodes(
    this.minNodes,
  );

  final TfArg<num> minNodes;

  @override
  String get blockKey => 'min_nodes';

  @override
  Map<String, Object?> encode() => {'min_nodes': minNodes.toTfJson()};
}

/// The [SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMin.minProcessingUnits] choice: sets `min_processing_units`.
final class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMinProcessingUnits
    extends
        SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMin {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMinProcessingUnits(
    this.minProcessingUnits,
  );

  final TfArg<num> minProcessingUnits;

  @override
  String get blockKey => 'min_processing_units';

  @override
  Map<String, Object?> encode() => {
    'min_processing_units': minProcessingUnits.toTfJson(),
  };
}

/// Exactly one of `max_nodes`, `max_processing_units` on the `autoscaling_config.asymmetric_autoscaling_options.overrides.autoscaling_limits` block of `google_spanner_instance`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.maxNodes(...)`.
sealed class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMax {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMax();

  /// Sets `max_nodes`.
  const factory SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMax.maxNodes(
    TfArg<num> maxNodes,
  ) = SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMaxNodes;

  /// Sets `max_processing_units`.
  const factory SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMax.maxProcessingUnits(
    TfArg<num> maxProcessingUnits,
  ) = SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMaxProcessingUnits;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMax.maxNodes] choice: sets `max_nodes`.
final class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMaxNodes
    extends
        SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMax {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMaxNodes(
    this.maxNodes,
  );

  final TfArg<num> maxNodes;

  @override
  String get blockKey => 'max_nodes';

  @override
  Map<String, Object?> encode() => {'max_nodes': maxNodes.toTfJson()};
}

/// The [SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMax.maxProcessingUnits] choice: sets `max_processing_units`.
final class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMaxProcessingUnits
    extends
        SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMax {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsOverridesAutoscalingLimitsMaxProcessingUnits(
    this.maxProcessingUnits,
  );

  final TfArg<num> maxProcessingUnits;

  @override
  String get blockKey => 'max_processing_units';

  @override
  Map<String, Object?> encode() => {
    'max_processing_units': maxProcessingUnits.toTfJson(),
  };
}

/// Typed helper for the `autoscaling_config.asymmetric_autoscaling_options.replica_selection` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsReplicaSelection {
  const SpannerInstanceAutoscalingConfigAsymmetricAutoscalingOptionsReplicaSelection({
    required this.location,
  });

  final TfArg<String> location;

  Map<String, Object?> encode() => {'location': location.toTfJson()};
}

/// Typed helper for the `autoscaling_config.autoscaling_limits` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceAutoscalingConfigAutoscalingLimits {
  const SpannerInstanceAutoscalingConfigAutoscalingLimits({
    required this.max,
    required this.min,
  });

  final SpannerInstanceAutoscalingConfigAutoscalingLimitsMax max;

  final SpannerInstanceAutoscalingConfigAutoscalingLimitsMin min;

  Map<String, Object?> encode() => {...max.encode(), ...min.encode()};
}

/// Exactly one of `min_processing_units`, `min_nodes` on the `autoscaling_config.autoscaling_limits` block of `google_spanner_instance`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.minProcessingUnits(...)`.
sealed class SpannerInstanceAutoscalingConfigAutoscalingLimitsMin {
  const SpannerInstanceAutoscalingConfigAutoscalingLimitsMin();

  /// Sets `min_processing_units`.
  const factory SpannerInstanceAutoscalingConfigAutoscalingLimitsMin.minProcessingUnits(
    TfArg<num> minProcessingUnits,
  ) = SpannerInstanceAutoscalingConfigAutoscalingLimitsMinProcessingUnits;

  /// Sets `min_nodes`.
  const factory SpannerInstanceAutoscalingConfigAutoscalingLimitsMin.minNodes(
    TfArg<num> minNodes,
  ) = SpannerInstanceAutoscalingConfigAutoscalingLimitsMinNodes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstanceAutoscalingConfigAutoscalingLimitsMin.minProcessingUnits] choice: sets `min_processing_units`.
final class SpannerInstanceAutoscalingConfigAutoscalingLimitsMinProcessingUnits
    extends SpannerInstanceAutoscalingConfigAutoscalingLimitsMin {
  const SpannerInstanceAutoscalingConfigAutoscalingLimitsMinProcessingUnits(
    this.minProcessingUnits,
  );

  final TfArg<num> minProcessingUnits;

  @override
  String get blockKey => 'min_processing_units';

  @override
  Map<String, Object?> encode() => {
    'min_processing_units': minProcessingUnits.toTfJson(),
  };
}

/// The [SpannerInstanceAutoscalingConfigAutoscalingLimitsMin.minNodes] choice: sets `min_nodes`.
final class SpannerInstanceAutoscalingConfigAutoscalingLimitsMinNodes
    extends SpannerInstanceAutoscalingConfigAutoscalingLimitsMin {
  const SpannerInstanceAutoscalingConfigAutoscalingLimitsMinNodes(
    this.minNodes,
  );

  final TfArg<num> minNodes;

  @override
  String get blockKey => 'min_nodes';

  @override
  Map<String, Object?> encode() => {'min_nodes': minNodes.toTfJson()};
}

/// Exactly one of `max_processing_units`, `max_nodes` on the `autoscaling_config.autoscaling_limits` block of `google_spanner_instance`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.maxProcessingUnits(...)`.
sealed class SpannerInstanceAutoscalingConfigAutoscalingLimitsMax {
  const SpannerInstanceAutoscalingConfigAutoscalingLimitsMax();

  /// Sets `max_processing_units`.
  const factory SpannerInstanceAutoscalingConfigAutoscalingLimitsMax.maxProcessingUnits(
    TfArg<num> maxProcessingUnits,
  ) = SpannerInstanceAutoscalingConfigAutoscalingLimitsMaxProcessingUnits;

  /// Sets `max_nodes`.
  const factory SpannerInstanceAutoscalingConfigAutoscalingLimitsMax.maxNodes(
    TfArg<num> maxNodes,
  ) = SpannerInstanceAutoscalingConfigAutoscalingLimitsMaxNodes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstanceAutoscalingConfigAutoscalingLimitsMax.maxProcessingUnits] choice: sets `max_processing_units`.
final class SpannerInstanceAutoscalingConfigAutoscalingLimitsMaxProcessingUnits
    extends SpannerInstanceAutoscalingConfigAutoscalingLimitsMax {
  const SpannerInstanceAutoscalingConfigAutoscalingLimitsMaxProcessingUnits(
    this.maxProcessingUnits,
  );

  final TfArg<num> maxProcessingUnits;

  @override
  String get blockKey => 'max_processing_units';

  @override
  Map<String, Object?> encode() => {
    'max_processing_units': maxProcessingUnits.toTfJson(),
  };
}

/// The [SpannerInstanceAutoscalingConfigAutoscalingLimitsMax.maxNodes] choice: sets `max_nodes`.
final class SpannerInstanceAutoscalingConfigAutoscalingLimitsMaxNodes
    extends SpannerInstanceAutoscalingConfigAutoscalingLimitsMax {
  const SpannerInstanceAutoscalingConfigAutoscalingLimitsMaxNodes(
    this.maxNodes,
  );

  final TfArg<num> maxNodes;

  @override
  String get blockKey => 'max_nodes';

  @override
  Map<String, Object?> encode() => {'max_nodes': maxNodes.toTfJson()};
}

/// Typed helper for the `autoscaling_config.autoscaling_targets` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceAutoscalingConfigAutoscalingTargets {
  const SpannerInstanceAutoscalingConfigAutoscalingTargets({
    this.highPriorityCpuUtilizationPercent,
    this.storageUtilizationPercent,
    this.totalCpuUtilizationPercent,
  });

  final TfArg<num>? highPriorityCpuUtilizationPercent;

  final TfArg<num>? storageUtilizationPercent;

  final TfArg<num>? totalCpuUtilizationPercent;

  Map<String, Object?> encode() => {
    'high_priority_cpu_utilization_percent': ?highPriorityCpuUtilizationPercent
        ?.toTfJson(),
    'storage_utilization_percent': ?storageUtilizationPercent?.toTfJson(),
    'total_cpu_utilization_percent': ?totalCpuUtilizationPercent?.toTfJson(),
  };
}

/// Factory wrapper for `google_spanner_instance`.
///
/// An isolated set of Cloud Spanner resources on which databases can be hosted.
///
/// Cloud Spanner instance — horizontally scalable relational database.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [config]: instance configuration name (e.g. `regional-asia-northeast1`).
/// - [displayName]: user-visible label.
///
/// Set exactly one of [numNodes] or [processingUnits] for capacity.
///
/// Enable `spanner.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleSpannerInstance(
///   localName: 'app',
///   config: TfArg.literal('regional-asia-northeast1'),
///   displayName: TfArg.literal('App Spanner'),
///   numNodes: TfArg.literal(1),
/// );
/// ```
final class GoogleSpannerInstance extends Resource {
  static const String tfType = 'google_spanner_instance';

  GoogleSpannerInstance({
    required super.localName,
    required TfArg<String> config,
    required TfArg<String> displayName,
    TfArg<num>? numNodes,
    TfArg<num>? processingUnits,
    TfArg<SpannerInstanceEdition>? edition,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? defaultBackupScheduleType,
    TfArg<bool>? forceDestroy,
    TfArg<String>? instanceType,
    TfArg<String>? name,
    TfArg<String>? project,
    SpannerInstanceAutoscalingConfig? autoscalingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config': config,
           'display_name': displayName,
           'num_nodes': ?numNodes,
           'processing_units': ?processingUnits,
           'edition': ?edition,
           'labels': ?labels,
           'default_backup_schedule_type': ?defaultBackupScheduleType,
           'force_destroy': ?forceDestroy,
           'instance_type': ?instanceType,
           'name': ?name,
           'project': ?project,
           if (autoscalingConfig != null)
             'autoscaling_config': TfArg.literal(autoscalingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSpannerInstance>`.
  RefTo<GoogleSpannerInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `config` attribute.
  TfRef<String> get configRef => TfRef.attribute<String>(this, 'config');

  /// Reference to `default_backup_schedule_type` attribute.
  TfRef<String> get defaultBackupScheduleTypeRef =>
      TfRef.attribute<String>(this, 'default_backup_schedule_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `edition` attribute.
  TfRef<String> get editionRef => TfRef.attribute<String>(this, 'edition');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceTypeRef =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `num_nodes` attribute.
  TfRef<num> get numNodesRef => TfRef.attribute<num>(this, 'num_nodes');

  /// Reference to `processing_units` attribute.
  TfRef<num> get processingUnitsRef =>
      TfRef.attribute<num>(this, 'processing_units');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
