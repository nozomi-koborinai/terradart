// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_node_group`.
const Set<String> _awsEksNodeGroupSensitive = <String>{};

/// Factory wrapper for `aws_eks_node_group`.
final class DataAwsEksNodeGroup extends Data {
  static const String tfType = 'aws_eks_node_group';

  DataAwsEksNodeGroup({
    required super.localName,
    required TfArg<String> clusterName,
    required TfArg<String> nodeGroupName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'node_group_name': nodeGroupName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksNodeGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ami_type` attribute.
  TfRef<String> get amiType => TfRef.attribute<String>(this, 'ami_type');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `capacity_type` attribute.
  TfRef<String> get capacityType =>
      TfRef.attribute<String>(this, 'capacity_type');

  /// Reference to `disk_size` attribute.
  TfRef<num> get diskSize => TfRef.attribute<num>(this, 'disk_size');

  /// Reference to `instance_types` attribute.
  TfRef<List<String>> get instanceTypes =>
      TfRef.attribute<List<String>>(this, 'instance_types');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `launch_template` attribute.
  TfRef<List<Map<String, Object?>>> get launchTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'launch_template');

  /// Reference to `node_role_arn` attribute.
  TfRef<String> get nodeRoleArn =>
      TfRef.attribute<String>(this, 'node_role_arn');

  /// Reference to `release_version` attribute.
  TfRef<String> get releaseVersion =>
      TfRef.attribute<String>(this, 'release_version');

  /// Reference to `remote_access` attribute.
  TfRef<List<Map<String, Object?>>> get remoteAccess =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'remote_access');

  /// Reference to `resources` attribute.
  TfRef<List<Map<String, Object?>>> get resources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resources');

  /// Reference to `scaling_config` attribute.
  TfRef<List<Map<String, Object?>>> get scalingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scaling_config');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `taints` attribute.
  TfRef<List<Map<String, Object?>>> get taints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'taints');

  /// Reference to `update_config` attribute.
  TfRef<List<Map<String, Object?>>> get updateConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'update_config');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `warm_pool_config` attribute.
  TfRef<List<Map<String, Object?>>> get warmPoolConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'warm_pool_config');
}
