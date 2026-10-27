// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_spark_pool`.
const Set<String> _azurermSynapseSparkPoolSensitive = <String>{};

/// Synapse Spark Pool Node enum for `node_size`.
extension type const SynapseSparkPoolNodeSize._(TfArg<String> _)
    implements TfArg<String> {
  SynapseSparkPoolNodeSize.variable(String name) : this._(TfArg.variable(name));
  SynapseSparkPoolNodeSize.expression(String template)
    : this._(TfArg.expression(template));
  const SynapseSparkPoolNodeSize.arg(TfArg<String> arg) : this._(arg);

  static const large = SynapseSparkPoolNodeSize._(TfArgLiteral('Large'));
  static const medium = SynapseSparkPoolNodeSize._(TfArgLiteral('Medium'));
  static const none = SynapseSparkPoolNodeSize._(TfArgLiteral('None'));
  static const small = SynapseSparkPoolNodeSize._(TfArgLiteral('Small'));
  static const xlarge = SynapseSparkPoolNodeSize._(TfArgLiteral('XLarge'));
  static const xxlarge = SynapseSparkPoolNodeSize._(TfArgLiteral('XXLarge'));
  static const xxxlarge = SynapseSparkPoolNodeSize._(TfArgLiteral('XXXLarge'));

  static const List<SynapseSparkPoolNodeSize> values = [
    large,
    medium,
    none,
    small,
    xlarge,
    xxlarge,
    xxxlarge,
  ];
}

/// Synapse Spark Pool Node Size enum for `node_size_family`.
extension type const SynapseSparkPoolNodeSizeFamily._(TfArg<String> _)
    implements TfArg<String> {
  SynapseSparkPoolNodeSizeFamily.variable(String name)
    : this._(TfArg.variable(name));
  SynapseSparkPoolNodeSizeFamily.expression(String template)
    : this._(TfArg.expression(template));
  const SynapseSparkPoolNodeSizeFamily.arg(TfArg<String> arg) : this._(arg);

  static const hardwareacceleratedfpga = SynapseSparkPoolNodeSizeFamily._(
    TfArgLiteral('HardwareAcceleratedFPGA'),
  );
  static const hardwareacceleratedgpu = SynapseSparkPoolNodeSizeFamily._(
    TfArgLiteral('HardwareAcceleratedGPU'),
  );
  static const memoryoptimized = SynapseSparkPoolNodeSizeFamily._(
    TfArgLiteral('MemoryOptimized'),
  );
  static const none = SynapseSparkPoolNodeSizeFamily._(TfArgLiteral('None'));

  static const List<SynapseSparkPoolNodeSizeFamily> values = [
    hardwareacceleratedfpga,
    hardwareacceleratedgpu,
    memoryoptimized,
    none,
  ];
}

/// Synapse Spark Pool Spark enum for `spark_version`.
extension type const SynapseSparkPoolSparkVersion._(TfArg<String> _)
    implements TfArg<String> {
  SynapseSparkPoolSparkVersion.variable(String name)
    : this._(TfArg.variable(name));
  SynapseSparkPoolSparkVersion.expression(String template)
    : this._(TfArg.expression(template));
  const SynapseSparkPoolSparkVersion.arg(TfArg<String> arg) : this._(arg);

  static const v3p4 = SynapseSparkPoolSparkVersion._(TfArgLiteral('3.4'));
  static const v3p5 = SynapseSparkPoolSparkVersion._(TfArgLiteral('3.5'));

  static const List<SynapseSparkPoolSparkVersion> values = [v3p4, v3p5];
}

/// Exactly one of `auto_scale`, `node_count` on `azurerm_synapse_spark_pool`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.autoScale(...)`.
sealed class SynapseSparkPoolAutoScaleOrNodeCount {
  const SynapseSparkPoolAutoScaleOrNodeCount();

  /// Sets `auto_scale`.
  const factory SynapseSparkPoolAutoScaleOrNodeCount.autoScale(
    SynapseSparkPoolAutoScale autoScale,
  ) = SynapseSparkPoolAutoScaleOrNodeCountAutoScale;

  /// Sets `node_count`.
  const factory SynapseSparkPoolAutoScaleOrNodeCount.nodeCount(
    TfArg<num> nodeCount,
  ) = SynapseSparkPoolAutoScaleOrNodeCountChoice;

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

/// The [SynapseSparkPoolAutoScaleOrNodeCount.autoScale] choice: sets `auto_scale`.
final class SynapseSparkPoolAutoScaleOrNodeCountAutoScale
    extends SynapseSparkPoolAutoScaleOrNodeCount {
  const SynapseSparkPoolAutoScaleOrNodeCountAutoScale(this.autoScale);

  final SynapseSparkPoolAutoScale autoScale;

  @internal
  @override
  String get blockKey => 'auto_scale';

  @internal
  @override
  Map<String, Object?> encode() => {'auto_scale': autoScale.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'auto_scale': TfArg.literal(autoScale.encode()),
  };
}

/// The [SynapseSparkPoolAutoScaleOrNodeCount.nodeCount] choice: sets `node_count`.
final class SynapseSparkPoolAutoScaleOrNodeCountChoice
    extends SynapseSparkPoolAutoScaleOrNodeCount {
  const SynapseSparkPoolAutoScaleOrNodeCountChoice(this.nodeCount);

  final TfArg<num> nodeCount;

  @internal
  @override
  String get blockKey => 'node_count';

  @internal
  @override
  Map<String, Object?> encode() => {'node_count': nodeCount.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'node_count': nodeCount};
}

/// Typed helper for the `auto_pause` block of
/// `azurerm_synapse_spark_pool` (derived from provider schema).
@immutable
final class SynapseSparkPoolAutoPause {
  const SynapseSparkPoolAutoPause({required this.delayInMinutes});

  final TfArg<num> delayInMinutes;

  @internal
  Map<String, Object?> encode() => {
    'delay_in_minutes': delayInMinutes.toTfJson(),
  };
}

/// Typed helper for the `auto_scale` block of
/// `azurerm_synapse_spark_pool` (derived from provider schema).
@immutable
final class SynapseSparkPoolAutoScale {
  const SynapseSparkPoolAutoScale({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  final TfArg<num> maxNodeCount;

  final TfArg<num> minNodeCount;

  @internal
  Map<String, Object?> encode() => {
    'max_node_count': maxNodeCount.toTfJson(),
    'min_node_count': minNodeCount.toTfJson(),
  };
}

/// Typed helper for the `library_requirement` block of
/// `azurerm_synapse_spark_pool` (derived from provider schema).
@immutable
final class SynapseSparkPoolLibraryRequirement {
  const SynapseSparkPoolLibraryRequirement({
    required this.content,
    required this.filename,
  });

  final TfArg<String> content;

  final TfArg<String> filename;

  @internal
  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'filename': filename.toTfJson(),
  };
}

/// Typed helper for the `spark_config` block of
/// `azurerm_synapse_spark_pool` (derived from provider schema).
@immutable
final class SynapseSparkPoolSparkConfig {
  const SynapseSparkPoolSparkConfig({
    required this.content,
    required this.filename,
  });

  final TfArg<String> content;

  final TfArg<String> filename;

  @internal
  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'filename': filename.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_synapse_spark_pool`.
final class AzurermSynapseSparkPool extends Resource {
  static const String tfType = 'azurerm_synapse_spark_pool';

  AzurermSynapseSparkPool(
    super.localName, {
    TfArg<num>? cacheSize,
    TfArg<bool>? computeIsolationEnabled,
    TfArg<bool>? dynamicExecutorAllocationEnabled,
    TfArg<num>? maxExecutors,
    TfArg<num>? minExecutors,
    required TfArg<String> name,
    required SynapseSparkPoolAutoScaleOrNodeCount autoScaleOrNodeCount,
    required SynapseSparkPoolNodeSize nodeSize,
    required SynapseSparkPoolNodeSizeFamily nodeSizeFamily,
    TfArg<bool>? sessionLevelPackagesEnabled,
    TfArg<String>? sparkEventsFolder,
    TfArg<String>? sparkLogFolder,
    required SynapseSparkPoolSparkVersion sparkVersion,
    required TfArg<String> synapseWorkspaceId,
    TfArg<Map<String, String>>? tags,
    SynapseSparkPoolAutoPause? autoPause,
    SynapseSparkPoolLibraryRequirement? libraryRequirement,
    SynapseSparkPoolSparkConfig? sparkConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cache_size': ?cacheSize,
           'compute_isolation_enabled': ?computeIsolationEnabled,
           'dynamic_executor_allocation_enabled':
               ?dynamicExecutorAllocationEnabled,
           'max_executors': ?maxExecutors,
           'min_executors': ?minExecutors,
           'name': name,
           ...autoScaleOrNodeCount.argMap,
           'node_size': nodeSize,
           'node_size_family': nodeSizeFamily,
           'session_level_packages_enabled': ?sessionLevelPackagesEnabled,
           'spark_events_folder': ?sparkEventsFolder,
           'spark_log_folder': ?sparkLogFolder,
           'spark_version': sparkVersion,
           'synapse_workspace_id': synapseWorkspaceId,
           'tags': ?tags,
           if (autoPause != null)
             'auto_pause': TfArg.literal(autoPause.encode()),
           if (libraryRequirement != null)
             'library_requirement': TfArg.literal(libraryRequirement.encode()),
           if (sparkConfig != null)
             'spark_config': TfArg.literal(sparkConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSynapseSparkPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseSparkPool>`.
  RefTo<AzurermSynapseSparkPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cache_size` attribute.
  TfRef<num> get cacheSize => TfRef.attribute<num>(this, 'cache_size');

  /// Reference to `compute_isolation_enabled` attribute.
  TfRef<bool> get computeIsolationEnabled =>
      TfRef.attribute<bool>(this, 'compute_isolation_enabled');

  /// Reference to `dynamic_executor_allocation_enabled` attribute.
  TfRef<bool> get dynamicExecutorAllocationEnabled =>
      TfRef.attribute<bool>(this, 'dynamic_executor_allocation_enabled');

  /// Reference to `max_executors` attribute.
  TfRef<num> get maxExecutors => TfRef.attribute<num>(this, 'max_executors');

  /// Reference to `min_executors` attribute.
  TfRef<num> get minExecutors => TfRef.attribute<num>(this, 'min_executors');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `node_size` attribute.
  TfRef<String> get nodeSize => TfRef.attribute<String>(this, 'node_size');

  /// Reference to `node_size_family` attribute.
  TfRef<String> get nodeSizeFamily =>
      TfRef.attribute<String>(this, 'node_size_family');

  /// Reference to `session_level_packages_enabled` attribute.
  TfRef<bool> get sessionLevelPackagesEnabled =>
      TfRef.attribute<bool>(this, 'session_level_packages_enabled');

  /// Reference to `spark_events_folder` attribute.
  TfRef<String> get sparkEventsFolder =>
      TfRef.attribute<String>(this, 'spark_events_folder');

  /// Reference to `spark_log_folder` attribute.
  TfRef<String> get sparkLogFolder =>
      TfRef.attribute<String>(this, 'spark_log_folder');

  /// Reference to `spark_version` attribute.
  TfRef<String> get sparkVersion =>
      TfRef.attribute<String>(this, 'spark_version');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
