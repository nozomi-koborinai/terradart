// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_multi_region_cluster`.
const Set<String> _awsMemorydbMultiRegionClusterSensitive = <String>{};

/// Factory wrapper for `aws_memorydb_multi_region_cluster`.
final class AwsMemorydbMultiRegionCluster extends Resource {
  static const String tfType = 'aws_memorydb_multi_region_cluster';

  AwsMemorydbMultiRegionCluster({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? engine,
    TfArg<String>? engineVersion,
    required TfArg<String> multiRegionClusterNameSuffix,
    TfArg<String>? multiRegionParameterGroupName,
    required TfArg<String> nodeType,
    TfArg<num>? numShards,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? tlsEnabled,
    TfArg<String>? updateStrategy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           'multi_region_cluster_name_suffix': multiRegionClusterNameSuffix,
           if (multiRegionParameterGroupName != null)
             'multi_region_parameter_group_name': multiRegionParameterGroupName,
           'node_type': nodeType,
           if (numShards != null) 'num_shards': numShards,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (tlsEnabled != null) 'tls_enabled': tlsEnabled,
           if (updateStrategy != null) 'update_strategy': updateStrategy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbMultiRegionClusterSensitive;

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
}
