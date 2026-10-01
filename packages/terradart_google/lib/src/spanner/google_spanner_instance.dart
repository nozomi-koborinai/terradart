// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../spanner/google_spanner_instance_config.dart'
    show GoogleSpannerInstanceConfig;

/// Sensitive field paths for `google_spanner_instance`.
const Set<String> _googleSpannerInstanceSensitive = <String>{};

/// Spanner Instance Default Backup Schedule enum for `default_backup_schedule_type`.
extension type const SpannerInstanceDefaultBackupScheduleType._(TfArg<String> _)
    implements TfArg<String> {
  SpannerInstanceDefaultBackupScheduleType.variable(String name)
    : this._(TfArg.variable(name));
  SpannerInstanceDefaultBackupScheduleType.expression(String template)
    : this._(TfArg.expression(template));
  const SpannerInstanceDefaultBackupScheduleType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = SpannerInstanceDefaultBackupScheduleType._(
    TfArgLiteral('NONE'),
  );
  static const automatic = SpannerInstanceDefaultBackupScheduleType._(
    TfArgLiteral('AUTOMATIC'),
  );

  static const List<SpannerInstanceDefaultBackupScheduleType> values = [
    none,
    automatic,
  ];
}

/// Spanner Instance enum for `edition`.
extension type const SpannerInstanceEdition._(TfArg<String> _)
    implements TfArg<String> {
  SpannerInstanceEdition.variable(String name) : this._(TfArg.variable(name));
  SpannerInstanceEdition.expression(String template)
    : this._(TfArg.expression(template));
  const SpannerInstanceEdition.arg(TfArg<String> arg) : this._(arg);

  static const editionUnspecified = SpannerInstanceEdition._(
    TfArgLiteral('EDITION_UNSPECIFIED'),
  );
  static const standard = SpannerInstanceEdition._(TfArgLiteral('STANDARD'));
  static const enterprise = SpannerInstanceEdition._(
    TfArgLiteral('ENTERPRISE'),
  );
  static const enterprisePlus = SpannerInstanceEdition._(
    TfArgLiteral('ENTERPRISE_PLUS'),
  );

  static const List<SpannerInstanceEdition> values = [
    editionUnspecified,
    standard,
    enterprise,
    enterprisePlus,
  ];
}

/// Spanner Instance enum for `instance_type`.
extension type const SpannerInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  SpannerInstanceType.variable(String name) : this._(TfArg.variable(name));
  SpannerInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SpannerInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const provisioned = SpannerInstanceType._(TfArgLiteral('PROVISIONED'));
  static const freeInstance = SpannerInstanceType._(
    TfArgLiteral('FREE_INSTANCE'),
  );

  static const List<SpannerInstanceType> values = [provisioned, freeInstance];
}

/// Spanner Instance enum for `state`.
extension type const SpannerInstanceState._(TfArg<String> _)
    implements TfArg<String> {
  SpannerInstanceState.variable(String name) : this._(TfArg.variable(name));
  SpannerInstanceState.expression(String template)
    : this._(TfArg.expression(template));
  const SpannerInstanceState.arg(TfArg<String> arg) : this._(arg);

  static const ready = SpannerInstanceState._(TfArgLiteral('READY'));
  static const creating = SpannerInstanceState._(TfArgLiteral('CREATING'));

  static const List<SpannerInstanceState> values = [ready, creating];
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

  final List<SpannerInstanceAsymmetricAutoscalingOptions>?
  asymmetricAutoscalingOptions;

  final SpannerInstanceAutoscalingLimits? autoscalingLimits;

  final SpannerInstanceAutoscalingTargets? autoscalingTargets;

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
final class SpannerInstanceAsymmetricAutoscalingOptions {
  const SpannerInstanceAsymmetricAutoscalingOptions({
    required this.overrides,
    required this.replicaSelection,
  });

  final SpannerInstanceOverrides overrides;

  final SpannerInstanceReplicaSelection replicaSelection;

  Map<String, Object?> encode() => {
    'overrides': overrides.encode(),
    'replica_selection': replicaSelection.encode(),
  };
}

/// Typed helper for the `autoscaling_config.asymmetric_autoscaling_options.overrides` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceOverrides {
  const SpannerInstanceOverrides({
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

  final SpannerInstanceOverridesAutoscalingLimits? autoscalingLimits;

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
final class SpannerInstanceOverridesAutoscalingLimits {
  const SpannerInstanceOverridesAutoscalingLimits({
    required this.max,
    required this.min,
  });

  final SpannerInstanceAutoscalingLimitsMax max;

  final SpannerInstanceAutoscalingLimitsMin min;

  Map<String, Object?> encode() => {...max.encode(), ...min.encode()};
}

/// Exactly one of `min_nodes`, `min_processing_units` on the `autoscaling_config.asymmetric_autoscaling_options.overrides.autoscaling_limits` block of `google_spanner_instance`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.minNodes(...)`.
sealed class SpannerInstanceAutoscalingLimitsMin {
  const SpannerInstanceAutoscalingLimitsMin();

  /// Sets `min_nodes`.
  const factory SpannerInstanceAutoscalingLimitsMin.minNodes(
    TfArg<num> minNodes,
  ) = SpannerInstanceAutoscalingLimitsMinNodes;

  /// Sets `min_processing_units`.
  const factory SpannerInstanceAutoscalingLimitsMin.minProcessingUnits(
    TfArg<num> minProcessingUnits,
  ) = SpannerInstanceAutoscalingLimitsMinProcessingUnits;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstanceAutoscalingLimitsMin.minNodes] choice: sets `min_nodes`.
final class SpannerInstanceAutoscalingLimitsMinNodes
    extends SpannerInstanceAutoscalingLimitsMin {
  const SpannerInstanceAutoscalingLimitsMinNodes(this.minNodes);

  final TfArg<num> minNodes;

  @override
  String get blockKey => 'min_nodes';

  @override
  Map<String, Object?> encode() => {'min_nodes': minNodes.toTfJson()};
}

/// The [SpannerInstanceAutoscalingLimitsMin.minProcessingUnits] choice: sets `min_processing_units`.
final class SpannerInstanceAutoscalingLimitsMinProcessingUnits
    extends SpannerInstanceAutoscalingLimitsMin {
  const SpannerInstanceAutoscalingLimitsMinProcessingUnits(
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
sealed class SpannerInstanceAutoscalingLimitsMax {
  const SpannerInstanceAutoscalingLimitsMax();

  /// Sets `max_nodes`.
  const factory SpannerInstanceAutoscalingLimitsMax.maxNodes(
    TfArg<num> maxNodes,
  ) = SpannerInstanceAutoscalingLimitsMaxNodes;

  /// Sets `max_processing_units`.
  const factory SpannerInstanceAutoscalingLimitsMax.maxProcessingUnits(
    TfArg<num> maxProcessingUnits,
  ) = SpannerInstanceAutoscalingLimitsMaxProcessingUnits;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstanceAutoscalingLimitsMax.maxNodes] choice: sets `max_nodes`.
final class SpannerInstanceAutoscalingLimitsMaxNodes
    extends SpannerInstanceAutoscalingLimitsMax {
  const SpannerInstanceAutoscalingLimitsMaxNodes(this.maxNodes);

  final TfArg<num> maxNodes;

  @override
  String get blockKey => 'max_nodes';

  @override
  Map<String, Object?> encode() => {'max_nodes': maxNodes.toTfJson()};
}

/// The [SpannerInstanceAutoscalingLimitsMax.maxProcessingUnits] choice: sets `max_processing_units`.
final class SpannerInstanceAutoscalingLimitsMaxProcessingUnits
    extends SpannerInstanceAutoscalingLimitsMax {
  const SpannerInstanceAutoscalingLimitsMaxProcessingUnits(
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
final class SpannerInstanceReplicaSelection {
  const SpannerInstanceReplicaSelection({required this.location});

  final TfArg<String> location;

  Map<String, Object?> encode() => {'location': location.toTfJson()};
}

/// Typed helper for the `autoscaling_config.autoscaling_limits` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceAutoscalingLimits {
  const SpannerInstanceAutoscalingLimits({
    required this.max,
    required this.min,
  });

  final SpannerInstanceMax max;

  final SpannerInstanceMin min;

  Map<String, Object?> encode() => {...max.encode(), ...min.encode()};
}

/// Exactly one of `min_processing_units`, `min_nodes` on the `autoscaling_config.autoscaling_limits` block of `google_spanner_instance`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.minProcessingUnits(...)`.
sealed class SpannerInstanceMin {
  const SpannerInstanceMin();

  /// Sets `min_processing_units`.
  const factory SpannerInstanceMin.minProcessingUnits(
    TfArg<num> minProcessingUnits,
  ) = SpannerInstanceMinProcessingUnits;

  /// Sets `min_nodes`.
  const factory SpannerInstanceMin.minNodes(TfArg<num> minNodes) =
      SpannerInstanceMinNodes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstanceMin.minProcessingUnits] choice: sets `min_processing_units`.
final class SpannerInstanceMinProcessingUnits extends SpannerInstanceMin {
  const SpannerInstanceMinProcessingUnits(this.minProcessingUnits);

  final TfArg<num> minProcessingUnits;

  @override
  String get blockKey => 'min_processing_units';

  @override
  Map<String, Object?> encode() => {
    'min_processing_units': minProcessingUnits.toTfJson(),
  };
}

/// The [SpannerInstanceMin.minNodes] choice: sets `min_nodes`.
final class SpannerInstanceMinNodes extends SpannerInstanceMin {
  const SpannerInstanceMinNodes(this.minNodes);

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
sealed class SpannerInstanceMax {
  const SpannerInstanceMax();

  /// Sets `max_processing_units`.
  const factory SpannerInstanceMax.maxProcessingUnits(
    TfArg<num> maxProcessingUnits,
  ) = SpannerInstanceMaxProcessingUnits;

  /// Sets `max_nodes`.
  const factory SpannerInstanceMax.maxNodes(TfArg<num> maxNodes) =
      SpannerInstanceMaxNodes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstanceMax.maxProcessingUnits] choice: sets `max_processing_units`.
final class SpannerInstanceMaxProcessingUnits extends SpannerInstanceMax {
  const SpannerInstanceMaxProcessingUnits(this.maxProcessingUnits);

  final TfArg<num> maxProcessingUnits;

  @override
  String get blockKey => 'max_processing_units';

  @override
  Map<String, Object?> encode() => {
    'max_processing_units': maxProcessingUnits.toTfJson(),
  };
}

/// The [SpannerInstanceMax.maxNodes] choice: sets `max_nodes`.
final class SpannerInstanceMaxNodes extends SpannerInstanceMax {
  const SpannerInstanceMaxNodes(this.maxNodes);

  final TfArg<num> maxNodes;

  @override
  String get blockKey => 'max_nodes';

  @override
  Map<String, Object?> encode() => {'max_nodes': maxNodes.toTfJson()};
}

/// Typed helper for the `autoscaling_config.autoscaling_targets` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceAutoscalingTargets {
  const SpannerInstanceAutoscalingTargets({
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
///   'app',
///   config: .literal('regional-asia-northeast1'),
///   displayName: TfArg.literal('App Spanner'),
///   numNodes: TfArg.literal(1),
/// );
/// ```
final class GoogleSpannerInstance extends Resource {
  static const String tfType = 'google_spanner_instance';

  GoogleSpannerInstance(
    super.localName, {
    required RefTo<GoogleSpannerInstanceConfig> config,
    required TfArg<String> displayName,
    TfArg<num>? numNodes,
    TfArg<num>? processingUnits,
    SpannerInstanceEdition? edition,
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
           'config': config.encodeAs('name'),
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get config => TfRef.attribute<String>(this, 'config');

  /// Reference to `default_backup_schedule_type` attribute.
  TfRef<String> get defaultBackupScheduleType =>
      TfRef.attribute<String>(this, 'default_backup_schedule_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `num_nodes` attribute.
  TfRef<num> get numNodes => TfRef.attribute<num>(this, 'num_nodes');

  /// Reference to `processing_units` attribute.
  TfRef<num> get processingUnits =>
      TfRef.attribute<num>(this, 'processing_units');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
