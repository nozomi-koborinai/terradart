// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_cluster_capacity_providers`.
const Set<String> _awsEcsClusterCapacityProvidersSensitive = <String>{};

/// Typed helper for the `default_capacity_provider_strategy` block of
/// `aws_ecs_cluster_capacity_providers` (derived from provider schema).
@immutable
final class EcsClusterCapacityProvidersDefaultCapacityProviderStrategy {
  const EcsClusterCapacityProvidersDefaultCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    this.weight,
  });

  final TfArg<num>? base;

  final TfArg<String> capacityProvider;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    if (base != null) 'base': base!.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_cluster_capacity_providers`.
final class AwsEcsClusterCapacityProviders extends Resource {
  static const String tfType = 'aws_ecs_cluster_capacity_providers';

  AwsEcsClusterCapacityProviders({
    required super.localName,
    TfArg<List<String>>? capacityProviders,
    required TfArg<String> clusterName,
    TfArg<String>? region,
    List<EcsClusterCapacityProvidersDefaultCapacityProviderStrategy>?
    defaultCapacityProviderStrategy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (capacityProviders != null)
             'capacity_providers': capacityProviders,
           'cluster_name': clusterName,
           if (region != null) 'region': region,
           if (defaultCapacityProviderStrategy != null)
             'default_capacity_provider_strategy': TfArg.literal([
               for (final e in defaultCapacityProviderStrategy) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsClusterCapacityProvidersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
