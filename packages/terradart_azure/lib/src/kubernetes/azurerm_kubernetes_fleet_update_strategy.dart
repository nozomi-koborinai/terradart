// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kubernetes_fleet_update_strategy`.
const Set<String> _azurermKubernetesFleetUpdateStrategySensitive = <String>{};

/// Typed helper for the `stage` block of
/// `azurerm_kubernetes_fleet_update_strategy` (derived from provider schema).
@immutable
final class KubernetesFleetUpdateStrategyStage {
  const KubernetesFleetUpdateStrategyStage({
    this.afterStageWaitInSeconds,
    required this.name,
    required this.group,
  });

  final TfArg<num>? afterStageWaitInSeconds;

  final TfArg<String> name;

  final List<KubernetesFleetUpdateStrategyGroup> group;

  @internal
  Map<String, Object?> encode() => {
    'after_stage_wait_in_seconds': ?afterStageWaitInSeconds?.toTfJson(),
    'name': name.toTfJson(),
    'group': [for (final e in group) e.encode()],
  };
}

/// Typed helper for the `stage.group` block of
/// `azurerm_kubernetes_fleet_update_strategy` (derived from provider schema).
@immutable
final class KubernetesFleetUpdateStrategyGroup {
  const KubernetesFleetUpdateStrategyGroup({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `azurerm_kubernetes_fleet_update_strategy`.
final class AzurermKubernetesFleetUpdateStrategy extends Resource {
  static const String tfType = 'azurerm_kubernetes_fleet_update_strategy';

  AzurermKubernetesFleetUpdateStrategy(
    super.localName, {
    required TfArg<String> kubernetesFleetManagerId,
    required TfArg<String> name,
    required List<KubernetesFleetUpdateStrategyStage> stage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kubernetes_fleet_manager_id': kubernetesFleetManagerId,
           'name': name,
           'stage': TfArg.literal([for (final e in stage) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKubernetesFleetUpdateStrategySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesFleetUpdateStrategy>`.
  RefTo<AzurermKubernetesFleetUpdateStrategy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kubernetes_fleet_manager_id` attribute.
  TfRef<String> get kubernetesFleetManagerId =>
      TfRef.attribute<String>(this, 'kubernetes_fleet_manager_id');
}
