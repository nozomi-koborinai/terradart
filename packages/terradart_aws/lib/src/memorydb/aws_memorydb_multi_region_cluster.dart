// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_multi_region_cluster`.
const Set<String> _awsMemorydbMultiRegionClusterSensitive = <String>{};

/// Memorydb Multi Region Cluster enum for `engine`.
extension type const MemorydbMultiRegionClusterEngine._(TfArg<String> _)
    implements TfArg<String> {
  MemorydbMultiRegionClusterEngine.variable(String name)
    : this._(TfArg.variable(name));
  MemorydbMultiRegionClusterEngine.expression(String template)
    : this._(TfArg.expression(template));
  const MemorydbMultiRegionClusterEngine.arg(TfArg<String> arg) : this._(arg);

  static const redis = MemorydbMultiRegionClusterEngine._(
    TfArgLiteral('redis'),
  );
  static const valkey = MemorydbMultiRegionClusterEngine._(
    TfArgLiteral('valkey'),
  );

  static const List<MemorydbMultiRegionClusterEngine> values = [redis, valkey];
}

/// Memorydb Multi Region Cluster Update enum for `update_strategy`.
extension type const MemorydbMultiRegionClusterUpdateStrategy._(TfArg<String> _)
    implements TfArg<String> {
  MemorydbMultiRegionClusterUpdateStrategy.variable(String name)
    : this._(TfArg.variable(name));
  MemorydbMultiRegionClusterUpdateStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const MemorydbMultiRegionClusterUpdateStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const coordinated = MemorydbMultiRegionClusterUpdateStrategy._(
    TfArgLiteral('coordinated'),
  );
  static const uncoordinated = MemorydbMultiRegionClusterUpdateStrategy._(
    TfArgLiteral('uncoordinated'),
  );

  static const List<MemorydbMultiRegionClusterUpdateStrategy> values = [
    coordinated,
    uncoordinated,
  ];
}

/// Factory wrapper for `aws_memorydb_multi_region_cluster`.
final class AwsMemorydbMultiRegionCluster extends Resource {
  static const String tfType = 'aws_memorydb_multi_region_cluster';

  AwsMemorydbMultiRegionCluster(
    super.localName, {
    TfArg<String>? description,
    MemorydbMultiRegionClusterEngine? engine,
    TfArg<String>? engineVersion,
    required TfArg<String> multiRegionClusterNameSuffix,
    TfArg<String>? multiRegionParameterGroupName,
    required TfArg<String> nodeType,
    TfArg<num>? numShards,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? tlsEnabled,
    MemorydbMultiRegionClusterUpdateStrategy? updateStrategy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'engine': ?engine,
           'engine_version': ?engineVersion,
           'multi_region_cluster_name_suffix': multiRegionClusterNameSuffix,
           'multi_region_parameter_group_name': ?multiRegionParameterGroupName,
           'node_type': nodeType,
           'num_shards': ?numShards,
           'region': ?region,
           'tags': ?tags,
           'tls_enabled': ?tlsEnabled,
           'update_strategy': ?updateStrategy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbMultiRegionClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMemorydbMultiRegionCluster>`.
  RefTo<AwsMemorydbMultiRegionCluster> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `multi_region_cluster_name` attribute.
  TfRef<String> get multiRegionClusterName =>
      TfRef.attribute<String>(this, 'multi_region_cluster_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `multi_region_cluster_name_suffix` attribute.
  TfRef<String> get multiRegionClusterNameSuffix =>
      TfRef.attribute<String>(this, 'multi_region_cluster_name_suffix');

  /// Reference to `multi_region_parameter_group_name` attribute.
  TfRef<String> get multiRegionParameterGroupName =>
      TfRef.attribute<String>(this, 'multi_region_parameter_group_name');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `num_shards` attribute.
  TfRef<num> get numShards => TfRef.attribute<num>(this, 'num_shards');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tls_enabled` attribute.
  TfRef<bool> get tlsEnabled => TfRef.attribute<bool>(this, 'tls_enabled');

  /// Reference to `update_strategy` attribute.
  TfRef<String> get updateStrategy =>
      TfRef.attribute<String>(this, 'update_strategy');
}
