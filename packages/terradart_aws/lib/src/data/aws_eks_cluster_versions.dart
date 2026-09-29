// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_cluster_versions`.
const Set<String> _awsEksClusterVersionsSensitive = <String>{};

/// Factory wrapper for `aws_eks_cluster_versions`.
final class DataAwsEksClusterVersions extends Data {
  static const String tfType = 'aws_eks_cluster_versions';

  DataAwsEksClusterVersions({
    required super.localName,
    TfArg<String>? clusterType,
    TfArg<List<String>>? clusterVersionsOnly,
    TfArg<bool>? defaultOnly,
    TfArg<bool>? includeAll,
    TfArg<String>? region,
    TfArg<String>? versionStatus,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_type': ?clusterType,
           'cluster_versions_only': ?clusterVersionsOnly,
           'default_only': ?defaultOnly,
           'include_all': ?includeAll,
           'region': ?region,
           'version_status': ?versionStatus,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksClusterVersionsSensitive;

  /// Reference to `cluster_versions` attribute.
  TfRef<List<Map<String, Object?>>> get clusterVersions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_versions');
}
