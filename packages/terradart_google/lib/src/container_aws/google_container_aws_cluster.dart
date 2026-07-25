// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_aws_cluster`.
const Set<String> _googleContainerAwsClusterSensitive = <String>{};

/// Typed helper for the `authorization` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterAuthorization {
  const ContainerAwsClusterAuthorization({
    this.adminGroups,
    required this.adminUsers,
  });

  final List<ContainerAwsClusterAuthorizationAdminGroups>? adminGroups;

  final List<ContainerAwsClusterAuthorizationAdminUsers> adminUsers;

  Map<String, Object?> encode() => {
    if (adminGroups != null)
      'admin_groups': [for (final e in adminGroups!) e.encode()],
    'admin_users': [for (final e in adminUsers) e.encode()],
  };
}

/// Typed helper for the `authorization.admin_groups` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterAuthorizationAdminGroups {
  const ContainerAwsClusterAuthorizationAdminGroups({required this.group});

  final TfArg<String> group;

  Map<String, Object?> encode() => {'group': group.toTfJson()};
}

/// Typed helper for the `authorization.admin_users` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterAuthorizationAdminUsers {
  const ContainerAwsClusterAuthorizationAdminUsers({required this.username});

  final TfArg<String> username;

  Map<String, Object?> encode() => {'username': username.toTfJson()};
}

/// Typed helper for the `binary_authorization` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterBinaryAuthorization {
  const ContainerAwsClusterBinaryAuthorization({this.evaluationMode});

  final TfArg<ContainerAwsClusterBinaryAuthorizationEvaluationMode>?
  evaluationMode;

  Map<String, Object?> encode() => {
    if (evaluationMode != null) 'evaluation_mode': evaluationMode!.toTfJson(),
  };
}

/// `evaluation_mode` — derived from the provider schema description.
enum ContainerAwsClusterBinaryAuthorizationEvaluationMode
    implements TerraformEnum {
  disabled('DISABLED'),
  projectSingletonPolicyEnforce('PROJECT_SINGLETON_POLICY_ENFORCE');

  const ContainerAwsClusterBinaryAuthorizationEvaluationMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `control_plane` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterControlPlane {
  const ContainerAwsClusterControlPlane({
    required this.iamInstanceProfile,
    this.instanceType,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.version,
    required this.awsServicesAuthentication,
    required this.configEncryption,
    required this.databaseEncryption,
    this.mainVolume,
    this.proxyConfig,
    this.rootVolume,
    this.sshConfig,
  });

  final TfArg<String> iamInstanceProfile;

  final TfArg<String>? instanceType;

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String> version;

  final ContainerAwsClusterControlPlaneAwsServicesAuthentication
  awsServicesAuthentication;

  final ContainerAwsClusterControlPlaneConfigEncryption configEncryption;

  final ContainerAwsClusterControlPlaneDatabaseEncryption databaseEncryption;

  final ContainerAwsClusterControlPlaneMainVolume? mainVolume;

  final ContainerAwsClusterControlPlaneProxyConfig? proxyConfig;

  final ContainerAwsClusterControlPlaneRootVolume? rootVolume;

  final ContainerAwsClusterControlPlaneSshConfig? sshConfig;

  Map<String, Object?> encode() => {
    'iam_instance_profile': iamInstanceProfile.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    'version': version.toTfJson(),
    'aws_services_authentication': awsServicesAuthentication.encode(),
    'config_encryption': configEncryption.encode(),
    'database_encryption': databaseEncryption.encode(),
    if (mainVolume != null) 'main_volume': mainVolume!.encode(),
    if (proxyConfig != null) 'proxy_config': proxyConfig!.encode(),
    if (rootVolume != null) 'root_volume': rootVolume!.encode(),
    if (sshConfig != null) 'ssh_config': sshConfig!.encode(),
  };
}

/// Typed helper for the `control_plane.aws_services_authentication` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterControlPlaneAwsServicesAuthentication {
  const ContainerAwsClusterControlPlaneAwsServicesAuthentication({
    required this.roleArn,
    this.roleSessionName,
  });

  final TfArg<String> roleArn;

  final TfArg<String>? roleSessionName;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    if (roleSessionName != null)
      'role_session_name': roleSessionName!.toTfJson(),
  };
}

/// Typed helper for the `control_plane.config_encryption` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterControlPlaneConfigEncryption {
  const ContainerAwsClusterControlPlaneConfigEncryption({
    required this.kmsKeyArn,
  });

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Typed helper for the `control_plane.database_encryption` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterControlPlaneDatabaseEncryption {
  const ContainerAwsClusterControlPlaneDatabaseEncryption({
    required this.kmsKeyArn,
  });

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Typed helper for the `control_plane.main_volume` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterControlPlaneMainVolume {
  const ContainerAwsClusterControlPlaneMainVolume({
    this.iops,
    this.kmsKeyArn,
    this.sizeGib,
    this.throughput,
    this.volumeType,
  });

  final TfArg<num>? iops;

  final TfArg<String>? kmsKeyArn;

  final TfArg<num>? sizeGib;

  final TfArg<num>? throughput;

  final TfArg<ContainerAwsClusterControlPlaneMainVolumeVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (sizeGib != null) 'size_gib': sizeGib!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum ContainerAwsClusterControlPlaneMainVolumeVolumeType
    implements TerraformEnum {
  volumeTypeUnspecified('VOLUME_TYPE_UNSPECIFIED'),
  gp2('GP2'),
  gp3('GP3');

  const ContainerAwsClusterControlPlaneMainVolumeVolumeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `control_plane.proxy_config` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterControlPlaneProxyConfig {
  const ContainerAwsClusterControlPlaneProxyConfig({
    required this.secretArn,
    required this.secretVersion,
  });

  final TfArg<String> secretArn;

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {
    'secret_arn': secretArn.toTfJson(),
    'secret_version': secretVersion.toTfJson(),
  };
}

/// Typed helper for the `control_plane.root_volume` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterControlPlaneRootVolume {
  const ContainerAwsClusterControlPlaneRootVolume({
    this.iops,
    this.kmsKeyArn,
    this.sizeGib,
    this.throughput,
    this.volumeType,
  });

  final TfArg<num>? iops;

  final TfArg<String>? kmsKeyArn;

  final TfArg<num>? sizeGib;

  final TfArg<num>? throughput;

  final TfArg<ContainerAwsClusterControlPlaneRootVolumeVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (sizeGib != null) 'size_gib': sizeGib!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum ContainerAwsClusterControlPlaneRootVolumeVolumeType
    implements TerraformEnum {
  volumeTypeUnspecified('VOLUME_TYPE_UNSPECIFIED'),
  gp2('GP2'),
  gp3('GP3');

  const ContainerAwsClusterControlPlaneRootVolumeVolumeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `control_plane.ssh_config` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterControlPlaneSshConfig {
  const ContainerAwsClusterControlPlaneSshConfig({required this.ec2KeyPair});

  final TfArg<String> ec2KeyPair;

  Map<String, Object?> encode() => {'ec2_key_pair': ec2KeyPair.toTfJson()};
}

/// Typed helper for the `fleet` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterFleet {
  const ContainerAwsClusterFleet({this.project});

  final TfArg<String>? project;

  Map<String, Object?> encode() => {
    if (project != null) 'project': project!.toTfJson(),
  };
}

/// Typed helper for the `networking` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterNetworking {
  const ContainerAwsClusterNetworking({
    this.perNodePoolSgRulesDisabled,
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    required this.vpcId,
  });

  final TfArg<bool>? perNodePoolSgRulesDisabled;

  final TfArg<List<Object?>> podAddressCidrBlocks;

  final TfArg<List<Object?>> serviceAddressCidrBlocks;

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {
    if (perNodePoolSgRulesDisabled != null)
      'per_node_pool_sg_rules_disabled': perNodePoolSgRulesDisabled!.toTfJson(),
    'pod_address_cidr_blocks': podAddressCidrBlocks.toTfJson(),
    'service_address_cidr_blocks': serviceAddressCidrBlocks.toTfJson(),
    'vpc_id': vpcId.toTfJson(),
  };
}

/// Factory wrapper for `google_container_aws_cluster`.
///
/// GKE on AWS **cluster** — multi-cloud control plane on Amazon Web Services,
/// registered to a Fleet.
///
/// **Cost / apply:** GKE Enterprise Multicloud (AWS) SKU `24A0-2EF1-8ACB`
/// **$0.00822/h** (service `9186-F79E-3871`) plus AWS EC2 / ELB for the
/// control plane and node pools. Needs a real AWS account and VPC — debt-only
/// on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `gkemulticloud.googleapis.com` via [GoogleProjectService] before
/// apply. [authorization], [controlPlane], [fleet], and [networking] are
/// required.
final class GoogleContainerAwsCluster extends Resource {
  static const String tfType = 'google_container_aws_cluster';

  GoogleContainerAwsCluster({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> awsRegion,
    required ContainerAwsClusterAuthorization authorization,
    required ContainerAwsClusterControlPlane controlPlane,
    required ContainerAwsClusterFleet fleet,
    required ContainerAwsClusterNetworking networking,
    ContainerAwsClusterBinaryAuthorization? binaryAuthorization,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'aws_region': awsRegion,
           'authorization': TfArg.literal(authorization.encode()),
           'control_plane': TfArg.literal(controlPlane.encode()),
           'fleet': TfArg.literal(fleet.encode()),
           'networking': TfArg.literal(networking.encode()),
           if (binaryAuthorization != null)
             'binary_authorization': TfArg.literal(
               binaryAuthorization.encode(),
             ),
           if (description != null) 'description': description,
           if (annotations != null) 'annotations': annotations,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAwsClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `workload_identity_config` attribute.
  TfRef<List<Map<String, Object?>>> get workloadIdentityConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'workload_identity_config',
      );

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
