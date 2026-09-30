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
           'cluster_type': ?clusterType,
           'cluster_version': ?clusterVersion,
           'node_type': ?nodeType,
           'preferred_node_types': ?preferredNodeTypes,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftOrderableClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `cluster_type` attribute.
  TfRef<String> get clusterTypeRef =>
      TfRef.attribute<String>(this, 'cluster_type');

  /// Reference to `cluster_version` attribute.
  TfRef<String> get clusterVersionRef =>
      TfRef.attribute<String>(this, 'cluster_version');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeTypeRef => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `preferred_node_types` attribute.
  TfRef<List<String>> get preferredNodeTypesRef =>
      TfRef.attribute<List<String>>(this, 'preferred_node_types');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
