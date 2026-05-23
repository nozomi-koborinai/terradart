// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_job`.
const Set<String> _googleCloudRunV2JobSensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// Launch stage for `google_cloud_run_v2_job.launch_stage`. Setting a
/// pre-GA stage on input allows preview features in that stage; on read
/// the field reflects the highest preview level actually used.
///
/// The Job and Service enums share the same Terraform values but live
/// under separate names ([CloudRunV2JobLaunchStage] vs. [LaunchStage]) so the
/// `cloud_run.dart` barrel can `show` both.
enum CloudRunV2JobLaunchStage implements TerraformEnum {
  unimplemented('UNIMPLEMENTED'),
  prelaunch('PRELAUNCH'),
  earlyAccess('EARLY_ACCESS'),
  alpha('ALPHA'),
  beta('BETA'),
  ga('GA'),
  deprecatedStage('DEPRECATED');

  const CloudRunV2JobLaunchStage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Container sandbox environment for [CloudRunV2JobTaskTemplate.executionEnvironment].
/// `gen2` enables larger CPU tiers + GCSFuse volumes; `gen1` keeps the
/// legacy gVisor sandbox.
enum CloudRunV2JobExecutionEnvironment implements TerraformEnum {
  gen1('EXECUTION_ENVIRONMENT_GEN1'),
  gen2('EXECUTION_ENVIRONMENT_GEN2');

  const CloudRunV2JobExecutionEnvironment(this.terraformValue);
  @override
  final String terraformValue;
}

/// Egress policy for [CloudRunV2JobVpcAccess.egress] (`template.template.vpc_access.egress`).
enum CloudRunV2JobVpcAccessEgress implements TerraformEnum {
  allTraffic('ALL_TRAFFIC'),
  privateRangesOnly('PRIVATE_RANGES_ONLY');

  const CloudRunV2JobVpcAccessEgress(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storage medium for [CloudRunV2JobEmptyDirVolume.medium]. The Cloud Run v2 Job
/// schema documents `MEMORY`; `DISK` is reserved per the Magic-Modules
/// mirror but rejected by the provider today.
enum CloudRunV2JobEmptyDirMedium implements TerraformEnum {
  memory('MEMORY'),
  disk('DISK');

  const CloudRunV2JobEmptyDirMedium(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Top-level nested helpers
// ===========================================================================

/// `binary_authorization` block. Enforces Binary Authorization on the
/// Job. Set [useDefault] OR [policy] (the two conflict at the provider
/// level). [breakglassJustification] only takes effect when a policy
/// denies admission and the deployer wants to override it.
@immutable
class CloudRunV2JobBinaryAuthorization {
  const CloudRunV2JobBinaryAuthorization({
    this.useDefault,
    this.policy,
    this.breakglassJustification,
  });

  /// `true` uses the project's default BinAuthz policy. Conflicts with
  /// [policy].
  final TfArg<bool>? useDefault;

  /// Path to a custom BinAuthz policy. Format:
  /// `projects/{project}/platforms/cloudRun/{policy-name}`. Conflicts
  /// with [useDefault].
  final TfArg<String>? policy;

  /// Justification string passed when breakglassing past a denied
  /// admission.
  final TfArg<String>? breakglassJustification;

  Map<String, Object?> toArgMap() => {
    if (useDefault != null) 'use_default': useDefault!.toTfJson(),
    if (policy != null) 'policy': policy!.toTfJson(),
    if (breakglassJustification != null)
      'breakglass_justification': breakglassJustification!.toTfJson(),
  };
}

// ===========================================================================
// CloudRunV2JobTemplate (outer) + CloudRunV2JobTaskTemplate (inner) — `template.0.template.0`
// ===========================================================================

/// Outer `template` block. Holds Job-level scheduling knobs
/// ([parallelism], [taskCount]) and wraps the inner per-Task template
/// ([template], a [CloudRunV2JobTaskTemplate]).
@immutable
class CloudRunV2JobTemplate {
  const CloudRunV2JobTemplate({
    required this.template,
    this.parallelism,
    this.taskCount,
    this.labels,
    this.annotations,
  });

  /// Per-Task template. Required.
  final CloudRunV2JobTaskTemplate template;

  /// How many Tasks may run concurrently. Defaults to the value of
  /// [taskCount] (i.e. fully parallel).
  final TfArg<int>? parallelism;

  /// Number of Tasks per execution. Defaults to 1.
  final TfArg<int>? taskCount;

  /// Job-level labels. Same namespace restrictions as the Service variant.
  final TfArg<Map<String, String>>? labels;

  /// Job-level annotations.
  final TfArg<Map<String, String>>? annotations;

  Map<String, Object?> toArgMap() => {
    'template': [template.toArgMap()],
    if (parallelism != null) 'parallelism': parallelism!.toTfJson(),
    if (taskCount != null) 'task_count': taskCount!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (annotations != null) 'annotations': annotations!.toTfJson(),
  };
}

/// Inner `template.template` block — the per-Task template. Holds at
/// least one [CloudRunV2JobContainer] plus optional VPC access, volumes, retries,
/// timeout.
@immutable
class CloudRunV2JobTaskTemplate {
  const CloudRunV2JobTaskTemplate({
    required this.containers,
    this.serviceAccount,
    this.timeout,
    this.maxRetries,
    this.executionEnvironment,
    this.encryptionKey,
    this.gpuZonalRedundancyDisabled,
    this.vpcAccess,
    this.volumes,
    this.nodeSelector,
  });

  /// One or more containers (≥1).
  final List<CloudRunV2JobContainer> containers;

  /// Service account email the Task runs as. Defaults to the project
  /// default compute SA.
  final TfArg<String>? serviceAccount;

  /// Per-Task timeout duration ("3.5s" form). Defaults to a 10-minute
  /// ceiling (API default).
  final TfArg<String>? timeout;

  /// Maximum retry attempts per Task. Defaults to 3.
  final TfArg<int>? maxRetries;

  /// `gen1` (legacy gVisor) or `gen2` (default; larger CPU tiers +
  /// GCSFuse).
  final TfArg<CloudRunV2JobExecutionEnvironment>? executionEnvironment;

  /// CMEK key name to encrypt the Task's container image.
  final TfArg<String>? encryptionKey;

  /// Disables GPU zonal redundancy for this Task.
  final TfArg<bool>? gpuZonalRedundancyDisabled;

  /// VPC connector or direct VPC egress configuration.
  final CloudRunV2JobVpcAccess? vpcAccess;

  /// Volumes available to all containers in the Task.
  final List<CloudRunV2JobVolume>? volumes;

  /// GPU accelerator pin.
  final CloudRunV2JobNodeSelector? nodeSelector;

  Map<String, Object?> toArgMap() => {
    'containers': containers.map((c) => c.toArgMap()).toList(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
    if (maxRetries != null) 'max_retries': maxRetries!.toTfJson(),
    if (executionEnvironment != null)
      'execution_environment': executionEnvironment!.toTfJson(),
    if (encryptionKey != null) 'encryption_key': encryptionKey!.toTfJson(),
    if (gpuZonalRedundancyDisabled != null)
      'gpu_zonal_redundancy_disabled': gpuZonalRedundancyDisabled!.toTfJson(),
    if (vpcAccess != null) 'vpc_access': [vpcAccess!.toArgMap()],
    if (volumes != null) 'volumes': volumes!.map((v) => v.toArgMap()).toList(),
    if (nodeSelector != null) 'node_selector': [nodeSelector!.toArgMap()],
  };
}

/// `template.template.vpc_access` block. Either pin a Serverless VPC
/// Access connector ([connector]) OR use direct VPC egress
/// ([networkInterfaces]) — the two conflict at the provider level.
@immutable
class CloudRunV2JobVpcAccess {
  const CloudRunV2JobVpcAccess({
    this.connector,
    this.egress,
    this.networkInterfaces,
  });

  /// Serverless VPC Access connector path. Conflicts with
  /// [networkInterfaces].
  final TfArg<String>? connector;

  /// Egress policy.
  final TfArg<CloudRunV2JobVpcAccessEgress>? egress;

  /// Direct VPC egress interfaces.
  final List<CloudRunV2JobVpcNetworkInterface>? networkInterfaces;

  Map<String, Object?> toArgMap() => {
    if (connector != null) 'connector': connector!.toTfJson(),
    if (egress != null) 'egress': egress!.toTfJson(),
    if (networkInterfaces != null)
      'network_interfaces': networkInterfaces!
          .map((n) => n.toArgMap())
          .toList(),
  };
}

/// One direct-VPC-egress interface under [CloudRunV2JobVpcAccess.networkInterfaces].
@immutable
class CloudRunV2JobVpcNetworkInterface {
  const CloudRunV2JobVpcNetworkInterface({
    this.network,
    this.subnetwork,
    this.tags,
  });

  /// VPC network self-link or short name.
  final TfArg<String>? network;

  /// VPC subnetwork self-link or short name.
  final TfArg<String>? subnetwork;

  /// Network tags applied to this Cloud Run Job.
  final TfArg<List<String>>? tags;

  Map<String, Object?> toArgMap() => {
    if (network != null) 'network': network!.toTfJson(),
    if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
  };
}

/// GPU accelerator selector (`template.template.node_selector`).
@immutable
class CloudRunV2JobNodeSelector {
  const CloudRunV2JobNodeSelector({required this.accelerator});

  /// Accelerator type, e.g. `'nvidia-l4'`.
  final TfArg<String> accelerator;

  Map<String, Object?> toArgMap() => {'accelerator': accelerator.toTfJson()};
}

// ===========================================================================
// Containers
// ===========================================================================

/// One entry in `template.template.containers`. At minimum supply
/// [image].
@immutable
class CloudRunV2JobContainer {
  const CloudRunV2JobContainer({
    required this.image,
    this.name,
    this.command,
    this.args,
    this.env,
    this.resources,
    this.ports,
    this.volumeMounts,
    this.workingDir,
    this.dependsOn,
    this.startupProbe,
  });

  /// Container image URL.
  final TfArg<String> image;

  /// DNS_LABEL container name. Required when running sidecars.
  final TfArg<String>? name;

  /// Entrypoint override.
  final TfArg<List<String>>? command;

  /// Argument override.
  final TfArg<List<String>>? args;

  /// Environment variables.
  final List<CloudRunV2JobEnvVar>? env;

  /// CPU / memory limits.
  final CloudRunV2JobContainerResources? resources;

  /// Container port (Cloud Run v2 supports exactly one per container).
  final CloudRunV2JobContainerPort? ports;

  /// Volume mounts — reference [CloudRunV2JobVolume.name].
  final List<CloudRunV2JobVolumeMount>? volumeMounts;

  /// Container working directory.
  final TfArg<String>? workingDir;

  /// Names of containers that must reach Ready before this one starts.
  final TfArg<List<String>>? dependsOn;

  /// Periodic probe that gates traffic until the container reports
  /// ready. Jobs surface `startup_probe` but not `liveness_probe` — once
  /// a Task is running the controller only waits for completion.
  final CloudRunV2JobStartupProbe? startupProbe;

  Map<String, Object?> toArgMap() => {
    'image': image.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (command != null) 'command': command!.toTfJson(),
    if (args != null) 'args': args!.toTfJson(),
    if (env != null) 'env': env!.map((e) => e.toArgMap()).toList(),
    if (resources != null) 'resources': [resources!.toArgMap()],
    if (ports != null) 'ports': [ports!.toArgMap()],
    if (volumeMounts != null)
      'volume_mounts': volumeMounts!.map((v) => v.toArgMap()).toList(),
    if (workingDir != null) 'working_dir': workingDir!.toTfJson(),
    if (dependsOn != null) 'depends_on': dependsOn!.toTfJson(),
    if (startupProbe != null) 'startup_probe': [startupProbe!.toArgMap()],
  };
}

/// One env var. Set [source] to inject a value (literal or secret-ref).
@immutable
class CloudRunV2JobEnvVar {
  const CloudRunV2JobEnvVar({required this.name, this.source});

  /// C_IDENTIFIER name.
  final TfArg<String> name;

  /// Value source. Pick exactly one of [CloudRunV2JobEnvVarFromLiteral] or
  /// [CloudRunV2JobEnvVarFromSecret].
  final CloudRunV2JobEnvVarSource? source;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    if (source != null) ...source!.encode(),
  };
}

/// Sealed dispatch for one [CloudRunV2JobEnvVar.source]. Models the
/// `value` / `value_source.secret_key_ref` exactly_one_of constraint at
/// the type level.
sealed class CloudRunV2JobEnvVarSource {
  const CloudRunV2JobEnvVarSource();

  /// Returns the JSON fragment to merge into [CloudRunV2JobEnvVar.toArgMap].
  Map<String, Object?> encode();
}

/// Literal env var value (`env.value`).
@immutable
final class CloudRunV2JobEnvVarFromLiteral extends CloudRunV2JobEnvVarSource {
  const CloudRunV2JobEnvVarFromLiteral(this.value);

  final TfArg<String> value;

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Secret-Manager backed env var (`env.value_source.secret_key_ref`).
/// Both [secret] and [version] are required by the Cloud Run v2 Job
/// schema.
@immutable
final class CloudRunV2JobEnvVarFromSecret extends CloudRunV2JobEnvVarSource {
  const CloudRunV2JobEnvVarFromSecret({
    required this.secret,
    required this.version,
  });

  final TfArg<String> secret;
  final TfArg<String> version;

  @override
  Map<String, Object?> encode() => {
    'value_source': [
      {
        'secret_key_ref': [
          {'secret': secret.toTfJson(), 'version': version.toTfJson()},
        ],
      },
    ],
  };
}

/// Container resource block (`resources`). Same shape as the
/// Service-side `ContainerResources` but excludes Service-only
/// cold-start knobs (`cpu_idle`, `startup_cpu_boost`) — Jobs run to
/// completion so neither applies.
@immutable
class CloudRunV2JobContainerResources {
  const CloudRunV2JobContainerResources({this.limits});

  /// Resource limits map. Recognized keys: `cpu`, `memory`,
  /// `nvidia.com/gpu`.
  final TfArg<Map<String, String>>? limits;

  Map<String, Object?> toArgMap() => {
    if (limits != null) 'limits': limits!.toTfJson(),
  };
}

/// Container port (`ports`). Cloud Run v2 supports exactly one port per
/// container.
@immutable
class CloudRunV2JobContainerPort {
  const CloudRunV2JobContainerPort({this.containerPort, this.name});

  /// TCP port number.
  final TfArg<int>? containerPort;

  /// Protocol selector. `'http1'` or `'h2c'`.
  final TfArg<String>? name;

  Map<String, Object?> toArgMap() => {
    if (containerPort != null) 'container_port': containerPort!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Volume mount entry.
@immutable
class CloudRunV2JobVolumeMount {
  const CloudRunV2JobVolumeMount({
    required this.name,
    required this.mountPath,
    this.subPath,
  });

  /// Volume name. Must match a [CloudRunV2JobVolume.name].
  final TfArg<String> name;

  /// Mount path inside the container.
  final TfArg<String> mountPath;

  /// Sub-path within the volume to expose.
  final TfArg<String>? subPath;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'mount_path': mountPath.toTfJson(),
    if (subPath != null) 'sub_path': subPath!.toTfJson(),
  };
}

// ===========================================================================
// Probes (Jobs ship startup_probe only). HTTP / TCP sub-blocks are typed;
// gRPC is intentionally an opaque map.
// ===========================================================================

/// `startup_probe` block. Gates the Task Ready signal during cold start.
/// Pick exactly one of [httpGet] / [tcpSocket] / [grpc].
@immutable
class CloudRunV2JobStartupProbe {
  const CloudRunV2JobStartupProbe({
    this.initialDelaySeconds,
    this.timeoutSeconds,
    this.periodSeconds,
    this.failureThreshold,
    this.httpGet,
    this.tcpSocket,
    this.grpc,
  });

  final TfArg<int>? initialDelaySeconds;
  final TfArg<int>? timeoutSeconds;
  final TfArg<int>? periodSeconds;
  final TfArg<int>? failureThreshold;
  final CloudRunV2JobHttpGetAction? httpGet;
  final CloudRunV2JobTcpSocketAction? tcpSocket;

  /// gRPC action — passed through as an opaque map for bounded coverage.
  /// Schema fields: `port` (int), `service` (string).
  final Map<String, Object?>? grpc;

  Map<String, Object?> toArgMap() => {
    if (initialDelaySeconds != null)
      'initial_delay_seconds': initialDelaySeconds!.toTfJson(),
    if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds!.toTfJson(),
    if (periodSeconds != null) 'period_seconds': periodSeconds!.toTfJson(),
    if (failureThreshold != null)
      'failure_threshold': failureThreshold!.toTfJson(),
    if (httpGet != null) 'http_get': [httpGet!.toArgMap()],
    if (tcpSocket != null) 'tcp_socket': [tcpSocket!.toArgMap()],
    if (grpc != null) 'grpc': [grpc],
  };
}

/// `http_get` probe action.
@immutable
class CloudRunV2JobHttpGetAction {
  const CloudRunV2JobHttpGetAction({this.path, this.port, this.httpHeaders});

  final TfArg<String>? path;
  final TfArg<int>? port;
  final List<CloudRunV2JobHttpHeader>? httpHeaders;

  Map<String, Object?> toArgMap() => {
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (httpHeaders != null)
      'http_headers': httpHeaders!.map((h) => h.toArgMap()).toList(),
  };
}

/// `tcp_socket` probe action.
@immutable
class CloudRunV2JobTcpSocketAction {
  const CloudRunV2JobTcpSocketAction({this.port});

  final TfArg<int>? port;

  Map<String, Object?> toArgMap() => {
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// One `http_headers` entry.
@immutable
class CloudRunV2JobHttpHeader {
  const CloudRunV2JobHttpHeader({required this.name, this.value});

  final TfArg<String> name;
  final TfArg<String>? value;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

// ===========================================================================
// Volumes (sealed source — secret / cloud_sql / empty_dir / gcs / nfs are
// mutually exclusive per the provider's commented exactly_one_of).
// ===========================================================================

/// One entry in `template.template.volumes`. Pick exactly one
/// [source] (sealed [CloudRunV2JobVolumeSource]).
@immutable
class CloudRunV2JobVolume {
  const CloudRunV2JobVolume({required this.name, required this.source});

  /// Volume name. Must be unique within the Task and match downstream
  /// [CloudRunV2JobVolumeMount.name].
  final TfArg<String> name;

  /// Backing storage.
  final CloudRunV2JobVolumeSource source;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    ...source.encode(),
  };
}

/// Sealed dispatch for [CloudRunV2JobVolume.source].
sealed class CloudRunV2JobVolumeSource {
  const CloudRunV2JobVolumeSource();

  Map<String, Object?> encode();
}

/// Secret Manager-backed volume.
@immutable
final class CloudRunV2JobVolumeSecret extends CloudRunV2JobVolumeSource {
  const CloudRunV2JobVolumeSecret({
    required this.secret,
    this.defaultMode,
    this.items,
  });

  final TfArg<String> secret;
  final TfArg<int>? defaultMode;
  final List<CloudRunV2JobSecretVolumeItem>? items;

  @override
  Map<String, Object?> encode() => {
    'secret': [
      {
        'secret': secret.toTfJson(),
        if (defaultMode != null) 'default_mode': defaultMode!.toTfJson(),
        if (items != null) 'items': items!.map((i) => i.toArgMap()).toList(),
      },
    ],
  };
}

/// One entry under [CloudRunV2JobVolumeSecret.items]. Both [path] and [version]
/// are required by the Cloud Run v2 Job schema.
@immutable
class CloudRunV2JobSecretVolumeItem {
  const CloudRunV2JobSecretVolumeItem({
    required this.path,
    required this.version,
    this.mode,
  });

  final TfArg<String> path;
  final TfArg<String> version;
  final TfArg<int>? mode;

  Map<String, Object?> toArgMap() => {
    'path': path.toTfJson(),
    'version': version.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
  };
}

/// Cloud SQL-backed volume.
@immutable
final class CloudRunV2JobCloudSqlVolume extends CloudRunV2JobVolumeSource {
  const CloudRunV2JobCloudSqlVolume({this.instances});

  /// Cloud SQL connection names: `{project}:{region}:{instance}`.
  final TfArg<List<String>>? instances;

  @override
  Map<String, Object?> encode() => {
    'cloud_sql_instance': [
      {if (instances != null) 'instances': instances!.toTfJson()},
    ],
  };
}

/// Ephemeral shared volume (`empty_dir`).
@immutable
final class CloudRunV2JobEmptyDirVolume extends CloudRunV2JobVolumeSource {
  const CloudRunV2JobEmptyDirVolume({this.medium, this.sizeLimit});

  final TfArg<CloudRunV2JobEmptyDirMedium>? medium;
  final TfArg<String>? sizeLimit;

  @override
  Map<String, Object?> encode() => {
    'empty_dir': [
      {
        if (medium != null) 'medium': medium!.toTfJson(),
        if (sizeLimit != null) 'size_limit': sizeLimit!.toTfJson(),
      },
    ],
  };
}

/// GCSFuse-backed volume.
@immutable
final class CloudRunV2JobGcsVolume extends CloudRunV2JobVolumeSource {
  const CloudRunV2JobGcsVolume({
    required this.bucket,
    this.readOnly,
    this.mountOptions,
  });

  final TfArg<String> bucket;
  final TfArg<bool>? readOnly;
  final TfArg<List<String>>? mountOptions;

  @override
  Map<String, Object?> encode() => {
    'gcs': [
      {
        'bucket': bucket.toTfJson(),
        if (readOnly != null) 'read_only': readOnly!.toTfJson(),
        if (mountOptions != null) 'mount_options': mountOptions!.toTfJson(),
      },
    ],
  };
}

/// NFS-mounted volume.
@immutable
final class CloudRunV2JobNfsVolume extends CloudRunV2JobVolumeSource {
  const CloudRunV2JobNfsVolume({
    required this.server,
    this.path,
    this.readOnly,
  });

  final TfArg<String> server;
  final TfArg<String>? path;
  final TfArg<bool>? readOnly;

  @override
  Map<String, Object?> encode() => {
    'nfs': [
      {
        'server': server.toTfJson(),
        if (path != null) 'path': path!.toTfJson(),
        if (readOnly != null) 'read_only': readOnly!.toTfJson(),
      },
    ],
  };
}

/// Factory wrapper for `google_cloud_run_v2_job` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Cloud Run v2 **Job** — a containerized batch workload that runs to
/// completion. Each apply provisions the Job definition; executions are
/// triggered separately (`gcloud run jobs execute`, Cloud Scheduler,
/// Eventarc, or the API). Unlike a [GoogleCloudRunV2Service], a Job has
/// no public URL and no traffic split — the unit of execution is a Task
/// (one container instance) replicated according to
/// [CloudRunV2JobTemplate.parallelism] and [CloudRunV2JobTemplate.taskCount].
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_cloud_run_v2_job.`).
/// - `name`: Job name (DNS_LABEL, lowercase, ≤63 chars).
/// - `location`: GCP region (e.g. `'asia-northeast1'`).
/// - `template`: required Job template ([CloudRunV2JobTemplate]). Wraps the inner
///   Task template ([CloudRunV2JobTemplate.template], a [CloudRunV2JobTaskTemplate]) which
///   itself holds the container set, volumes, VPC access, retries, etc.
///
/// Example (minimal one-shot batch job):
/// ```dart
/// final etl = GoogleCloudRunV2Job(
///   localName: 'etl',
///   name: TfArg.literal('nightly-etl'),
///   location: TfArg.literal('asia-northeast1'),
///   template: CloudRunV2JobTemplate(
///     template: CloudRunV2JobTaskTemplate(
///       containers: [
///         CloudRunV2JobContainer(
///           image: TfArg.literal('gcr.io/p/etl:v1'),
///         ),
///       ],
///     ),
///   ),
/// );
/// ```
///
/// Naming convention: helpers reuse the Cloud Run v2 Service shape but
/// carry a `Job` / `Task` prefix
/// (`CloudRunV2JobTemplate`, `CloudRunV2JobTaskTemplate`, `CloudRunV2JobContainer`,
/// `CloudRunV2JobBinaryAuthorization`, `CloudRunV2JobVolume`, `CloudRunV2JobVolumeSource`, ...) to
/// stay barrel-exportable alongside the Service helpers.
///
/// Composition pattern: extends `Resource<$GoogleCloudRunV2Job>` for
/// runtime behavior.
final class GoogleCloudRunV2Job extends Resource {
  static const String tfType = 'google_cloud_run_v2_job';

  GoogleCloudRunV2Job({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required CloudRunV2JobTemplate template,
    CloudRunV2JobBinaryAuthorization? binaryAuthorization,
    TfArg<CloudRunV2JobLaunchStage>? launchStage,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? client,
    TfArg<String>? clientVersion,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'template': TfArg.literal([template.toArgMap()]),
           if (binaryAuthorization != null)
             'binary_authorization': TfArg.literal([
               binaryAuthorization.toArgMap(),
             ]),
           if (launchStage != null) 'launch_stage': launchStage,
           if (labels != null) 'labels': labels,
           if (annotations != null) 'annotations': annotations,
           if (client != null) 'client': client,
           if (clientVersion != null) 'client_version': clientVersion,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2JobSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/locations/{location}/jobs/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to the `generation` attribute (server-side revision count).
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `observed_generation` (latest generation observed by
  /// the controller).
  TfRef<String> get observedGeneration =>
      TfRef.attribute<String>(this, 'observed_generation');

  /// Reference to `execution_count` — total number of executions that
  /// have ever run.
  TfRef<int> get executionCount =>
      TfRef.attribute<int>(this, 'execution_count');

  /// Reference to `latest_created_execution` — `{name, create_time,
  /// completion_time}` triple for the most recently created execution.
  TfRef<List<Object?>> get latestCreatedExecution =>
      TfRef.attribute<List<Object?>>(this, 'latest_created_execution');

  /// Reference to `uid` (server-assigned unique identifier).
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `etag` (used for optimistic concurrency).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute — region the job is deployed in.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');
}
