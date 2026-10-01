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
    'base': ?base?.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_cluster_capacity_providers`.
final class AwsEcsClusterCapacityProviders extends Resource {
  static const String tfType = 'aws_ecs_cluster_capacity_providers';

  AwsEcsClusterCapacityProviders(
    super.localName, {
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
           'capacity_providers': ?capacityProviders,
           'cluster_name': clusterName,
           'region': ?region,
           if (defaultCapacityProviderStrategy != null)
             'default_capacity_provider_strategy': TfArg.literal([
               for (final e in defaultCapacityProviderStrategy) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsClusterCapacityProvidersSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsClusterCapacityProviders>`.
  RefTo<AwsEcsClusterCapacityProviders> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `capacity_providers` attribute.
  TfRef<List<String>> get capacityProviders =>
      TfRef.attribute<List<String>>(this, 'capacity_providers');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
