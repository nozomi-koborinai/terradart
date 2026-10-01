// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../secret_manager/google_secret_manager_secret.dart'
    show GoogleSecretManagerSecret;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_cloud_run_v2_service`.
const Set<String> _googleCloudRunV2ServiceSensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// Ingress restriction for `google_cloud_run_v2_service.ingress`. Controls
/// which clients can reach the service URL. `all` is the default; the two
/// `internal*` modes require Direct VPC egress or a load balancer in front.
enum Ingress implements TerraformEnum {
  all('INGRESS_TRAFFIC_ALL'),
  internalOnly('INGRESS_TRAFFIC_INTERNAL_ONLY'),
  internalLoadBalancer('INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER');

  const Ingress(this.terraformValue);
  @override
  final String terraformValue;
}

/// Launch stage for `google_cloud_run_v2_service.launch_stage`. Setting a
/// pre-GA stage on input allows preview features in that stage; on read
/// the field reflects the highest preview level actually used.
enum LaunchStage implements TerraformEnum {
  unimplemented('UNIMPLEMENTED'),
  prelaunch('PRELAUNCH'),
  earlyAccess('EARLY_ACCESS'),
  alpha('ALPHA'),
  beta('BETA'),
  ga('GA'),
  deprecatedStage('DEPRECATED');

  const LaunchStage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Egress policy for [CloudRunV2ServiceVpcAccess.egress] (`template.vpc_access.egress`).
/// `allTraffic` routes every outbound request through the connector or
/// network interface; `privateRangesOnly` keeps RFC1918 + Google APIs
/// inside the VPC and bypasses it for the public internet.
enum VpcAccessEgress implements TerraformEnum {
  allTraffic('ALL_TRAFFIC'),
  privateRangesOnly('PRIVATE_RANGES_ONLY');

  const VpcAccessEgress(this.terraformValue);
  @override
  final String terraformValue;
}

/// Scaling mode shared by service-level [CloudRunV2ServiceScaling] and (when
/// applicable) other Cloud Run v2 scaling blocks. `automatic` lets the
/// runtime pick instance count from min/max bounds; `manual` pins to a
/// fixed [CloudRunV2ServiceScaling.manualInstanceCount].
enum ScalingMode implements TerraformEnum {
  automatic('AUTOMATIC'),
  manual('MANUAL');

  const ScalingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Container sandbox environment for [CloudRunV2ServiceTemplate.executionEnvironment].
/// `gen2` enables GCSFuse volumes + larger CPU/memory tiers; `gen1` keeps
/// the legacy gVisor sandbox.
enum ExecutionEnvironment implements TerraformEnum {
  gen1('EXECUTION_ENVIRONMENT_GEN1'),
  gen2('EXECUTION_ENVIRONMENT_GEN2');

  const ExecutionEnvironment(this.terraformValue);
  @override
  final String terraformValue;
}

/// Identity a revision runs as ([CloudRunV2ServiceWorkloadIdentityConfig.identityType]).
enum CloudRunV2ServiceWorkloadIdentityType implements TerraformEnum {
  serviceAccount('IDENTITY_TYPE_SERVICE_ACCOUNT'),
  workloadIdentity('IDENTITY_TYPE_WORKLOAD_IDENTITY'),
  agentIdentity('IDENTITY_TYPE_AGENT_IDENTITY');

  const CloudRunV2ServiceWorkloadIdentityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Allocation type for one [CloudRunV2ServiceTraffic] split. `latest` always points at the
/// newest Ready revision (so `revision` MUST be omitted); `revision`
/// pins to the [CloudRunV2ServiceTraffic.revision] name.
enum TrafficTargetAllocationType implements TerraformEnum {
  latest('TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST'),
  revision('TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION');

  const TrafficTargetAllocationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storage medium for [CloudRunV2ServiceEmptyDirVolume.medium]. The schema only documents
/// `MEMORY` for v2 services; encoded as an enum for type-safety and to
/// keep the door open for `DISK` (MM lists it but the provider rejects
/// it today).
enum EmptyDirMedium implements TerraformEnum {
  memory('MEMORY'),
  disk('DISK');

  const EmptyDirMedium(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Top-level nested helpers
// ===========================================================================

// ===========================================================================
// CloudRunV2ServiceTemplate + nested helpers
// ===========================================================================

// ===========================================================================
// Containers
// ===========================================================================

// ===========================================================================
// Probes (startup + liveness). HTTP / TCP sub-blocks are typed; grpc + exec
// are intentionally untyped Map<String, Object?> stubs to bound the file.
// ===========================================================================

// ===========================================================================
// Volumes (sealed source per volume — secret / cloud_sql / empty_dir / gcs /
// nfs are mutually exclusive per the provider's commented exactly_one_of).
// ===========================================================================

/// Typed helper for the `binary_authorization` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceBinaryAuthorization {
  const CloudRunV2ServiceBinaryAuthorization({
    this.breakglassJustification,
    this.policy,
  });

  final TfArg<String>? breakglassJustification;

  final CloudRunV2ServicePolicy? policy;

  Map<String, Object?> encode() => {
    'breakglass_justification': ?breakglassJustification?.toTfJson(),
    ...?policy?.encode(),
  };
}

/// At most one of `use_default`, `policy` on the `binary_authorization` block of `google_cloud_run_v2_service`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.useDefault(...)`.
sealed class CloudRunV2ServicePolicy {
  const CloudRunV2ServicePolicy();

  /// Sets `use_default`.
  const factory CloudRunV2ServicePolicy.useDefault(TfArg<bool> useDefault) =
      CloudRunV2ServicePolicyUseDefault;

  /// Sets `policy`.
  const factory CloudRunV2ServicePolicy.policy(TfArg<String> policy) =
      CloudRunV2ServicePolicyChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2ServicePolicy.useDefault] choice: sets `use_default`.
final class CloudRunV2ServicePolicyUseDefault extends CloudRunV2ServicePolicy {
  const CloudRunV2ServicePolicyUseDefault(this.useDefault);

  final TfArg<bool> useDefault;

  @override
  String get blockKey => 'use_default';

  @override
  Map<String, Object?> encode() => {'use_default': useDefault.toTfJson()};
}

/// The [CloudRunV2ServicePolicy.policy] choice: sets `policy`.
final class CloudRunV2ServicePolicyChoice extends CloudRunV2ServicePolicy {
  const CloudRunV2ServicePolicyChoice(this.policy);

  final TfArg<String> policy;

  @override
  String get blockKey => 'policy';

  @override
  Map<String, Object?> encode() => {'policy': policy.toTfJson()};
}

/// Typed helper for the `build_config` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceBuildConfig {
  const CloudRunV2ServiceBuildConfig({
    this.baseImage,
    this.enableAutomaticUpdates,
    this.environmentVariables,
    this.functionTarget,
    this.imageUri,
    this.serviceAccount,
    this.sourceLocation,
    this.workerPool,
  });

  final TfArg<String>? baseImage;

  final TfArg<bool>? enableAutomaticUpdates;

  final TfArg<Map<String, String>>? environmentVariables;

  final TfArg<String>? functionTarget;

  final TfArg<String>? imageUri;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? sourceLocation;

  final TfArg<String>? workerPool;

  Map<String, Object?> encode() => {
    'base_image': ?baseImage?.toTfJson(),
    'enable_automatic_updates': ?enableAutomaticUpdates?.toTfJson(),
    'environment_variables': ?environmentVariables?.toTfJson(),
    'function_target': ?functionTarget?.toTfJson(),
    'image_uri': ?imageUri?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('name').toTfJson(),
    'source_location': ?sourceLocation?.toTfJson(),
    'worker_pool': ?workerPool?.toTfJson(),
  };
}

/// Typed helper for the `multi_region_settings` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceMultiRegionSettings {
  const CloudRunV2ServiceMultiRegionSettings({this.regions});

  final TfArg<List<String>>? regions;

  Map<String, Object?> encode() => {'regions': ?regions?.toTfJson()};
}

/// Typed helper for the `scaling` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceScaling {
  const CloudRunV2ServiceScaling({
    this.manualInstanceCount,
    this.maxInstanceCount,
    this.minInstanceCount,
    this.scalingMode,
  });

  final TfArg<num>? manualInstanceCount;

  final TfArg<num>? maxInstanceCount;

  final TfArg<num>? minInstanceCount;

  final TfArg<ScalingMode>? scalingMode;

  Map<String, Object?> encode() => {
    'manual_instance_count': ?manualInstanceCount?.toTfJson(),
    'max_instance_count': ?maxInstanceCount?.toTfJson(),
    'min_instance_count': ?minInstanceCount?.toTfJson(),
    'scaling_mode': ?scalingMode?.toTfJson(),
  };
}

/// Typed helper for the `template` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceTemplate {
  const CloudRunV2ServiceTemplate({
    this.annotations,
    this.encryptionKey,
    this.executionEnvironment,
    this.gpuZonalRedundancyDisabled,
    this.healthCheckDisabled,
    this.labels,
    this.maxInstanceRequestConcurrency,
    this.revision,
    this.serviceAccount,
    this.sessionAffinity,
    this.timeout,
    this.containers,
    this.nodeSelector,
    this.sandboxes,
    this.scaling,
    this.volumes,
    this.vpcAccess,
    this.workloadIdentityConfig,
  });

  final TfArg<Map<String, String>>? annotations;

  final TfArg<String>? encryptionKey;

  final TfArg<ExecutionEnvironment>? executionEnvironment;

  final TfArg<bool>? gpuZonalRedundancyDisabled;

  final TfArg<bool>? healthCheckDisabled;

  final TfArg<Map<String, String>>? labels;

  final TfArg<num>? maxInstanceRequestConcurrency;

  final TfArg<String>? revision;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<bool>? sessionAffinity;

  final TfArg<String>? timeout;

  final List<CloudRunV2ServiceContainers>? containers;

  final CloudRunV2ServiceNodeSelector? nodeSelector;

  final CloudRunV2ServiceSandboxes? sandboxes;

  final CloudRunV2ServiceTemplateScaling? scaling;

  final List<CloudRunV2ServiceVolumes>? volumes;

  final CloudRunV2ServiceVpcAccess? vpcAccess;

  final CloudRunV2ServiceWorkloadIdentityConfig? workloadIdentityConfig;

  Map<String, Object?> encode() => {
    'annotations': ?annotations?.toTfJson(),
    'encryption_key': ?encryptionKey?.toTfJson(),
    'execution_environment': ?executionEnvironment?.toTfJson(),
    'gpu_zonal_redundancy_disabled': ?gpuZonalRedundancyDisabled?.toTfJson(),
    'health_check_disabled': ?healthCheckDisabled?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'max_instance_request_concurrency': ?maxInstanceRequestConcurrency
        ?.toTfJson(),
    'revision': ?revision?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'session_affinity': ?sessionAffinity?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    if (containers != null)
      'containers': [for (final e in containers!) e.encode()],
    'node_selector': ?nodeSelector?.encode(),
    'sandboxes': ?sandboxes?.encode(),
    'scaling': ?scaling?.encode(),
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
    'vpc_access': ?vpcAccess?.encode(),
    'workload_identity_config': ?workloadIdentityConfig?.encode(),
  };
}

/// Typed helper for the `template.containers` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceContainers {
  const CloudRunV2ServiceContainers({
    this.args,
    this.baseImageUri,
    this.command,
    this.dependsOn,
    required this.image,
    this.name,
    this.sandboxLauncher,
    this.workingDir,
    this.env,
    this.livenessProbe,
    this.ports,
    this.readinessProbe,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
  });

  final TfArg<List<String>>? args;

  final TfArg<String>? baseImageUri;

  final TfArg<List<String>>? command;

  final TfArg<List<String>>? dependsOn;

  final TfArg<String> image;

  final TfArg<String>? name;

  final TfArg<bool>? sandboxLauncher;

  final TfArg<String>? workingDir;

  final List<CloudRunV2ServiceEnv>? env;

  final CloudRunV2ServiceLivenessProbe? livenessProbe;

  final CloudRunV2ServicePorts? ports;

  final CloudRunV2ServiceReadinessProbe? readinessProbe;

  final CloudRunV2ServiceResources? resources;

  final CloudRunV2ServiceStartupProbe? startupProbe;

  final List<CloudRunV2ServiceVolumeMounts>? volumeMounts;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'base_image_uri': ?baseImageUri?.toTfJson(),
    'command': ?command?.toTfJson(),
    'depends_on': ?dependsOn?.toTfJson(),
    'image': image.toTfJson(),
    'name': ?name?.toTfJson(),
    'sandbox_launcher': ?sandboxLauncher?.toTfJson(),
    'working_dir': ?workingDir?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    'liveness_probe': ?livenessProbe?.encode(),
    'ports': ?ports?.encode(),
    'readiness_probe': ?readinessProbe?.encode(),
    'resources': ?resources?.encode(),
    'startup_probe': ?startupProbe?.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.containers.env` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceEnv {
  const CloudRunV2ServiceEnv({required this.name, required this.source});

  final TfArg<String> name;

  final CloudRunV2ServiceEnvSource source;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    ...source.encode(),
  };
}

/// Exactly one of `value`, `value_source` on the `template.containers.env` block of `google_cloud_run_v2_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class CloudRunV2ServiceEnvSource {
  const CloudRunV2ServiceEnvSource();

  /// Sets `value`.
  const factory CloudRunV2ServiceEnvSource.value(TfArg<String> value) =
      CloudRunV2ServiceEnvSourceValue;

  /// Sets `value_source`.
  const factory CloudRunV2ServiceEnvSource.valueSource(
    CloudRunV2ServiceValueSource valueSource,
  ) = CloudRunV2ServiceEnvValueSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2ServiceEnvSource.value] choice: sets `value`.
final class CloudRunV2ServiceEnvSourceValue extends CloudRunV2ServiceEnvSource {
  const CloudRunV2ServiceEnvSourceValue(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [CloudRunV2ServiceEnvSource.valueSource] choice: sets `value_source`.
final class CloudRunV2ServiceEnvValueSource extends CloudRunV2ServiceEnvSource {
  const CloudRunV2ServiceEnvValueSource(this.valueSource);

  final CloudRunV2ServiceValueSource valueSource;

  @override
  String get blockKey => 'value_source';

  @override
  Map<String, Object?> encode() => {'value_source': valueSource.encode()};
}

/// Typed helper for the `template.containers.env.value_source` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceValueSource {
  const CloudRunV2ServiceValueSource({this.secretKeyRef});

  final CloudRunV2ServiceSecretKeyRef? secretKeyRef;

  Map<String, Object?> encode() => {'secret_key_ref': ?secretKeyRef?.encode()};
}

/// Typed helper for the `template.containers.env.value_source.secret_key_ref` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceSecretKeyRef {
  const CloudRunV2ServiceSecretKeyRef({required this.secret, this.version});

  final RefTo<GoogleSecretManagerSecret> secret;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'secret': secret.encodeAs('id').toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `template.containers.liveness_probe` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceLivenessProbe {
  const CloudRunV2ServiceLivenessProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
    this.grpc,
    this.httpGet,
    this.tcpSocket,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final CloudRunV2ServiceGrpc? grpc;

  final CloudRunV2ServiceLivenessProbeHttpGet? httpGet;

  final CloudRunV2ServiceLivenessProbeTcpSocket? tcpSocket;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'grpc': ?grpc?.encode(),
    'http_get': ?httpGet?.encode(),
    'tcp_socket': ?tcpSocket?.encode(),
  };
}

/// Typed helper for the `template.containers.liveness_probe.grpc` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2ServiceGrpc {
  const CloudRunV2ServiceGrpc({this.port, this.service});

  final TfArg<num>? port;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `template.containers.liveness_probe.http_get` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2ServiceLivenessProbeHttpGet {
  const CloudRunV2ServiceLivenessProbeHttpGet({
    this.path,
    this.port,
    this.httpHeaders,
  });

  final TfArg<String>? path;

  final TfArg<num>? port;

  final List<CloudRunV2ServiceHttpHeaders>? httpHeaders;

  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `template.containers.liveness_probe.http_get.http_headers` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2ServiceHttpHeaders {
  const CloudRunV2ServiceHttpHeaders({required this.name, this.value});

  final TfArg<String> name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `template.containers.liveness_probe.tcp_socket` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceLivenessProbeTcpSocket {
  const CloudRunV2ServiceLivenessProbeTcpSocket({required this.port});

  final TfArg<num> port;

  Map<String, Object?> encode() => {'port': port.toTfJson()};
}

/// Typed helper for the `template.containers.ports` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServicePorts {
  const CloudRunV2ServicePorts({this.containerPort, this.name});

  final TfArg<num>? containerPort;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'container_port': ?containerPort?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `template.containers.readiness_probe` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceReadinessProbe {
  const CloudRunV2ServiceReadinessProbe({
    this.failureThreshold,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
    this.grpc,
    this.httpGet,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? successThreshold;

  final TfArg<num>? timeoutSeconds;

  final CloudRunV2ServiceGrpc? grpc;

  final CloudRunV2ServiceReadinessProbeHttpGet? httpGet;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'success_threshold': ?successThreshold?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'grpc': ?grpc?.encode(),
    'http_get': ?httpGet?.encode(),
  };
}

/// Typed helper for the `template.containers.readiness_probe.http_get` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceReadinessProbeHttpGet {
  const CloudRunV2ServiceReadinessProbeHttpGet({this.path, this.port});

  final TfArg<String>? path;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `template.containers.resources` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceResources {
  const CloudRunV2ServiceResources({
    this.cpuIdle,
    this.limits,
    this.startupCpuBoost,
  });

  final TfArg<bool>? cpuIdle;

  final TfArg<Map<String, String>>? limits;

  final TfArg<bool>? startupCpuBoost;

  Map<String, Object?> encode() => {
    'cpu_idle': ?cpuIdle?.toTfJson(),
    'limits': ?limits?.toTfJson(),
    'startup_cpu_boost': ?startupCpuBoost?.toTfJson(),
  };
}

/// Typed helper for the `template.containers.startup_probe` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceStartupProbe {
  const CloudRunV2ServiceStartupProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
    this.grpc,
    this.httpGet,
    this.tcpSocket,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final CloudRunV2ServiceGrpc? grpc;

  final CloudRunV2ServiceLivenessProbeHttpGet? httpGet;

  final CloudRunV2ServiceStartupProbeTcpSocket? tcpSocket;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'grpc': ?grpc?.encode(),
    'http_get': ?httpGet?.encode(),
    'tcp_socket': ?tcpSocket?.encode(),
  };
}

/// Typed helper for the `template.containers.startup_probe.tcp_socket` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceStartupProbeTcpSocket {
  const CloudRunV2ServiceStartupProbeTcpSocket({this.port});

  final TfArg<num>? port;

  Map<String, Object?> encode() => {'port': ?port?.toTfJson()};
}

/// Typed helper for the `template.containers.volume_mounts` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2ServiceVolumeMounts {
  const CloudRunV2ServiceVolumeMounts({
    required this.mountPath,
    required this.name,
    this.subPath,
  });

  final TfArg<String> mountPath;

  final TfArg<String> name;

  final TfArg<String>? subPath;

  Map<String, Object?> encode() => {
    'mount_path': mountPath.toTfJson(),
    'name': name.toTfJson(),
    'sub_path': ?subPath?.toTfJson(),
  };
}

/// Typed helper for the `template.node_selector` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceNodeSelector {
  const CloudRunV2ServiceNodeSelector({required this.accelerator});

  final TfArg<String> accelerator;

  Map<String, Object?> encode() => {'accelerator': accelerator.toTfJson()};
}

/// Typed helper for the `template.sandboxes` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceSandboxes {
  const CloudRunV2ServiceSandboxes({this.templates});

  final List<CloudRunV2ServiceTemplates>? templates;

  Map<String, Object?> encode() => {
    if (templates != null)
      'templates': [for (final e in templates!) e.encode()],
  };
}

/// Typed helper for the `template.sandboxes.templates` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceTemplates {
  const CloudRunV2ServiceTemplates({
    this.args,
    this.command,
    required this.image,
    required this.name,
    this.workingDir,
    this.env,
    this.volumeMounts,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<String> image;

  final TfArg<String> name;

  final TfArg<String>? workingDir;

  final List<CloudRunV2ServiceTemplatesEnv>? env;

  final List<CloudRunV2ServiceVolumeMounts>? volumeMounts;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'image': image.toTfJson(),
    'name': name.toTfJson(),
    'working_dir': ?workingDir?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.sandboxes.templates.env` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceTemplatesEnv {
  const CloudRunV2ServiceTemplatesEnv({required this.name, this.value});

  final TfArg<String> name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `template.scaling` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceTemplateScaling {
  const CloudRunV2ServiceTemplateScaling({
    this.maxInstanceCount,
    this.minInstanceCount,
  });

  final TfArg<num>? maxInstanceCount;

  final TfArg<num>? minInstanceCount;

  Map<String, Object?> encode() => {
    'max_instance_count': ?maxInstanceCount?.toTfJson(),
    'min_instance_count': ?minInstanceCount?.toTfJson(),
  };
}

/// Typed helper for the `template.volumes` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceVolumes {
  const CloudRunV2ServiceVolumes({required this.name, required this.source});

  final TfArg<String> name;

  final CloudRunV2ServiceSource source;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    ...source.encode(),
  };
}

/// Exactly one of `cloud_sql_instance`, `empty_dir`, `gcs`, `nfs`, `secret` on the `template.volumes` block of `google_cloud_run_v2_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudSqlInstance(...)`.
sealed class CloudRunV2ServiceSource {
  const CloudRunV2ServiceSource();

  /// Sets `cloud_sql_instance`.
  const factory CloudRunV2ServiceSource.cloudSqlInstance(
    CloudRunV2ServiceCloudSqlInstance cloudSqlInstance,
  ) = CloudRunV2ServiceSourceCloudSqlInstance;

  /// Sets `empty_dir`.
  const factory CloudRunV2ServiceSource.emptyDir(
    CloudRunV2ServiceEmptyDir emptyDir,
  ) = CloudRunV2ServiceSourceEmptyDir;

  /// Sets `gcs`.
  const factory CloudRunV2ServiceSource.gcs(CloudRunV2ServiceGcs gcs) =
      CloudRunV2ServiceSourceGcs;

  /// Sets `nfs`.
  const factory CloudRunV2ServiceSource.nfs(CloudRunV2ServiceNfs nfs) =
      CloudRunV2ServiceSourceNfs;

  /// Sets `secret`.
  const factory CloudRunV2ServiceSource.secret(CloudRunV2ServiceSecret secret) =
      CloudRunV2ServiceSourceSecret;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2ServiceSource.cloudSqlInstance] choice: sets `cloud_sql_instance`.
final class CloudRunV2ServiceSourceCloudSqlInstance
    extends CloudRunV2ServiceSource {
  const CloudRunV2ServiceSourceCloudSqlInstance(this.cloudSqlInstance);

  final CloudRunV2ServiceCloudSqlInstance cloudSqlInstance;

  @override
  String get blockKey => 'cloud_sql_instance';

  @override
  Map<String, Object?> encode() => {
    'cloud_sql_instance': cloudSqlInstance.encode(),
  };
}

/// The [CloudRunV2ServiceSource.emptyDir] choice: sets `empty_dir`.
final class CloudRunV2ServiceSourceEmptyDir extends CloudRunV2ServiceSource {
  const CloudRunV2ServiceSourceEmptyDir(this.emptyDir);

  final CloudRunV2ServiceEmptyDir emptyDir;

  @override
  String get blockKey => 'empty_dir';

  @override
  Map<String, Object?> encode() => {'empty_dir': emptyDir.encode()};
}

/// The [CloudRunV2ServiceSource.gcs] choice: sets `gcs`.
final class CloudRunV2ServiceSourceGcs extends CloudRunV2ServiceSource {
  const CloudRunV2ServiceSourceGcs(this.gcs);

  final CloudRunV2ServiceGcs gcs;

  @override
  String get blockKey => 'gcs';

  @override
  Map<String, Object?> encode() => {'gcs': gcs.encode()};
}

/// The [CloudRunV2ServiceSource.nfs] choice: sets `nfs`.
final class CloudRunV2ServiceSourceNfs extends CloudRunV2ServiceSource {
  const CloudRunV2ServiceSourceNfs(this.nfs);

  final CloudRunV2ServiceNfs nfs;

  @override
  String get blockKey => 'nfs';

  @override
  Map<String, Object?> encode() => {'nfs': nfs.encode()};
}

/// The [CloudRunV2ServiceSource.secret] choice: sets `secret`.
final class CloudRunV2ServiceSourceSecret extends CloudRunV2ServiceSource {
  const CloudRunV2ServiceSourceSecret(this.secret);

  final CloudRunV2ServiceSecret secret;

  @override
  String get blockKey => 'secret';

  @override
  Map<String, Object?> encode() => {'secret': secret.encode()};
}

/// Typed helper for the `template.volumes.cloud_sql_instance` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceCloudSqlInstance {
  const CloudRunV2ServiceCloudSqlInstance({this.instances});

  final TfArg<List<String>>? instances;

  Map<String, Object?> encode() => {'instances': ?instances?.toTfJson()};
}

/// Typed helper for the `template.volumes.empty_dir` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceEmptyDir {
  const CloudRunV2ServiceEmptyDir({this.medium, this.sizeLimit});

  final TfArg<EmptyDirMedium>? medium;

  final TfArg<String>? sizeLimit;

  Map<String, Object?> encode() => {
    'medium': ?medium?.toTfJson(),
    'size_limit': ?sizeLimit?.toTfJson(),
  };
}

/// Typed helper for the `template.volumes.gcs` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceGcs {
  const CloudRunV2ServiceGcs({
    required this.bucket,
    this.mountOptions,
    this.readOnly,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<List<String>>? mountOptions;

  final TfArg<bool>? readOnly;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'mount_options': ?mountOptions?.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
  };
}

/// Typed helper for the `template.volumes.nfs` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceNfs {
  const CloudRunV2ServiceNfs({
    required this.path,
    this.readOnly,
    required this.server,
  });

  final TfArg<String> path;

  final TfArg<bool>? readOnly;

  final TfArg<String> server;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'server': server.toTfJson(),
  };
}

/// Typed helper for the `template.volumes.secret` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceSecret {
  const CloudRunV2ServiceSecret({
    this.defaultMode,
    required this.secret,
    this.items,
  });

  final TfArg<num>? defaultMode;

  final RefTo<GoogleSecretManagerSecret> secret;

  final List<CloudRunV2ServiceItems>? items;

  Map<String, Object?> encode() => {
    'default_mode': ?defaultMode?.toTfJson(),
    'secret': secret.encodeAs('id').toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `template.volumes.secret.items` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceItems {
  const CloudRunV2ServiceItems({this.mode, required this.path, this.version});

  final TfArg<num>? mode;

  final TfArg<String> path;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'path': path.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `template.vpc_access` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceVpcAccess {
  const CloudRunV2ServiceVpcAccess({this.connection, this.egress});

  final CloudRunV2ServiceConnection? connection;

  final TfArg<VpcAccessEgress>? egress;

  Map<String, Object?> encode() => {
    ...?connection?.encode(),
    'egress': ?egress?.toTfJson(),
  };
}

/// At most one of `connector`, `network_interfaces` on the `template.vpc_access` block of `google_cloud_run_v2_service`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.connector(...)`.
sealed class CloudRunV2ServiceConnection {
  const CloudRunV2ServiceConnection();

  /// Sets `connector`.
  const factory CloudRunV2ServiceConnection.connector(TfArg<String> connector) =
      CloudRunV2ServiceConnectionConnector;

  /// Sets `network_interfaces`.
  const factory CloudRunV2ServiceConnection.networkInterfaces(
    List<CloudRunV2ServiceNetworkInterfaces> networkInterfaces,
  ) = CloudRunV2ServiceConnectionNetworkInterfaces;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudRunV2ServiceConnection.connector] choice: sets `connector`.
final class CloudRunV2ServiceConnectionConnector
    extends CloudRunV2ServiceConnection {
  const CloudRunV2ServiceConnectionConnector(this.connector);

  final TfArg<String> connector;

  @override
  String get blockKey => 'connector';

  @override
  Map<String, Object?> encode() => {'connector': connector.toTfJson()};
}

/// The [CloudRunV2ServiceConnection.networkInterfaces] choice: sets `network_interfaces`.
final class CloudRunV2ServiceConnectionNetworkInterfaces
    extends CloudRunV2ServiceConnection {
  const CloudRunV2ServiceConnectionNetworkInterfaces(this.networkInterfaces);

  final List<CloudRunV2ServiceNetworkInterfaces> networkInterfaces;

  @override
  String get blockKey => 'network_interfaces';

  @override
  Map<String, Object?> encode() => {
    'network_interfaces': [for (final e in networkInterfaces) e.encode()],
  };
}

/// Typed helper for the `template.vpc_access.network_interfaces` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceNetworkInterfaces {
  const CloudRunV2ServiceNetworkInterfaces({
    this.network,
    this.subnetwork,
    this.tags,
  });

  final RefTo<GoogleComputeNetwork>? network;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<List<String>>? tags;

  Map<String, Object?> encode() => {
    'network': ?network?.encodeAs('id').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// Typed helper for the `template.workload_identity_config` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceWorkloadIdentityConfig {
  const CloudRunV2ServiceWorkloadIdentityConfig({
    this.identity,
    this.identityCertificateEnabled,
    this.identityType,
  });

  final TfArg<String>? identity;

  final TfArg<bool>? identityCertificateEnabled;

  final TfArg<CloudRunV2ServiceWorkloadIdentityType>? identityType;

  Map<String, Object?> encode() => {
    'identity': ?identity?.toTfJson(),
    'identity_certificate_enabled': ?identityCertificateEnabled?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
  };
}

/// Typed helper for the `traffic` block of
/// `google_cloud_run_v2_service` (derived from provider schema).
@immutable
final class CloudRunV2ServiceTraffic {
  const CloudRunV2ServiceTraffic({
    this.percent,
    this.revision,
    this.tag,
    this.type,
  });

  final TfArg<num>? percent;

  final TfArg<String>? revision;

  final TfArg<String>? tag;

  final TfArg<TrafficTargetAllocationType>? type;

  Map<String, Object?> encode() => {
    'percent': ?percent?.toTfJson(),
    'revision': ?revision?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_run_v2_service`.
///
/// Service acts as a top-level container that manages a set of configurations
/// and revision templates which implement a network service. Service exists to
/// provide a singular abstraction which can be access controlled, reasoned
/// about, and which encapsulates software lifecycle decisions such as rollout
/// policy and team resource ownership.
///
/// Example (minimal hello-world service):
/// ```dart
/// final svc = GoogleCloudRunV2Service(
///   'hello',
///   name: .literal('hello-svc'),
///   location: .literal('asia-northeast1'),
///   template: CloudRunV2ServiceTemplate(
///     containers: [
///       .new(
///         image: .literal('gcr.io/cloudrun/hello'),
///         ports: .new(
///           containerPort: .literal(8080),
///         ),
///       ),
///     ],
///   ),
///   ingress: .literal(.all),
/// );
/// ```
///
/// Example (with secret-backed env var + GCS volume):
/// ```dart
/// final api = GoogleCloudRunV2Service(
///   'api',
///   name: .literal('api'),
///   location: .literal('asia-northeast1'),
///   template: CloudRunV2ServiceTemplate(
///     containers: [
///       .new(
///         image: .literal('asia-northeast1-docker.pkg.dev/p/r/api:v1'),
///         env: [
///           .new(
///             name: .literal('DATABASE_URL'),
///             source: .valueSource(
///               .new(
///                 secretKeyRef: .new(
///                       secret: .literal('db-url'),
///                       version: .literal('latest'),
///                     ),
///               ),
///             ),
///           ),
///         ],
///         volumeMounts: [
///           .new(
///             name: .literal('cache'),
///             mountPath: .literal('/var/cache'),
///           ),
///         ],
///       ),
///     ],
///     volumes: [
///       .new(
///         name: .literal('cache'),
///         source: .gcs(
///           .new(bucket: .of(bucket)),
///         ),
///       ),
///     ],
///     executionEnvironment: .literal(.gen2),
///   ),
/// );
/// ```
final class GoogleCloudRunV2Service extends Resource {
  static const String tfType = 'google_cloud_run_v2_service';

  GoogleCloudRunV2Service(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required CloudRunV2ServiceTemplate template,
    List<CloudRunV2ServiceTraffic>? traffic,
    CloudRunV2ServiceScaling? scaling,
    CloudRunV2ServiceBinaryAuthorization? binaryAuthorization,
    TfArg<Ingress>? ingress,
    TfArg<LaunchStage>? launchStage,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<List<String>>? customAudiences,
    TfArg<String>? client,
    TfArg<String>? clientVersion,
    TfArg<bool>? defaultUriDisabled,
    TfArg<bool>? invokerIamDisabled,
    TfArg<bool>? iapEnabled,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    TfArg<Map<String, String>>? tags,
    CloudRunV2ServiceBuildConfig? buildConfig,
    CloudRunV2ServiceMultiRegionSettings? multiRegionSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'template': TfArg.literal(template.encode()),
           if (traffic != null)
             'traffic': TfArg.literal([for (final e in traffic) e.encode()]),
           if (scaling != null) 'scaling': TfArg.literal(scaling.encode()),
           if (binaryAuthorization != null)
             'binary_authorization': TfArg.literal(
               binaryAuthorization.encode(),
             ),
           'ingress': ?ingress,
           'launch_stage': ?launchStage,
           'description': ?description,
           'labels': ?labels,
           'annotations': ?annotations,
           'custom_audiences': ?customAudiences,
           'client': ?client,
           'client_version': ?clientVersion,
           'default_uri_disabled': ?defaultUriDisabled,
           'invoker_iam_disabled': ?invokerIamDisabled,
           'iap_enabled': ?iapEnabled,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
           'tags': ?tags,
           if (buildConfig != null)
             'build_config': TfArg.literal(buildConfig.encode()),
           if (multiRegionSettings != null)
             'multi_region_settings': TfArg.literal(
               multiRegionSettings.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2ServiceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2Service>`.
  RefTo<GoogleCloudRunV2Service> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `conditions` attribute.
  TfRef<List<Map<String, Object?>>> get conditions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'conditions');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `generation` attribute.
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `last_modifier` attribute.
  TfRef<String> get lastModifier =>
      TfRef.attribute<String>(this, 'last_modifier');

  /// Reference to `latest_created_revision` attribute.
  TfRef<String> get latestCreatedRevision =>
      TfRef.attribute<String>(this, 'latest_created_revision');

  /// Reference to `latest_ready_revision` attribute.
  TfRef<String> get latestReadyRevision =>
      TfRef.attribute<String>(this, 'latest_ready_revision');

  /// Reference to `observed_generation` attribute.
  TfRef<String> get observedGeneration =>
      TfRef.attribute<String>(this, 'observed_generation');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `terminal_condition` attribute.
  TfRef<List<Map<String, Object?>>> get terminalCondition =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'terminal_condition');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `traffic_statuses` attribute.
  TfRef<List<Map<String, Object?>>> get trafficStatuses =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'traffic_statuses');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `urls` attribute.
  TfRef<List<String>> get urls => TfRef.attribute<List<String>>(this, 'urls');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `client` attribute.
  TfRef<String> get client => TfRef.attribute<String>(this, 'client');

  /// Reference to `client_version` attribute.
  TfRef<String> get clientVersion =>
      TfRef.attribute<String>(this, 'client_version');

  /// Reference to `custom_audiences` attribute.
  TfRef<List<String>> get customAudiences =>
      TfRef.attribute<List<String>>(this, 'custom_audiences');

  /// Reference to `default_uri_disabled` attribute.
  TfRef<bool> get defaultUriDisabled =>
      TfRef.attribute<bool>(this, 'default_uri_disabled');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `iap_enabled` attribute.
  TfRef<bool> get iapEnabled => TfRef.attribute<bool>(this, 'iap_enabled');

  /// Reference to `ingress` attribute.
  TfRef<String> get ingress => TfRef.attribute<String>(this, 'ingress');

  /// Reference to `invoker_iam_disabled` attribute.
  TfRef<bool> get invokerIamDisabled =>
      TfRef.attribute<bool>(this, 'invoker_iam_disabled');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `launch_stage` attribute.
  TfRef<String> get launchStage =>
      TfRef.attribute<String>(this, 'launch_stage');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
