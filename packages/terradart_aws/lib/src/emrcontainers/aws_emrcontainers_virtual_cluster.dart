// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emrcontainers_virtual_cluster`.
const Set<String> _awsEmrcontainersVirtualClusterSensitive = <String>{};

/// Typed helper for the `container_provider` block of
/// `aws_emrcontainers_virtual_cluster` (derived from provider schema).
@immutable
final class EmrcontainersVirtualClusterContainerProvider {
  const EmrcontainersVirtualClusterContainerProvider({
    required this.id,
    required this.type,
    required this.info,
  });

  final TfArg<String> id;

  final TfArg<String> type;

  final EmrcontainersVirtualClusterContainerProviderInfo info;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': type.toTfJson(),
    'info': info.encode(),
  };
}

/// Typed helper for the `container_provider.info` block of
/// `aws_emrcontainers_virtual_cluster` (derived from provider schema).
@immutable
final class EmrcontainersVirtualClusterContainerProviderInfo {
  const EmrcontainersVirtualClusterContainerProviderInfo({
    required this.eksInfo,
  });

  final EmrcontainersVirtualClusterContainerProviderInfoEksInfo eksInfo;

  Map<String, Object?> encode() => {'eks_info': eksInfo.encode()};
}

/// Typed helper for the `container_provider.info.eks_info` block of
/// `aws_emrcontainers_virtual_cluster` (derived from provider schema).
@immutable
final class EmrcontainersVirtualClusterContainerProviderInfoEksInfo {
  const EmrcontainersVirtualClusterContainerProviderInfoEksInfo({
    this.namespace,
  });

  final TfArg<String>? namespace;

  Map<String, Object?> encode() => {
    if (namespace != null) 'namespace': namespace!.toTfJson(),
  };
}

/// Factory wrapper for `aws_emrcontainers_virtual_cluster`.
final class AwsEmrcontainersVirtualCluster extends Resource {
  static const String tfType = 'aws_emrcontainers_virtual_cluster';

  AwsEmrcontainersVirtualCluster({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required EmrcontainersVirtualClusterContainerProvider containerProvider,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'container_provider': TfArg.literal(containerProvider.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrcontainersVirtualClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
