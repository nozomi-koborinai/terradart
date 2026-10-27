// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_chaos_studio_experiment`.
const Set<String> _azurermChaosStudioExperimentSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_chaos_studio_experiment` (derived from provider schema).
@immutable
final class ChaosStudioExperimentIdentity {
  const ChaosStudioExperimentIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `selectors` block of
/// `azurerm_chaos_studio_experiment` (derived from provider schema).
@immutable
final class ChaosStudioExperimentSelectors {
  const ChaosStudioExperimentSelectors({
    required this.chaosStudioTargetIds,
    required this.name,
  });

  final TfArg<List<String>> chaosStudioTargetIds;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'chaos_studio_target_ids': chaosStudioTargetIds.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `steps` block of
/// `azurerm_chaos_studio_experiment` (derived from provider schema).
@immutable
final class ChaosStudioExperimentSteps {
  const ChaosStudioExperimentSteps({required this.name, required this.branch});

  final TfArg<String> name;

  final List<ChaosStudioExperimentBranch> branch;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'branch': [for (final e in branch) e.encode()],
  };
}

/// Typed helper for the `steps.branch` block of
/// `azurerm_chaos_studio_experiment` (derived from provider schema).
@immutable
final class ChaosStudioExperimentBranch {
  const ChaosStudioExperimentBranch({
    required this.name,
    required this.actions,
  });

  final TfArg<String> name;

  final List<ChaosStudioExperimentActions> actions;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'actions': [for (final e in actions) e.encode()],
  };
}

/// Typed helper for the `steps.branch.actions` block of
/// `azurerm_chaos_studio_experiment` (derived from provider schema).
@immutable
final class ChaosStudioExperimentActions {
  const ChaosStudioExperimentActions({
    required this.actionType,
    this.duration,
    this.parameters,
    this.selectorName,
    this.urn,
  });

  final TfArg<String> actionType;

  final TfArg<String>? duration;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String>? selectorName;

  final TfArg<String>? urn;

  @internal
  Map<String, Object?> encode() => {
    'action_type': actionType.toTfJson(),
    'duration': ?duration?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'selector_name': ?selectorName?.toTfJson(),
    'urn': ?urn?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_chaos_studio_experiment`.
final class AzurermChaosStudioExperiment extends Resource {
  static const String tfType = 'azurerm_chaos_studio_experiment';

  AzurermChaosStudioExperiment(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    ChaosStudioExperimentIdentity? identity,
    required List<ChaosStudioExperimentSelectors> selectors,
    required List<ChaosStudioExperimentSteps> steps,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'selectors': TfArg.literal([for (final e in selectors) e.encode()]),
           'steps': TfArg.literal([for (final e in steps) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermChaosStudioExperimentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermChaosStudioExperiment>`.
  RefTo<AzurermChaosStudioExperiment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
