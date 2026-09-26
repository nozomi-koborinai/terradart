// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudhsm_v2_cluster`.
const Set<String> _awsCloudhsmV2ClusterSensitive = <String>{};

/// Factory wrapper for `aws_cloudhsm_v2_cluster`.
final class AwsCloudhsmV2Cluster extends Resource {
  static const String tfType = 'aws_cloudhsm_v2_cluster';

  AwsCloudhsmV2Cluster({
    required super.localName,
    required TfArg<String> hsmType,
    TfArg<String>? mode,
    TfArg<String>? region,
    TfArg<String>? sourceBackupIdentifier,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hsm_type': hsmType,
           if (mode != null) 'mode': mode,
           if (region != null) 'region': region,
           if (sourceBackupIdentifier != null)
             'source_backup_identifier': sourceBackupIdentifier,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudhsmV2ClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_certificates` attribute.
  TfRef<List<Map<String, Object?>>> get clusterCertificates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_certificates');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `cluster_state` attribute.
  TfRef<String> get clusterState =>
      TfRef.attribute<String>(this, 'cluster_state');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
