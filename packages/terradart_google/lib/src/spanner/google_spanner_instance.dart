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

/// At most one of `num_nodes`, `processing_units`, `autoscaling_config` on `google_spanner_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.numNodes(...)`.
sealed class SpannerInstanceCapacity {
  const SpannerInstanceCapacity();

  /// Sets `num_nodes`.
  const factory SpannerInstanceCapacity.numNodes(TfArg<num> numNodes) =
      SpannerInstanceCapacityNumNodes;

  /// Sets `processing_units`.
  const factory SpannerInstanceCapacity.processingUnits(
    TfArg<num> processingUnits,
  ) = SpannerInstanceCapacityProcessingUnits;

  /// Sets `autoscaling_config`.
  const factory SpannerInstanceCapacity.autoscalingConfig(
    SpannerInstanceAutoscalingConfig autoscalingConfig,
  ) = SpannerInstanceCapacityAutoscalingConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpannerInstanceCapacity.numNodes] choice: sets `num_nodes`.
final class SpannerInstanceCapacityNumNodes extends SpannerInstanceCapacity {
  const SpannerInstanceCapacityNumNodes(this.numNodes);

  final TfArg<num> numNodes;

  @internal
  @override
  String get blockKey => 'num_nodes';

  @internal
  @override
  Map<String, Object?> encode() => {'num_nodes': numNodes.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'num_nodes': numNodes};
}

/// The [SpannerInstanceCapacity.processingUnits] choice: sets `processing_units`.
final class SpannerInstanceCapacityProcessingUnits
    extends SpannerInstanceCapacity {
  const SpannerInstanceCapacityProcessingUnits(this.processingUnits);

  final TfArg<num> processingUnits;

  @internal
  @override
  String get blockKey => 'processing_units';

  @internal
  @override
  Map<String, Object?> encode() => {
    'processing_units': processingUnits.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'processing_units': processingUnits,
  };
}

/// The [SpannerInstanceCapacity.autoscalingConfig] choice: sets `autoscaling_config`.
final class SpannerInstanceCapacityAutoscalingConfig
    extends SpannerInstanceCapacity {
  const SpannerInstanceCapacityAutoscalingConfig(this.autoscalingConfig);

  final SpannerInstanceAutoscalingConfig autoscalingConfig;

  @internal
  @override
  String get blockKey => 'autoscaling_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'autoscaling_config': autoscalingConfig.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'autoscaling_config': TfArg.literal(autoscalingConfig.encode()),
  };
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

  @internal
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

  @internal
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

  final SpannerInstanceAutoscalingLimits? autoscalingLimits;

  @internal
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

/// Typed helper for the `autoscaling_config.autoscaling_limits` block of
/// `google_spanner_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SpannerInstanceAutoscalingLimits {
  const SpannerInstanceAutoscalingLimits({
    this.maxNodes,
    this.maxProcessingUnits,
    this.minNodes,
    this.minProcessingUnits,
  });

  final TfArg<num>? maxNodes;

  final TfArg<num>? maxProcessingUnits;

  final TfArg<num>? minNodes;

  final TfArg<num>? minProcessingUnits;

  @internal
  Map<String, Object?> encode() => {
    'max_nodes': ?maxNodes?.toTfJson(),
    'max_processing_units': ?maxProcessingUnits?.toTfJson(),
    'min_nodes': ?minNodes?.toTfJson(),
    'min_processing_units': ?minProcessingUnits?.toTfJson(),
  };
}

/// Typed helper for the `autoscaling_config.asymmetric_autoscaling_options.replica_selection` block of
/// `google_spanner_instance` (derived from provider schema).
@immutable
final class SpannerInstanceReplicaSelection {
  const SpannerInstanceReplicaSelection({required this.location});

  final TfArg<String> location;

  @internal
  Map<String, Object?> encode() => {'location': location.toTfJson()};
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

  @internal
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
/// Size it with [capacity]: `.numNodes(...)`, `.processingUnits(...)` or
/// `.autoscalingConfig(...)`, at most one (the provider rejects two).
///
/// Enable `spanner.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleSpannerInstance(
///   'app',
///   config: .literal('regional-asia-northeast1'),
///   displayName: TfArg.literal('App Spanner'),
///   capacity: .numNodes(.literal(1)),
/// );
/// ```
final class GoogleSpannerInstance extends Resource {
  static const String tfType = 'google_spanner_instance';

  GoogleSpannerInstance(
    super.localName, {
    required RefTo<GoogleSpannerInstanceConfig> config,
    required TfArg<String> displayName,
    SpannerInstanceCapacity? capacity,
    SpannerInstanceEdition? edition,
    TfArg<Map<String, String>>? labels,
    SpannerInstanceDefaultBackupScheduleType? defaultBackupScheduleType,
    TfArg<bool>? forceDestroy,
    SpannerInstanceType? instanceType,
    TfArg<String>? name,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config': config.encodeAs('name'),
           'display_name': displayName,
           ...?capacity?.argMap,
           'edition': ?edition,
           'labels': ?labels,
           'default_backup_schedule_type': ?defaultBackupScheduleType,
           'force_destroy': ?forceDestroy,
           'instance_type': ?instanceType,
           'name': ?name,
           'project': ?project,
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
