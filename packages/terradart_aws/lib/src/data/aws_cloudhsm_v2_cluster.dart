// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudhsm_v2_cluster`.
const Set<String> _awsCloudhsmV2ClusterSensitive = <String>{};

/// Factory wrapper for `aws_cloudhsm_v2_cluster`.
final class DataAwsCloudhsmV2Cluster extends Data {
  static const String tfType = 'aws_cloudhsm_v2_cluster';

  DataAwsCloudhsmV2Cluster({
    required super.localName,
    required TfArg<String> clusterId,
    TfArg<String>? clusterState,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           if (clusterState != null) 'cluster_state': clusterState,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudhsmV2ClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_certificates` attribute.
  TfRef<List<Map<String, Object?>>> get clusterCertificates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_certificates');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
