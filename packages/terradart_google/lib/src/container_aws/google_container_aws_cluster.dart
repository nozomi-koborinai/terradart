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

  final List<ContainerAwsClusterAdminGroups>? adminGroups;

  final List<ContainerAwsClusterAdminUsers> adminUsers;

  @internal
  Map<String, Object?> encode() => {
    if (adminGroups != null)
      'admin_groups': [for (final e in adminGroups!) e.encode()],
    'admin_users': [for (final e in adminUsers) e.encode()],
  };
}

/// Typed helper for the `authorization.admin_groups` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterAdminGroups {
  const ContainerAwsClusterAdminGroups({required this.group});

  final TfArg<String> group;

  @internal
  Map<String, Object?> encode() => {'group': group.toTfJson()};
}

/// Typed helper for the `authorization.admin_users` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterAdminUsers {
  const ContainerAwsClusterAdminUsers({required this.username});

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {'username': username.toTfJson()};
}

/// Typed helper for the `binary_authorization` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterBinaryAuthorization {
  const ContainerAwsClusterBinaryAuthorization({this.evaluationMode});

  final ContainerAwsClusterEvaluationMode? evaluationMode;

  @internal
  Map<String, Object?> encode() => {
    'evaluation_mode': ?evaluationMode?.toTfJson(),
  };
}

/// `evaluation_mode` — derived from the provider schema description.
extension type const ContainerAwsClusterEvaluationMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAwsClusterEvaluationMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAwsClusterEvaluationMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAwsClusterEvaluationMode.arg(TfArg<String> arg) : this._(arg);

  static const disabled = ContainerAwsClusterEvaluationMode._(
    TfArgLiteral('DISABLED'),
  );
  static const projectSingletonPolicyEnforce =
      ContainerAwsClusterEvaluationMode._(
        TfArgLiteral('PROJECT_SINGLETON_POLICY_ENFORCE'),
      );

  static const List<ContainerAwsClusterEvaluationMode> values = [
    disabled,
    projectSingletonPolicyEnforce,
  ];
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

  final TfArg<List<String>>? securityGroupIds;

  final TfArg<List<String>> subnetIds;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String> version;

  final ContainerAwsClusterAwsServicesAuthentication awsServicesAuthentication;

  final ContainerAwsClusterConfigEncryption configEncryption;

  final ContainerAwsClusterDatabaseEncryption databaseEncryption;

  final ContainerAwsClusterMainVolume? mainVolume;

  final ContainerAwsClusterProxyConfig? proxyConfig;

  final ContainerAwsClusterRootVolume? rootVolume;

  final ContainerAwsClusterSshConfig? sshConfig;

  @internal
  Map<String, Object?> encode() => {
    'iam_instance_profile': iamInstanceProfile.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'security_group_ids': ?securityGroupIds?.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'version': version.toTfJson(),
    'aws_services_authentication': awsServicesAuthentication.encode(),
    'config_encryption': configEncryption.encode(),
    'database_encryption': databaseEncryption.encode(),
    'main_volume': ?mainVolume?.encode(),
    'proxy_config': ?proxyConfig?.encode(),
    'root_volume': ?rootVolume?.encode(),
    'ssh_config': ?sshConfig?.encode(),
  };
}

/// Typed helper for the `control_plane.aws_services_authentication` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterAwsServicesAuthentication {
  const ContainerAwsClusterAwsServicesAuthentication({
    required this.roleArn,
    this.roleSessionName,
  });

  final TfArg<String> roleArn;

  final TfArg<String>? roleSessionName;

  @internal
  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    'role_session_name': ?roleSessionName?.toTfJson(),
  };
}

/// Typed helper for the `control_plane.config_encryption` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterConfigEncryption {
  const ContainerAwsClusterConfigEncryption({required this.kmsKeyArn});

  final TfArg<String> kmsKeyArn;

  @internal
  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Typed helper for the `control_plane.database_encryption` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterDatabaseEncryption {
  const ContainerAwsClusterDatabaseEncryption({required this.kmsKeyArn});

  final TfArg<String> kmsKeyArn;

  @internal
  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Typed helper for the `control_plane.main_volume` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterMainVolume {
  const ContainerAwsClusterMainVolume({
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

  final ContainerAwsClusterVolumeType? volumeType;

  @internal
  Map<String, Object?> encode() => {
    'iops': ?iops?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.toTfJson(),
    'size_gib': ?sizeGib?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
extension type const ContainerAwsClusterVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAwsClusterVolumeType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAwsClusterVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAwsClusterVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const volumeTypeUnspecified = ContainerAwsClusterVolumeType._(
    TfArgLiteral('VOLUME_TYPE_UNSPECIFIED'),
  );
  static const gp2 = ContainerAwsClusterVolumeType._(TfArgLiteral('GP2'));
  static const gp3 = ContainerAwsClusterVolumeType._(TfArgLiteral('GP3'));

  static const List<ContainerAwsClusterVolumeType> values = [
    volumeTypeUnspecified,
    gp2,
    gp3,
  ];
}

/// Typed helper for the `control_plane.proxy_config` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterProxyConfig {
  const ContainerAwsClusterProxyConfig({
    required this.secretArn,
    required this.secretVersion,
  });

  final TfArg<String> secretArn;

  final TfArg<String> secretVersion;

  @internal
  Map<String, Object?> encode() => {
    'secret_arn': secretArn.toTfJson(),
    'secret_version': secretVersion.toTfJson(),
  };
}

/// Typed helper for the `control_plane.root_volume` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterRootVolume {
  const ContainerAwsClusterRootVolume({
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

  final ContainerAwsClusterVolumeType? volumeType;

  @internal
  Map<String, Object?> encode() => {
    'iops': ?iops?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.toTfJson(),
    'size_gib': ?sizeGib?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// Typed helper for the `control_plane.ssh_config` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterSshConfig {
  const ContainerAwsClusterSshConfig({required this.ec2KeyPair});

  final TfArg<String> ec2KeyPair;

  @internal
  Map<String, Object?> encode() => {'ec2_key_pair': ec2KeyPair.toTfJson()};
}

/// Typed helper for the `fleet` block of
/// `google_container_aws_cluster` (derived from provider schema).
@immutable
final class ContainerAwsClusterFleet {
  const ContainerAwsClusterFleet({this.project});

  final TfArg<String>? project;

  @internal
  Map<String, Object?> encode() => {'project': ?project?.toTfJson()};
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

  final TfArg<List<String>> podAddressCidrBlocks;

  final TfArg<List<String>> serviceAddressCidrBlocks;

  final TfArg<String> vpcId;

  @internal
  Map<String, Object?> encode() => {
    'per_node_pool_sg_rules_disabled': ?perNodePoolSgRulesDisabled?.toTfJson(),
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

  GoogleContainerAwsCluster(
    super.localName, {
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
    super.provider,
    super.timeouts,
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
           'description': ?description,
           'annotations': ?annotations,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAwsClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerAwsCluster>`.
  RefTo<GoogleContainerAwsCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `aws_region` attribute.
  TfRef<String> get awsRegion => TfRef.attribute<String>(this, 'aws_region');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
