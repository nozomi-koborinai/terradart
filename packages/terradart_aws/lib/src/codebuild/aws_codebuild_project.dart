// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_codebuild_project`.
const Set<String> _awsCodebuildProjectSensitive = <String>{};

/// Codebuild Project enum for `project_visibility`.
extension type const CodebuildProjectVisibility._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectVisibility.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectVisibility.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectVisibility.arg(TfArg<String> arg) : this._(arg);

  static const publicRead = CodebuildProjectVisibility._(
    TfArgLiteral('PUBLIC_READ'),
  );
  static const private = CodebuildProjectVisibility._(TfArgLiteral('PRIVATE'));

  static const List<CodebuildProjectVisibility> values = [publicRead, private];
}

/// Typed helper for the `artifacts` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectArtifacts {
  const CodebuildProjectArtifacts({
    this.artifactIdentifier,
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.name,
    this.namespaceType,
    this.overrideArtifactName,
    this.packaging,
    this.path,
    required this.type,
  });

  final TfArg<String>? artifactIdentifier;

  final CodebuildProjectBucketOwnerAccess? bucketOwnerAccess;

  final TfArg<bool>? encryptionDisabled;

  final TfArg<String>? location;

  final TfArg<String>? name;

  final CodebuildProjectNamespaceType? namespaceType;

  final TfArg<bool>? overrideArtifactName;

  final CodebuildProjectPackaging? packaging;

  final TfArg<String>? path;

  final CodebuildProjectArtifactsType type;

  @internal
  Map<String, Object?> encode() => {
    'artifact_identifier': ?artifactIdentifier?.toTfJson(),
    'bucket_owner_access': ?bucketOwnerAccess?.toTfJson(),
    'encryption_disabled': ?encryptionDisabled?.toTfJson(),
    'location': ?location?.toTfJson(),
    'name': ?name?.toTfJson(),
    'namespace_type': ?namespaceType?.toTfJson(),
    'override_artifact_name': ?overrideArtifactName?.toTfJson(),
    'packaging': ?packaging?.toTfJson(),
    'path': ?path?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `bucket_owner_access` — derived from the provider schema description.
extension type const CodebuildProjectBucketOwnerAccess._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectBucketOwnerAccess.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectBucketOwnerAccess.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectBucketOwnerAccess.arg(TfArg<String> arg) : this._(arg);

  static const none = CodebuildProjectBucketOwnerAccess._(TfArgLiteral('NONE'));
  static const readOnly = CodebuildProjectBucketOwnerAccess._(
    TfArgLiteral('READ_ONLY'),
  );
  static const full = CodebuildProjectBucketOwnerAccess._(TfArgLiteral('FULL'));

  static const List<CodebuildProjectBucketOwnerAccess> values = [
    none,
    readOnly,
    full,
  ];
}

/// `namespace_type` — derived from the provider schema description.
extension type const CodebuildProjectNamespaceType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectNamespaceType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectNamespaceType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectNamespaceType.arg(TfArg<String> arg) : this._(arg);

  static const none = CodebuildProjectNamespaceType._(TfArgLiteral('NONE'));
  static const buildId = CodebuildProjectNamespaceType._(
    TfArgLiteral('BUILD_ID'),
  );

  static const List<CodebuildProjectNamespaceType> values = [none, buildId];
}

/// `packaging` — derived from the provider schema description.
extension type const CodebuildProjectPackaging._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectPackaging.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectPackaging.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectPackaging.arg(TfArg<String> arg) : this._(arg);

  static const none = CodebuildProjectPackaging._(TfArgLiteral('NONE'));
  static const zip = CodebuildProjectPackaging._(TfArgLiteral('ZIP'));

  static const List<CodebuildProjectPackaging> values = [none, zip];
}

/// `type` — derived from the provider schema description.
extension type const CodebuildProjectArtifactsType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectArtifactsType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectArtifactsType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectArtifactsType.arg(TfArg<String> arg) : this._(arg);

  static const codepipeline = CodebuildProjectArtifactsType._(
    TfArgLiteral('CODEPIPELINE'),
  );
  static const s3 = CodebuildProjectArtifactsType._(TfArgLiteral('S3'));
  static const noArtifacts = CodebuildProjectArtifactsType._(
    TfArgLiteral('NO_ARTIFACTS'),
  );

  static const List<CodebuildProjectArtifactsType> values = [
    codepipeline,
    s3,
    noArtifacts,
  ];
}

/// Typed helper for the `build_batch_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectBuildBatchConfig {
  const CodebuildProjectBuildBatchConfig({
    this.combineArtifacts,
    required this.serviceRole,
    this.timeoutInMins,
    this.restrictions,
  });

  final TfArg<bool>? combineArtifacts;

  final RefTo<AwsIamRole> serviceRole;

  final TfArg<num>? timeoutInMins;

  final CodebuildProjectRestrictions? restrictions;

  @internal
  Map<String, Object?> encode() => {
    'combine_artifacts': ?combineArtifacts?.toTfJson(),
    'service_role': serviceRole.encodeAs('arn').toTfJson(),
    'timeout_in_mins': ?timeoutInMins?.toTfJson(),
    'restrictions': ?restrictions?.encode(),
  };
}

/// Typed helper for the `build_batch_config.restrictions` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectRestrictions {
  const CodebuildProjectRestrictions({
    this.computeTypesAllowed,
    this.maximumBuildsAllowed,
  });

  final List<CodebuildProjectComputeTypesAllowed>? computeTypesAllowed;

  final TfArg<num>? maximumBuildsAllowed;

  @internal
  Map<String, Object?> encode() => {
    if (computeTypesAllowed != null)
      'compute_types_allowed': [
        for (final e in computeTypesAllowed!) e.toTfJson(),
      ],
    'maximum_builds_allowed': ?maximumBuildsAllowed?.toTfJson(),
  };
}

/// `compute_types_allowed` — derived from the provider schema description.
extension type const CodebuildProjectComputeTypesAllowed._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectComputeTypesAllowed.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectComputeTypesAllowed.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectComputeTypesAllowed.arg(TfArg<String> arg)
    : this._(arg);

  static const buildGeneral1Small = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_GENERAL1_SMALL'),
  );
  static const buildGeneral1Medium = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_GENERAL1_MEDIUM'),
  );
  static const buildGeneral1Large = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_GENERAL1_LARGE'),
  );
  static const buildGeneral1Xlarge = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_GENERAL1_XLARGE'),
  );
  static const buildGeneral12xlarge = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_GENERAL1_2XLARGE'),
  );
  static const buildLambda1gb = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_LAMBDA_1GB'),
  );
  static const buildLambda2gb = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_LAMBDA_2GB'),
  );
  static const buildLambda4gb = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_LAMBDA_4GB'),
  );
  static const buildLambda8gb = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_LAMBDA_8GB'),
  );
  static const buildLambda10gb = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('BUILD_LAMBDA_10GB'),
  );
  static const attributeBasedCompute = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('ATTRIBUTE_BASED_COMPUTE'),
  );
  static const customInstanceType = CodebuildProjectComputeTypesAllowed._(
    TfArgLiteral('CUSTOM_INSTANCE_TYPE'),
  );

  static const List<CodebuildProjectComputeTypesAllowed> values = [
    buildGeneral1Small,
    buildGeneral1Medium,
    buildGeneral1Large,
    buildGeneral1Xlarge,
    buildGeneral12xlarge,
    buildLambda1gb,
    buildLambda2gb,
    buildLambda4gb,
    buildLambda8gb,
    buildLambda10gb,
    attributeBasedCompute,
    customInstanceType,
  ];
}

/// Typed helper for the `cache` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectCache {
  const CodebuildProjectCache({
    this.cacheNamespace,
    this.location,
    this.modes,
    this.type,
  });

  final TfArg<String>? cacheNamespace;

  final TfArg<String>? location;

  final List<CodebuildProjectModes>? modes;

  final CodebuildProjectCacheType? type;

  @internal
  Map<String, Object?> encode() => {
    'cache_namespace': ?cacheNamespace?.toTfJson(),
    'location': ?location?.toTfJson(),
    if (modes != null) 'modes': [for (final e in modes!) e.toTfJson()],
    'type': ?type?.toTfJson(),
  };
}

/// `modes` — derived from the provider schema description.
extension type const CodebuildProjectModes._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectModes.variable(String name) : this._(TfArg.variable(name));
  CodebuildProjectModes.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectModes.arg(TfArg<String> arg) : this._(arg);

  static const localDockerLayerCache = CodebuildProjectModes._(
    TfArgLiteral('LOCAL_DOCKER_LAYER_CACHE'),
  );
  static const localSourceCache = CodebuildProjectModes._(
    TfArgLiteral('LOCAL_SOURCE_CACHE'),
  );
  static const localCustomCache = CodebuildProjectModes._(
    TfArgLiteral('LOCAL_CUSTOM_CACHE'),
  );

  static const List<CodebuildProjectModes> values = [
    localDockerLayerCache,
    localSourceCache,
    localCustomCache,
  ];
}

/// `type` — derived from the provider schema description.
extension type const CodebuildProjectCacheType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectCacheType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectCacheType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectCacheType.arg(TfArg<String> arg) : this._(arg);

  static const noCache = CodebuildProjectCacheType._(TfArgLiteral('NO_CACHE'));
  static const s3 = CodebuildProjectCacheType._(TfArgLiteral('S3'));
  static const local = CodebuildProjectCacheType._(TfArgLiteral('LOCAL'));

  static const List<CodebuildProjectCacheType> values = [noCache, s3, local];
}

/// Typed helper for the `environment` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectEnvironment {
  const CodebuildProjectEnvironment({
    this.certificate,
    required this.computeType,
    this.hostKernel,
    required this.image,
    this.imagePullCredentialsType,
    this.privilegedMode,
    required this.type,
    this.dockerServer,
    this.environmentVariable,
    this.fleet,
    this.registryCredential,
  });

  final TfArg<String>? certificate;

  final CodebuildProjectComputeType computeType;

  final CodebuildProjectHostKernel? hostKernel;

  final TfArg<String> image;

  final CodebuildProjectImagePullCredentialsType? imagePullCredentialsType;

  final TfArg<bool>? privilegedMode;

  final CodebuildProjectEnvironmentType type;

  final CodebuildProjectDockerServer? dockerServer;

  final List<CodebuildProjectEnvironmentVariable>? environmentVariable;

  final CodebuildProjectFleet? fleet;

  final CodebuildProjectRegistryCredential? registryCredential;

  @internal
  Map<String, Object?> encode() => {
    'certificate': ?certificate?.toTfJson(),
    'compute_type': computeType.toTfJson(),
    'host_kernel': ?hostKernel?.toTfJson(),
    'image': image.toTfJson(),
    'image_pull_credentials_type': ?imagePullCredentialsType?.toTfJson(),
    'privileged_mode': ?privilegedMode?.toTfJson(),
    'type': type.toTfJson(),
    'docker_server': ?dockerServer?.encode(),
    if (environmentVariable != null)
      'environment_variable': [
        for (final e in environmentVariable!) e.encode(),
      ],
    'fleet': ?fleet?.encode(),
    'registry_credential': ?registryCredential?.encode(),
  };
}

/// `compute_type` — derived from the provider schema description.
extension type const CodebuildProjectComputeType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectComputeType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectComputeType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectComputeType.arg(TfArg<String> arg) : this._(arg);

  static const buildGeneral1Small = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_GENERAL1_SMALL'),
  );
  static const buildGeneral1Medium = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_GENERAL1_MEDIUM'),
  );
  static const buildGeneral1Large = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_GENERAL1_LARGE'),
  );
  static const buildGeneral1Xlarge = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_GENERAL1_XLARGE'),
  );
  static const buildGeneral12xlarge = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_GENERAL1_2XLARGE'),
  );
  static const buildLambda1gb = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_LAMBDA_1GB'),
  );
  static const buildLambda2gb = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_LAMBDA_2GB'),
  );
  static const buildLambda4gb = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_LAMBDA_4GB'),
  );
  static const buildLambda8gb = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_LAMBDA_8GB'),
  );
  static const buildLambda10gb = CodebuildProjectComputeType._(
    TfArgLiteral('BUILD_LAMBDA_10GB'),
  );
  static const attributeBasedCompute = CodebuildProjectComputeType._(
    TfArgLiteral('ATTRIBUTE_BASED_COMPUTE'),
  );
  static const customInstanceType = CodebuildProjectComputeType._(
    TfArgLiteral('CUSTOM_INSTANCE_TYPE'),
  );

  static const List<CodebuildProjectComputeType> values = [
    buildGeneral1Small,
    buildGeneral1Medium,
    buildGeneral1Large,
    buildGeneral1Xlarge,
    buildGeneral12xlarge,
    buildLambda1gb,
    buildLambda2gb,
    buildLambda4gb,
    buildLambda8gb,
    buildLambda10gb,
    attributeBasedCompute,
    customInstanceType,
  ];
}

/// `host_kernel` — derived from the provider schema description.
extension type const CodebuildProjectHostKernel._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectHostKernel.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectHostKernel.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectHostKernel.arg(TfArg<String> arg) : this._(arg);

  static const linuxKernel4 = CodebuildProjectHostKernel._(
    TfArgLiteral('LINUX_KERNEL_4'),
  );
  static const linuxKernel6 = CodebuildProjectHostKernel._(
    TfArgLiteral('LINUX_KERNEL_6'),
  );
  static const linuxKernelLatest = CodebuildProjectHostKernel._(
    TfArgLiteral('LINUX_KERNEL_LATEST'),
  );

  static const List<CodebuildProjectHostKernel> values = [
    linuxKernel4,
    linuxKernel6,
    linuxKernelLatest,
  ];
}

/// `image_pull_credentials_type` — derived from the provider schema description.
extension type const CodebuildProjectImagePullCredentialsType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectImagePullCredentialsType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectImagePullCredentialsType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectImagePullCredentialsType.arg(TfArg<String> arg)
    : this._(arg);

  static const codebuild = CodebuildProjectImagePullCredentialsType._(
    TfArgLiteral('CODEBUILD'),
  );
  static const serviceRole = CodebuildProjectImagePullCredentialsType._(
    TfArgLiteral('SERVICE_ROLE'),
  );

  static const List<CodebuildProjectImagePullCredentialsType> values = [
    codebuild,
    serviceRole,
  ];
}

/// `type` — derived from the provider schema description.
extension type const CodebuildProjectEnvironmentType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectEnvironmentType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectEnvironmentType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectEnvironmentType.arg(TfArg<String> arg) : this._(arg);

  static const windowsContainer = CodebuildProjectEnvironmentType._(
    TfArgLiteral('WINDOWS_CONTAINER'),
  );
  static const linuxContainer = CodebuildProjectEnvironmentType._(
    TfArgLiteral('LINUX_CONTAINER'),
  );
  static const linuxGpuContainer = CodebuildProjectEnvironmentType._(
    TfArgLiteral('LINUX_GPU_CONTAINER'),
  );
  static const armContainer = CodebuildProjectEnvironmentType._(
    TfArgLiteral('ARM_CONTAINER'),
  );
  static const windowsServer2019Container = CodebuildProjectEnvironmentType._(
    TfArgLiteral('WINDOWS_SERVER_2019_CONTAINER'),
  );
  static const windowsServer2022Container = CodebuildProjectEnvironmentType._(
    TfArgLiteral('WINDOWS_SERVER_2022_CONTAINER'),
  );
  static const linuxLambdaContainer = CodebuildProjectEnvironmentType._(
    TfArgLiteral('LINUX_LAMBDA_CONTAINER'),
  );
  static const armLambdaContainer = CodebuildProjectEnvironmentType._(
    TfArgLiteral('ARM_LAMBDA_CONTAINER'),
  );
  static const linuxEc2 = CodebuildProjectEnvironmentType._(
    TfArgLiteral('LINUX_EC2'),
  );
  static const armEc2 = CodebuildProjectEnvironmentType._(
    TfArgLiteral('ARM_EC2'),
  );
  static const windowsEc2 = CodebuildProjectEnvironmentType._(
    TfArgLiteral('WINDOWS_EC2'),
  );
  static const macArm = CodebuildProjectEnvironmentType._(
    TfArgLiteral('MAC_ARM'),
  );

  static const List<CodebuildProjectEnvironmentType> values = [
    windowsContainer,
    linuxContainer,
    linuxGpuContainer,
    armContainer,
    windowsServer2019Container,
    windowsServer2022Container,
    linuxLambdaContainer,
    armLambdaContainer,
    linuxEc2,
    armEc2,
    windowsEc2,
    macArm,
  ];
}

/// Typed helper for the `environment.docker_server` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectDockerServer {
  const CodebuildProjectDockerServer({
    required this.computeType,
    this.securityGroupIds,
  });

  final CodebuildProjectComputeType computeType;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  @internal
  Map<String, Object?> encode() => {
    'compute_type': computeType.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `environment.environment_variable` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectEnvironmentVariable {
  const CodebuildProjectEnvironmentVariable({
    required this.name,
    this.type,
    required this.value,
  });

  final TfArg<String> name;

  final CodebuildProjectEnvironmentVariableType? type;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CodebuildProjectEnvironmentVariableType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectEnvironmentVariableType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectEnvironmentVariableType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectEnvironmentVariableType.arg(TfArg<String> arg)
    : this._(arg);

  static const plaintext = CodebuildProjectEnvironmentVariableType._(
    TfArgLiteral('PLAINTEXT'),
  );
  static const parameterStore = CodebuildProjectEnvironmentVariableType._(
    TfArgLiteral('PARAMETER_STORE'),
  );
  static const secretsManager = CodebuildProjectEnvironmentVariableType._(
    TfArgLiteral('SECRETS_MANAGER'),
  );

  static const List<CodebuildProjectEnvironmentVariableType> values = [
    plaintext,
    parameterStore,
    secretsManager,
  ];
}

/// Typed helper for the `environment.fleet` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectFleet {
  const CodebuildProjectFleet({this.fleetArn});

  final TfArg<String>? fleetArn;

  @internal
  Map<String, Object?> encode() => {'fleet_arn': ?fleetArn?.toTfJson()};
}

/// Typed helper for the `environment.registry_credential` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectRegistryCredential {
  const CodebuildProjectRegistryCredential({
    required this.credential,
    required this.credentialProvider,
  });

  final TfArg<String> credential;

  final CodebuildProjectCredentialProvider credentialProvider;

  @internal
  Map<String, Object?> encode() => {
    'credential': credential.toTfJson(),
    'credential_provider': credentialProvider.toTfJson(),
  };
}

/// `credential_provider` — derived from the provider schema description.
extension type const CodebuildProjectCredentialProvider._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectCredentialProvider.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectCredentialProvider.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectCredentialProvider.arg(TfArg<String> arg) : this._(arg);

  static const secretsManager = CodebuildProjectCredentialProvider._(
    TfArgLiteral('SECRETS_MANAGER'),
  );

  static const List<CodebuildProjectCredentialProvider> values = [
    secretsManager,
  ];
}

/// Typed helper for the `file_system_locations` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectFileSystemLocations {
  const CodebuildProjectFileSystemLocations({
    this.identifier,
    this.location,
    this.mountOptions,
    this.mountPoint,
    this.type,
  });

  final TfArg<String>? identifier;

  final TfArg<String>? location;

  final TfArg<String>? mountOptions;

  final TfArg<String>? mountPoint;

  final CodebuildProjectFileSystemLocationsType? type;

  @internal
  Map<String, Object?> encode() => {
    'identifier': ?identifier?.toTfJson(),
    'location': ?location?.toTfJson(),
    'mount_options': ?mountOptions?.toTfJson(),
    'mount_point': ?mountPoint?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CodebuildProjectFileSystemLocationsType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectFileSystemLocationsType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectFileSystemLocationsType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectFileSystemLocationsType.arg(TfArg<String> arg)
    : this._(arg);

  static const efs = CodebuildProjectFileSystemLocationsType._(
    TfArgLiteral('EFS'),
  );

  static const List<CodebuildProjectFileSystemLocationsType> values = [efs];
}

/// Typed helper for the `logs_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectLogsConfig {
  const CodebuildProjectLogsConfig({this.cloudwatchLogs, this.s3Logs});

  final CodebuildProjectCloudwatchLogs? cloudwatchLogs;

  final CodebuildProjectS3Logs? s3Logs;

  @internal
  Map<String, Object?> encode() => {
    'cloudwatch_logs': ?cloudwatchLogs?.encode(),
    's3_logs': ?s3Logs?.encode(),
  };
}

/// Typed helper for the `logs_config.cloudwatch_logs` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectCloudwatchLogs {
  const CodebuildProjectCloudwatchLogs({
    this.groupName,
    this.status,
    this.streamName,
  });

  final TfArg<String>? groupName;

  final CodebuildProjectStatus? status;

  final TfArg<String>? streamName;

  @internal
  Map<String, Object?> encode() => {
    'group_name': ?groupName?.toTfJson(),
    'status': ?status?.toTfJson(),
    'stream_name': ?streamName?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
extension type const CodebuildProjectStatus._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectStatus.variable(String name) : this._(TfArg.variable(name));
  CodebuildProjectStatus.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = CodebuildProjectStatus._(TfArgLiteral('ENABLED'));
  static const disabled = CodebuildProjectStatus._(TfArgLiteral('DISABLED'));

  static const List<CodebuildProjectStatus> values = [enabled, disabled];
}

/// Typed helper for the `logs_config.s3_logs` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectS3Logs {
  const CodebuildProjectS3Logs({
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.status,
  });

  final CodebuildProjectBucketOwnerAccess? bucketOwnerAccess;

  final TfArg<bool>? encryptionDisabled;

  final TfArg<String>? location;

  final CodebuildProjectStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'bucket_owner_access': ?bucketOwnerAccess?.toTfJson(),
    'encryption_disabled': ?encryptionDisabled?.toTfJson(),
    'location': ?location?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `secondary_artifacts` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSecondaryArtifacts {
  const CodebuildProjectSecondaryArtifacts({
    required this.artifactIdentifier,
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.name,
    this.namespaceType,
    this.overrideArtifactName,
    this.packaging,
    this.path,
    required this.type,
  });

  final TfArg<String> artifactIdentifier;

  final CodebuildProjectBucketOwnerAccess? bucketOwnerAccess;

  final TfArg<bool>? encryptionDisabled;

  final TfArg<String>? location;

  final TfArg<String>? name;

  final CodebuildProjectNamespaceType? namespaceType;

  final TfArg<bool>? overrideArtifactName;

  final CodebuildProjectPackaging? packaging;

  final TfArg<String>? path;

  final CodebuildProjectArtifactsType type;

  @internal
  Map<String, Object?> encode() => {
    'artifact_identifier': artifactIdentifier.toTfJson(),
    'bucket_owner_access': ?bucketOwnerAccess?.toTfJson(),
    'encryption_disabled': ?encryptionDisabled?.toTfJson(),
    'location': ?location?.toTfJson(),
    'name': ?name?.toTfJson(),
    'namespace_type': ?namespaceType?.toTfJson(),
    'override_artifact_name': ?overrideArtifactName?.toTfJson(),
    'packaging': ?packaging?.toTfJson(),
    'path': ?path?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `secondary_source_version` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSecondarySourceVersion {
  const CodebuildProjectSecondarySourceVersion({
    required this.sourceIdentifier,
    required this.sourceVersion,
  });

  final TfArg<String> sourceIdentifier;

  final TfArg<String> sourceVersion;

  @internal
  Map<String, Object?> encode() => {
    'source_identifier': sourceIdentifier.toTfJson(),
    'source_version': sourceVersion.toTfJson(),
  };
}

/// Typed helper for the `secondary_sources` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSecondarySources {
  const CodebuildProjectSecondarySources({
    this.buildspec,
    this.gitCloneDepth,
    this.insecureSsl,
    this.location,
    this.reportBuildStatus,
    required this.sourceIdentifier,
    required this.type,
    this.auth,
    this.buildStatusConfig,
    this.gitSubmodulesConfig,
  });

  final TfArg<String>? buildspec;

  final TfArg<num>? gitCloneDepth;

  final TfArg<bool>? insecureSsl;

  final TfArg<String>? location;

  final TfArg<bool>? reportBuildStatus;

  final TfArg<String> sourceIdentifier;

  final CodebuildProjectSecondarySourcesType type;

  final CodebuildProjectAuth? auth;

  final CodebuildProjectBuildStatusConfig? buildStatusConfig;

  final CodebuildProjectGitSubmodulesConfig? gitSubmodulesConfig;

  @internal
  Map<String, Object?> encode() => {
    'buildspec': ?buildspec?.toTfJson(),
    'git_clone_depth': ?gitCloneDepth?.toTfJson(),
    'insecure_ssl': ?insecureSsl?.toTfJson(),
    'location': ?location?.toTfJson(),
    'report_build_status': ?reportBuildStatus?.toTfJson(),
    'source_identifier': sourceIdentifier.toTfJson(),
    'type': type.toTfJson(),
    'auth': ?auth?.encode(),
    'build_status_config': ?buildStatusConfig?.encode(),
    'git_submodules_config': ?gitSubmodulesConfig?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CodebuildProjectSecondarySourcesType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectSecondarySourcesType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildProjectSecondarySourcesType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectSecondarySourcesType.arg(TfArg<String> arg)
    : this._(arg);

  static const codecommit = CodebuildProjectSecondarySourcesType._(
    TfArgLiteral('CODECOMMIT'),
  );
  static const codepipeline = CodebuildProjectSecondarySourcesType._(
    TfArgLiteral('CODEPIPELINE'),
  );
  static const github = CodebuildProjectSecondarySourcesType._(
    TfArgLiteral('GITHUB'),
  );
  static const gitlab = CodebuildProjectSecondarySourcesType._(
    TfArgLiteral('GITLAB'),
  );
  static const gitlabSelfManaged = CodebuildProjectSecondarySourcesType._(
    TfArgLiteral('GITLAB_SELF_MANAGED'),
  );
  static const s3 = CodebuildProjectSecondarySourcesType._(TfArgLiteral('S3'));
  static const bitbucket = CodebuildProjectSecondarySourcesType._(
    TfArgLiteral('BITBUCKET'),
  );
  static const githubEnterprise = CodebuildProjectSecondarySourcesType._(
    TfArgLiteral('GITHUB_ENTERPRISE'),
  );
  static const noSource = CodebuildProjectSecondarySourcesType._(
    TfArgLiteral('NO_SOURCE'),
  );

  static const List<CodebuildProjectSecondarySourcesType> values = [
    codecommit,
    codepipeline,
    github,
    gitlab,
    gitlabSelfManaged,
    s3,
    bitbucket,
    githubEnterprise,
    noSource,
  ];
}

/// Typed helper for the `secondary_sources.auth` block of
/// `aws_codebuild_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CodebuildProjectAuth {
  const CodebuildProjectAuth({required this.resource, required this.type});

  final TfArg<String> resource;

  final CodebuildProjectAuthType type;

  @internal
  Map<String, Object?> encode() => {
    'resource': resource.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CodebuildProjectAuthType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildProjectAuthType.variable(String name) : this._(TfArg.variable(name));
  CodebuildProjectAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildProjectAuthType.arg(TfArg<String> arg) : this._(arg);

  static const oauth = CodebuildProjectAuthType._(TfArgLiteral('OAUTH'));
  static const basicAuth = CodebuildProjectAuthType._(
    TfArgLiteral('BASIC_AUTH'),
  );
  static const personalAccessToken = CodebuildProjectAuthType._(
    TfArgLiteral('PERSONAL_ACCESS_TOKEN'),
  );
  static const codeconnections = CodebuildProjectAuthType._(
    TfArgLiteral('CODECONNECTIONS'),
  );
  static const secretsManager = CodebuildProjectAuthType._(
    TfArgLiteral('SECRETS_MANAGER'),
  );

  static const List<CodebuildProjectAuthType> values = [
    oauth,
    basicAuth,
    personalAccessToken,
    codeconnections,
    secretsManager,
  ];
}

/// Typed helper for the `secondary_sources.build_status_config` block of
/// `aws_codebuild_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CodebuildProjectBuildStatusConfig {
  const CodebuildProjectBuildStatusConfig({this.context, this.targetUrl});

  final TfArg<String>? context;

  final TfArg<String>? targetUrl;

  @internal
  Map<String, Object?> encode() => {
    'context': ?context?.toTfJson(),
    'target_url': ?targetUrl?.toTfJson(),
  };
}

/// Typed helper for the `secondary_sources.git_submodules_config` block of
/// `aws_codebuild_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CodebuildProjectGitSubmodulesConfig {
  const CodebuildProjectGitSubmodulesConfig({required this.fetchSubmodules});

  final TfArg<bool> fetchSubmodules;

  @internal
  Map<String, Object?> encode() => {
    'fetch_submodules': fetchSubmodules.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectSource {
  const CodebuildProjectSource({
    this.buildspec,
    this.gitCloneDepth,
    this.insecureSsl,
    this.location,
    this.reportBuildStatus,
    required this.type,
    this.auth,
    this.buildStatusConfig,
    this.gitSubmodulesConfig,
  });

  final TfArg<String>? buildspec;

  final TfArg<num>? gitCloneDepth;

  final TfArg<bool>? insecureSsl;

  final TfArg<String>? location;

  final TfArg<bool>? reportBuildStatus;

  final CodebuildProjectSecondarySourcesType type;

  final CodebuildProjectAuth? auth;

  final CodebuildProjectBuildStatusConfig? buildStatusConfig;

  final CodebuildProjectGitSubmodulesConfig? gitSubmodulesConfig;

  @internal
  Map<String, Object?> encode() => {
    'buildspec': ?buildspec?.toTfJson(),
    'git_clone_depth': ?gitCloneDepth?.toTfJson(),
    'insecure_ssl': ?insecureSsl?.toTfJson(),
    'location': ?location?.toTfJson(),
    'report_build_status': ?reportBuildStatus?.toTfJson(),
    'type': type.toTfJson(),
    'auth': ?auth?.encode(),
    'build_status_config': ?buildStatusConfig?.encode(),
    'git_submodules_config': ?gitSubmodulesConfig?.encode(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_codebuild_project` (derived from provider schema).
@immutable
final class CodebuildProjectVpcConfig {
  const CodebuildProjectVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
    required this.vpcId,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  final RefTo<AwsVpc> vpcId;

  @internal
  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_codebuild_project`.
final class AwsCodebuildProject extends Resource {
  static const String tfType = 'aws_codebuild_project';

  AwsCodebuildProject(
    super.localName, {
    TfArg<num>? autoRetryLimit,
    TfArg<bool>? badgeEnabled,
    TfArg<num>? buildTimeout,
    TfArg<num>? concurrentBuildLimit,
    TfArg<String>? description,
    TfArg<String>? encryptionKey,
    required TfArg<String> name,
    CodebuildProjectVisibility? projectVisibility,
    TfArg<num>? queuedTimeout,
    TfArg<String>? region,
    TfArg<String>? resourceAccessRole,
    required RefTo<AwsIamRole> serviceRole,
    TfArg<String>? sourceVersion,
    TfArg<Map<String, String>>? tags,
    required CodebuildProjectArtifacts artifacts,
    CodebuildProjectBuildBatchConfig? buildBatchConfig,
    CodebuildProjectCache? cache,
    required CodebuildProjectEnvironment environment,
    List<CodebuildProjectFileSystemLocations>? fileSystemLocations,
    CodebuildProjectLogsConfig? logsConfig,
    List<CodebuildProjectSecondaryArtifacts>? secondaryArtifacts,
    List<CodebuildProjectSecondarySourceVersion>? secondarySourceVersion,
    List<CodebuildProjectSecondarySources>? secondarySources,
    required CodebuildProjectSource source,
    CodebuildProjectVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_retry_limit': ?autoRetryLimit,
           'badge_enabled': ?badgeEnabled,
           'build_timeout': ?buildTimeout,
           'concurrent_build_limit': ?concurrentBuildLimit,
           'description': ?description,
           'encryption_key': ?encryptionKey,
           'name': name,
           'project_visibility': ?projectVisibility,
           'queued_timeout': ?queuedTimeout,
           'region': ?region,
           'resource_access_role': ?resourceAccessRole,
           'service_role': serviceRole.encodeAs('arn'),
           'source_version': ?sourceVersion,
           'tags': ?tags,
           'artifacts': TfArg.literal(artifacts.encode()),
           if (buildBatchConfig != null)
             'build_batch_config': TfArg.literal(buildBatchConfig.encode()),
           if (cache != null) 'cache': TfArg.literal(cache.encode()),
           'environment': TfArg.literal(environment.encode()),
           if (fileSystemLocations != null)
             'file_system_locations': TfArg.literal([
               for (final e in fileSystemLocations) e.encode(),
             ]),
           if (logsConfig != null)
             'logs_config': TfArg.literal(logsConfig.encode()),
           if (secondaryArtifacts != null)
             'secondary_artifacts': TfArg.literal([
               for (final e in secondaryArtifacts) e.encode(),
             ]),
           if (secondarySourceVersion != null)
             'secondary_source_version': TfArg.literal([
               for (final e in secondarySourceVersion) e.encode(),
             ]),
           if (secondarySources != null)
             'secondary_sources': TfArg.literal([
               for (final e in secondarySources) e.encode(),
             ]),
           'source': TfArg.literal(source.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodebuildProject>`.
  RefTo<AwsCodebuildProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `badge_url` attribute.
  TfRef<String> get badgeUrl => TfRef.attribute<String>(this, 'badge_url');

  /// Reference to `public_project_alias` attribute.
  TfRef<String> get publicProjectAlias =>
      TfRef.attribute<String>(this, 'public_project_alias');

  /// Reference to `auto_retry_limit` attribute.
  TfRef<num> get autoRetryLimit =>
      TfRef.attribute<num>(this, 'auto_retry_limit');

  /// Reference to `badge_enabled` attribute.
  TfRef<bool> get badgeEnabled => TfRef.attribute<bool>(this, 'badge_enabled');

  /// Reference to `build_timeout` attribute.
  TfRef<num> get buildTimeout => TfRef.attribute<num>(this, 'build_timeout');

  /// Reference to `concurrent_build_limit` attribute.
  TfRef<num> get concurrentBuildLimit =>
      TfRef.attribute<num>(this, 'concurrent_build_limit');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encryption_key` attribute.
  TfRef<String> get encryptionKey =>
      TfRef.attribute<String>(this, 'encryption_key');

  /// Reference to `project_visibility` attribute.
  TfRef<String> get projectVisibility =>
      TfRef.attribute<String>(this, 'project_visibility');

  /// Reference to `queued_timeout` attribute.
  TfRef<num> get queuedTimeout => TfRef.attribute<num>(this, 'queued_timeout');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_access_role` attribute.
  TfRef<String> get resourceAccessRole =>
      TfRef.attribute<String>(this, 'resource_access_role');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRole =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `source_version` attribute.
  TfRef<String> get sourceVersion =>
      TfRef.attribute<String>(this, 'source_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
