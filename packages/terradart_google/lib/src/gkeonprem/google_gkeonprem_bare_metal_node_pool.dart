// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gkeonprem_bare_metal_node_pool`.
const Set<String> _googleGkeonpremBareMetalNodePoolSensitive = <String>{};

/// Gkeonprem Bare Metal Node Pool enum for `state`.
enum GkeonpremBareMetalNodePoolState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  provisioning('PROVISIONING'),
  running('RUNNING'),
  reconciling('RECONCILING'),
  stopping('STOPPING'),
  error('ERROR'),
  degraded('DEGRADED');

  const GkeonpremBareMetalNodePoolState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `node_pool_config` block of
/// `google_gkeonprem_bare_metal_node_pool` (derived from provider schema).
@immutable
final class GkeonpremBareMetalNodePoolNodePoolConfig {
  const GkeonpremBareMetalNodePoolNodePoolConfig({
    this.labels,
    this.operatingSystem,
    required this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final List<GkeonpremBareMetalNodePoolNodePoolConfigNodeConfigs> nodeConfigs;

  final List<GkeonpremBareMetalNodePoolNodePoolConfigTaints>? taints;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (operatingSystem != null)
      'operating_system': operatingSystem!.toTfJson(),
    'node_configs': [for (final e in nodeConfigs) e.encode()],
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
  };
}

/// Typed helper for the `node_pool_config.node_configs` block of
/// `google_gkeonprem_bare_metal_node_pool` (derived from provider schema).
@immutable
final class GkeonpremBareMetalNodePoolNodePoolConfigNodeConfigs {
  const GkeonpremBareMetalNodePoolNodePoolConfigNodeConfigs({
    this.labels,
    this.nodeIp,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? nodeIp;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (nodeIp != null) 'node_ip': nodeIp!.toTfJson(),
  };
}

/// Typed helper for the `node_pool_config.taints` block of
/// `google_gkeonprem_bare_metal_node_pool` (derived from provider schema).
@immutable
final class GkeonpremBareMetalNodePoolNodePoolConfigTaints {
  const GkeonpremBareMetalNodePoolNodePoolConfigTaints({
    this.effect,
    this.key,
    this.value,
  });

  final TfArg<GkeonpremBareMetalNodePoolNodePoolConfigTaintsEffect>? effect;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (effect != null) 'effect': effect!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
enum GkeonpremBareMetalNodePoolNodePoolConfigTaintsEffect
    implements TerraformEnum {
  effectUnspecified('EFFECT_UNSPECIFIED'),
  preferNoSchedule('PREFER_NO_SCHEDULE'),
  noExecute('NO_EXECUTE');

  const GkeonpremBareMetalNodePoolNodePoolConfigTaintsEffect(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_gkeonprem_bare_metal_node_pool`.
///
/// A Google Bare Metal Node Pool.
///
/// GKE on-prem / GDC **bare metal node pool** — worker nodes for a
/// [GoogleGkeonpremBareMetalCluster].
///
/// **Cost / apply:** gcp-cost: GKE Enterprise / GDC `9186-F79E-3871` Bare
/// Metal SKU `297F-4642-B7A1` **$0.03288/h**. billing-behavior: requires
/// never_apply bare-metal cluster + physical hardware absent on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `gkeonprem.googleapis.com` before apply. [nodePoolConfig] is
/// required.
final class GoogleGkeonpremBareMetalNodePool extends Resource {
  static const String tfType = 'google_gkeonprem_bare_metal_node_pool';

  GoogleGkeonpremBareMetalNodePool({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> bareMetalCluster,
    required GkeonpremBareMetalNodePoolNodePoolConfig nodePoolConfig,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'bare_metal_cluster': bareMetalCluster,
           'node_pool_config': TfArg.literal(nodePoolConfig.encode()),
           if (displayName != null) 'display_name': displayName,
           if (annotations != null) 'annotations': annotations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeonpremBareMetalNodePoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
