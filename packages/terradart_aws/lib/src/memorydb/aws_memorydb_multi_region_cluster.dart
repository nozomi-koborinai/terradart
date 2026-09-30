// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_multi_region_cluster`.
const Set<String> _awsMemorydbMultiRegionClusterSensitive = <String>{};

/// Memorydb Multi Region Cluster enum for `engine`.
enum MemorydbMultiRegionClusterEngine implements TerraformEnum {
  redis('redis'),
  valkey('valkey');

  const MemorydbMultiRegionClusterEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Memorydb Multi Region Cluster Update enum for `update_strategy`.
enum MemorydbMultiRegionClusterUpdateStrategy implements TerraformEnum {
  coordinated('coordinated'),
  uncoordinated('uncoordinated');

  const MemorydbMultiRegionClusterUpdateStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_memorydb_multi_region_cluster`.
final class AwsMemorydbMultiRegionCluster extends Resource {
  static const String tfType = 'aws_memorydb_multi_region_cluster';

  AwsMemorydbMultiRegionCluster({
    required super.localName,
    TfArg<String>? description,
    TfArg<MemorydbMultiRegionClusterEngine>? engine,
    TfArg<String>? engineVersion,
    required TfArg<String> multiRegionClusterNameSuffix,
    TfArg<String>? multiRegionParameterGroupName,
    required TfArg<String> nodeType,
    TfArg<num>? numShards,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? tlsEnabled,
    TfArg<MemorydbMultiRegionClusterUpdateStrategy>? updateStrategy,
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
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `engine` attribute.
  TfRef<String> get engineRef => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersionRef =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `multi_region_cluster_name_suffix` attribute.
  TfRef<String> get multiRegionClusterNameSuffixRef =>
      TfRef.attribute<String>(this, 'multi_region_cluster_name_suffix');

  /// Reference to `multi_region_parameter_group_name` attribute.
  TfRef<String> get multiRegionParameterGroupNameRef =>
      TfRef.attribute<String>(this, 'multi_region_parameter_group_name');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeTypeRef => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `num_shards` attribute.
  TfRef<num> get numShardsRef => TfRef.attribute<num>(this, 'num_shards');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tls_enabled` attribute.
  TfRef<bool> get tlsEnabledRef => TfRef.attribute<bool>(this, 'tls_enabled');

  /// Reference to `update_strategy` attribute.
  TfRef<String> get updateStrategyRef =>
      TfRef.attribute<String>(this, 'update_strategy');
}
