// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_orderable_cluster`.
const Set<String> _awsRedshiftOrderableClusterSensitive = <String>{};

/// Factory wrapper for `aws_redshift_orderable_cluster`.
final class DataAwsRedshiftOrderableCluster extends Data {
  static const String tfType = 'aws_redshift_orderable_cluster';

  DataAwsRedshiftOrderableCluster({
    required super.localName,
    TfArg<String>? clusterType,
    TfArg<String>? clusterVersion,
    TfArg<String>? nodeType,
    TfArg<List<String>>? preferredNodeTypes,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (clusterType != null) 'cluster_type': clusterType,
           if (clusterVersion != null) 'cluster_version': clusterVersion,
           if (nodeType != null) 'node_type': nodeType,
           if (preferredNodeTypes != null)
             'preferred_node_types': preferredNodeTypes,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftOrderableClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');
}
