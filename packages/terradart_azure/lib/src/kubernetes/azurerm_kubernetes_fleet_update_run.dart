// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kubernetes_fleet_update_run`.
const Set<String> _azurermKubernetesFleetUpdateRunSensitive = <String>{};

/// At most one of `fleet_update_strategy_id`, `stage` on `azurerm_kubernetes_fleet_update_run`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.fleetUpdateStrategyId(...)`.
sealed class KubernetesFleetUpdateRunStrategy {
  const KubernetesFleetUpdateRunStrategy();

  /// Sets `fleet_update_strategy_id`.
  const factory KubernetesFleetUpdateRunStrategy.fleetUpdateStrategyId(
    TfArg<String> fleetUpdateStrategyId,
  ) = KubernetesFleetUpdateRunStrategyFleetUpdateStrategyId;

  /// Sets `stage`.
  const factory KubernetesFleetUpdateRunStrategy.stage(
    List<KubernetesFleetUpdateRunStage> stage,
  ) = KubernetesFleetUpdateRunStrategyStage;

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

/// The [KubernetesFleetUpdateRunStrategy.fleetUpdateStrategyId] choice: sets `fleet_update_strategy_id`.
final class KubernetesFleetUpdateRunStrategyFleetUpdateStrategyId
    extends KubernetesFleetUpdateRunStrategy {
  const KubernetesFleetUpdateRunStrategyFleetUpdateStrategyId(
    this.fleetUpdateStrategyId,
  );

  final TfArg<String> fleetUpdateStrategyId;

  @internal
  @override
  String get blockKey => 'fleet_update_strategy_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'fleet_update_strategy_id': fleetUpdateStrategyId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'fleet_update_strategy_id': fleetUpdateStrategyId,
  };
}

/// The [KubernetesFleetUpdateRunStrategy.stage] choice: sets `stage`.
final class KubernetesFleetUpdateRunStrategyStage
    extends KubernetesFleetUpdateRunStrategy {
  const KubernetesFleetUpdateRunStrategyStage(this.stage);

  final List<KubernetesFleetUpdateRunStage> stage;

  @internal
  @override
  String get blockKey => 'stage';

  @internal
  @override
  Map<String, Object?> encode() => {
    'stage': [for (final e in stage) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'stage': TfArg.literal([for (final e in stage) e.encode()]),
  };
}

/// Typed helper for the `managed_cluster_update` block of
/// `azurerm_kubernetes_fleet_update_run` (derived from provider schema).
@immutable
final class KubernetesFleetUpdateRunManagedClusterUpdate {
  const KubernetesFleetUpdateRunManagedClusterUpdate({
    this.nodeImageSelection,
    required this.upgrade,
  });

  final KubernetesFleetUpdateRunNodeImageSelection? nodeImageSelection;

  final KubernetesFleetUpdateRunUpgrade upgrade;

  @internal
  Map<String, Object?> encode() => {
    'node_image_selection': ?nodeImageSelection?.encode(),
    'upgrade': upgrade.encode(),
  };
}

/// Typed helper for the `managed_cluster_update.node_image_selection` block of
/// `azurerm_kubernetes_fleet_update_run` (derived from provider schema).
@immutable
final class KubernetesFleetUpdateRunNodeImageSelection {
  const KubernetesFleetUpdateRunNodeImageSelection({required this.type});

  final KubernetesFleetUpdateRunNodeImageSelectionType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const KubernetesFleetUpdateRunNodeImageSelectionType._(
  TfArg<String> _
) implements TfArg<String> {
  KubernetesFleetUpdateRunNodeImageSelectionType.variable(String name)
    : this._(TfArg.variable(name));
  KubernetesFleetUpdateRunNodeImageSelectionType.expression(String template)
    : this._(TfArg.expression(template));
  const KubernetesFleetUpdateRunNodeImageSelectionType.arg(TfArg<String> arg)
    : this._(arg);

  static const consistent = KubernetesFleetUpdateRunNodeImageSelectionType._(
    TfArgLiteral('Consistent'),
  );
  static const latest = KubernetesFleetUpdateRunNodeImageSelectionType._(
    TfArgLiteral('Latest'),
  );

  static const List<KubernetesFleetUpdateRunNodeImageSelectionType> values = [
    consistent,
    latest,
  ];
}

/// Typed helper for the `managed_cluster_update.upgrade` block of
/// `azurerm_kubernetes_fleet_update_run` (derived from provider schema).
@immutable
final class KubernetesFleetUpdateRunUpgrade {
  const KubernetesFleetUpdateRunUpgrade({
    this.kubernetesVersion,
    required this.type,
  });

  final TfArg<String>? kubernetesVersion;

  final KubernetesFleetUpdateRunUpgradeType type;

  @internal
  Map<String, Object?> encode() => {
    'kubernetes_version': ?kubernetesVersion?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const KubernetesFleetUpdateRunUpgradeType._(TfArg<String> _)
    implements TfArg<String> {
  KubernetesFleetUpdateRunUpgradeType.variable(String name)
    : this._(TfArg.variable(name));
  KubernetesFleetUpdateRunUpgradeType.expression(String template)
    : this._(TfArg.expression(template));
  const KubernetesFleetUpdateRunUpgradeType.arg(TfArg<String> arg)
    : this._(arg);

  static const full = KubernetesFleetUpdateRunUpgradeType._(
    TfArgLiteral('Full'),
  );
  static const nodeimageonly = KubernetesFleetUpdateRunUpgradeType._(
    TfArgLiteral('NodeImageOnly'),
  );

  static const List<KubernetesFleetUpdateRunUpgradeType> values = [
    full,
    nodeimageonly,
  ];
}

/// Typed helper for the `stage` block of
/// `azurerm_kubernetes_fleet_update_run` (derived from provider schema).
@immutable
final class KubernetesFleetUpdateRunStage {
  const KubernetesFleetUpdateRunStage({
    this.afterStageWaitInSeconds,
    required this.name,
    required this.group,
  });

  final TfArg<num>? afterStageWaitInSeconds;

  final TfArg<String> name;

  final List<KubernetesFleetUpdateRunGroup> group;

  @internal
  Map<String, Object?> encode() => {
    'after_stage_wait_in_seconds': ?afterStageWaitInSeconds?.toTfJson(),
    'name': name.toTfJson(),
    'group': [for (final e in group) e.encode()],
  };
}

/// Typed helper for the `stage.group` block of
/// `azurerm_kubernetes_fleet_update_run` (derived from provider schema).
@immutable
final class KubernetesFleetUpdateRunGroup {
  const KubernetesFleetUpdateRunGroup({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `azurerm_kubernetes_fleet_update_run`.
final class AzurermKubernetesFleetUpdateRun extends Resource {
  static const String tfType = 'azurerm_kubernetes_fleet_update_run';

  AzurermKubernetesFleetUpdateRun(
    super.localName, {
    KubernetesFleetUpdateRunStrategy? strategy,
    required TfArg<String> kubernetesFleetManagerId,
    required TfArg<String> name,
    required KubernetesFleetUpdateRunManagedClusterUpdate managedClusterUpdate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?strategy?.argMap,
           'kubernetes_fleet_manager_id': kubernetesFleetManagerId,
           'name': name,
           'managed_cluster_update': TfArg.literal(
             managedClusterUpdate.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKubernetesFleetUpdateRunSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesFleetUpdateRun>`.
  RefTo<AzurermKubernetesFleetUpdateRun> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fleet_update_strategy_id` attribute.
  TfRef<String> get fleetUpdateStrategyId =>
      TfRef.attribute<String>(this, 'fleet_update_strategy_id');

  /// Reference to `kubernetes_fleet_manager_id` attribute.
  TfRef<String> get kubernetesFleetManagerId =>
      TfRef.attribute<String>(this, 'kubernetes_fleet_manager_id');
}
