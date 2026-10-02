// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../gkeonprem/google_gkeonprem_bare_metal_cluster.dart'
    show GoogleGkeonpremBareMetalCluster;

/// Sensitive field paths for `google_gkeonprem_bare_metal_node_pool`.
const Set<String> _googleGkeonpremBareMetalNodePoolSensitive = <String>{};

/// Gkeonprem Bare Metal Node Pool enum for `state`.
extension type const GkeonpremBareMetalNodePoolState._(TfArg<String> _)
    implements TfArg<String> {
  GkeonpremBareMetalNodePoolState.variable(String name)
    : this._(TfArg.variable(name));
  GkeonpremBareMetalNodePoolState.expression(String template)
    : this._(TfArg.expression(template));
  const GkeonpremBareMetalNodePoolState.arg(TfArg<String> arg) : this._(arg);

  static const stateUnspecified = GkeonpremBareMetalNodePoolState._(
    TfArgLiteral('STATE_UNSPECIFIED'),
  );
  static const provisioning = GkeonpremBareMetalNodePoolState._(
    TfArgLiteral('PROVISIONING'),
  );
  static const running = GkeonpremBareMetalNodePoolState._(
    TfArgLiteral('RUNNING'),
  );
  static const reconciling = GkeonpremBareMetalNodePoolState._(
    TfArgLiteral('RECONCILING'),
  );
  static const stopping = GkeonpremBareMetalNodePoolState._(
    TfArgLiteral('STOPPING'),
  );
  static const error = GkeonpremBareMetalNodePoolState._(TfArgLiteral('ERROR'));
  static const degraded = GkeonpremBareMetalNodePoolState._(
    TfArgLiteral('DEGRADED'),
  );

  static const List<GkeonpremBareMetalNodePoolState> values = [
    stateUnspecified,
    provisioning,
    running,
    reconciling,
    stopping,
    error,
    degraded,
  ];
}

/// Typed helper for the `node_pool_config` block of
/// `google_gkeonprem_bare_metal_node_pool` (derived from provider schema).
@immutable
final class GkeonpremBareMetalNodePoolConfig {
  const GkeonpremBareMetalNodePoolConfig({
    this.labels,
    this.operatingSystem,
    required this.nodeConfigs,
    this.taints,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? operatingSystem;

  final List<GkeonpremBareMetalNodePoolNodeConfigs> nodeConfigs;

  final List<GkeonpremBareMetalNodePoolTaints>? taints;

  @internal
  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'operating_system': ?operatingSystem?.toTfJson(),
    'node_configs': [for (final e in nodeConfigs) e.encode()],
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
  };
}

/// Typed helper for the `node_pool_config.node_configs` block of
/// `google_gkeonprem_bare_metal_node_pool` (derived from provider schema).
@immutable
final class GkeonpremBareMetalNodePoolNodeConfigs {
  const GkeonpremBareMetalNodePoolNodeConfigs({this.labels, this.nodeIp});

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? nodeIp;

  @internal
  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'node_ip': ?nodeIp?.toTfJson(),
  };
}

/// Typed helper for the `node_pool_config.taints` block of
/// `google_gkeonprem_bare_metal_node_pool` (derived from provider schema).
@immutable
final class GkeonpremBareMetalNodePoolTaints {
  const GkeonpremBareMetalNodePoolTaints({this.effect, this.key, this.value});

  final GkeonpremBareMetalNodePoolEffect? effect;

  final TfArg<String>? key;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'effect': ?effect?.toTfJson(),
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
extension type const GkeonpremBareMetalNodePoolEffect._(TfArg<String> _)
    implements TfArg<String> {
  GkeonpremBareMetalNodePoolEffect.variable(String name)
    : this._(TfArg.variable(name));
  GkeonpremBareMetalNodePoolEffect.expression(String template)
    : this._(TfArg.expression(template));
  const GkeonpremBareMetalNodePoolEffect.arg(TfArg<String> arg) : this._(arg);

  static const effectUnspecified = GkeonpremBareMetalNodePoolEffect._(
    TfArgLiteral('EFFECT_UNSPECIFIED'),
  );
  static const preferNoSchedule = GkeonpremBareMetalNodePoolEffect._(
    TfArgLiteral('PREFER_NO_SCHEDULE'),
  );
  static const noExecute = GkeonpremBareMetalNodePoolEffect._(
    TfArgLiteral('NO_EXECUTE'),
  );

  static const List<GkeonpremBareMetalNodePoolEffect> values = [
    effectUnspecified,
    preferNoSchedule,
    noExecute,
  ];
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

  GoogleGkeonpremBareMetalNodePool(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required RefTo<GoogleGkeonpremBareMetalCluster> bareMetalCluster,
    required GkeonpremBareMetalNodePoolConfig nodePoolConfig,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? annotations,
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
           'bare_metal_cluster': bareMetalCluster.encodeAs('name'),
           'node_pool_config': TfArg.literal(nodePoolConfig.encode()),
           'display_name': ?displayName,
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeonpremBareMetalNodePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeonpremBareMetalNodePool>`.
  RefTo<GoogleGkeonpremBareMetalNodePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `bare_metal_cluster` attribute.
  TfRef<String> get bareMetalCluster =>
      TfRef.attribute<String>(this, 'bare_metal_cluster');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
