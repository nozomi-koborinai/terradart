// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_cluster`.
const Set<String> _awsEksClusterSensitive = <String>{};

/// Factory wrapper for `aws_eks_cluster`.
final class DataAwsEksCluster extends Data {
  static const String tfType = 'aws_eks_cluster';

  DataAwsEksCluster({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_config` attribute.
  TfRef<List<Map<String, Object?>>> get accessConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_config');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_authority` attribute.
  TfRef<List<Map<String, Object?>>> get certificateAuthority =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'certificate_authority',
      );

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `compute_config` attribute.
  TfRef<List<Map<String, Object?>>> get computeConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'compute_config');

  /// Reference to `control_plane_scaling_config` attribute.
  TfRef<List<Map<String, Object?>>> get controlPlaneScalingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'control_plane_scaling_config',
      );

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `enabled_cluster_log_types` attribute.
  TfRef<List<String>> get enabledClusterLogTypes =>
      TfRef.attribute<List<String>>(this, 'enabled_cluster_log_types');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `kube_api_server_config` attribute.
  TfRef<List<Map<String, Object?>>> get kubeApiServerConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'kube_api_server_config',
      );

  /// Reference to `kube_controller_manager_config` attribute.
  TfRef<List<Map<String, Object?>>> get kubeControllerManagerConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'kube_controller_manager_config',
      );

  /// Reference to `kube_scheduler_config` attribute.
  TfRef<List<Map<String, Object?>>> get kubeSchedulerConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'kube_scheduler_config',
      );

  /// Reference to `kubernetes_network_config` attribute.
  TfRef<List<Map<String, Object?>>> get kubernetesNetworkConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'kubernetes_network_config',
      );

  /// Reference to `outpost_config` attribute.
  TfRef<List<Map<String, Object?>>> get outpostConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'outpost_config');

  /// Reference to `platform_version` attribute.
  TfRef<String> get platformVersion =>
      TfRef.attribute<String>(this, 'platform_version');

  /// Reference to `remote_network_config` attribute.
  TfRef<List<Map<String, Object?>>> get remoteNetworkConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'remote_network_config',
      );

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `storage_config` attribute.
  TfRef<List<Map<String, Object?>>> get storageConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'storage_config');

  /// Reference to `upgrade_policy` attribute.
  TfRef<List<Map<String, Object?>>> get upgradePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'upgrade_policy');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `vpc_config` attribute.
  TfRef<List<Map<String, Object?>>> get vpcConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_config');

  /// Reference to `zonal_shift_config` attribute.
  TfRef<List<Map<String, Object?>>> get zonalShiftConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'zonal_shift_config');
}
