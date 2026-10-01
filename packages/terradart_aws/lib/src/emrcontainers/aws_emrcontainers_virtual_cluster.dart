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

  final EmrcontainersVirtualClusterType type;

  final EmrcontainersVirtualClusterInfo info;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': type.toTfJson(),
    'info': info.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const EmrcontainersVirtualClusterType._(TfArg<String> _)
    implements TfArg<String> {
  EmrcontainersVirtualClusterType.variable(String name)
    : this._(TfArg.variable(name));
  EmrcontainersVirtualClusterType.expression(String template)
    : this._(TfArg.expression(template));
  const EmrcontainersVirtualClusterType.arg(TfArg<String> arg) : this._(arg);

  static const eks = EmrcontainersVirtualClusterType._(TfArgLiteral('EKS'));

  static const List<EmrcontainersVirtualClusterType> values = [eks];
}

/// Typed helper for the `container_provider.info` block of
/// `aws_emrcontainers_virtual_cluster` (derived from provider schema).
@immutable
final class EmrcontainersVirtualClusterInfo {
  const EmrcontainersVirtualClusterInfo({required this.eksInfo});

  final EmrcontainersVirtualClusterEksInfo eksInfo;

  Map<String, Object?> encode() => {'eks_info': eksInfo.encode()};
}

/// Typed helper for the `container_provider.info.eks_info` block of
/// `aws_emrcontainers_virtual_cluster` (derived from provider schema).
@immutable
final class EmrcontainersVirtualClusterEksInfo {
  const EmrcontainersVirtualClusterEksInfo({this.namespace});

  final TfArg<String>? namespace;

  Map<String, Object?> encode() => {'namespace': ?namespace?.toTfJson()};
}

/// Factory wrapper for `aws_emrcontainers_virtual_cluster`.
final class AwsEmrcontainersVirtualCluster extends Resource {
  static const String tfType = 'aws_emrcontainers_virtual_cluster';

  AwsEmrcontainersVirtualCluster(
    super.localName, {
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
           'region': ?region,
           'tags': ?tags,
           'container_provider': TfArg.literal(containerProvider.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrcontainersVirtualClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrcontainersVirtualCluster>`.
  RefTo<AwsEmrcontainersVirtualCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
