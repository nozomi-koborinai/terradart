// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_clusters`.
const Set<String> _awsRdsClustersSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_rds_clusters` (derived from provider schema).
@immutable
final class DataRdsClustersFilter {
  const DataRdsClustersFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_rds_clusters`.
final class DataAwsRdsClusters extends Data {
  static const String tfType = 'aws_rds_clusters';

  DataAwsRdsClusters({
    required super.localName,
    TfArg<String>? region,
    List<DataRdsClustersFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClustersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_arns` attribute.
  TfRef<List<String>> get clusterArns =>
      TfRef.attribute<List<String>>(this, 'cluster_arns');

  /// Reference to `cluster_identifiers` attribute.
  TfRef<List<String>> get clusterIdentifiers =>
      TfRef.attribute<List<String>>(this, 'cluster_identifiers');
}
