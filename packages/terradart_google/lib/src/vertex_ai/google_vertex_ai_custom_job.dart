// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_custom_job`.
const Set<String> _googleVertexAiCustomJobSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobEncryptionSpec {
  const VertexAiCustomJobEncryptionSpec({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `job_spec` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobSpec {
  const VertexAiCustomJobSpec({
    this.enableDashboardAccess,
    this.enableWebAccess,
    this.network,
    this.reservedIpRanges,
    this.serviceAccount,
    this.tensorboard,
    this.baseOutputDirectory,
    this.pscInterfaceConfig,
    this.scheduling,
    required this.workerPoolSpecs,
  });

  final TfArg<bool>? enableDashboardAccess;

  final TfArg<bool>? enableWebAccess;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<List<String>>? reservedIpRanges;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? tensorboard;

  final VertexAiCustomJobBaseOutputDirectory? baseOutputDirectory;

  final VertexAiCustomJobPscInterfaceConfig? pscInterfaceConfig;

  final VertexAiCustomJobScheduling? scheduling;

  final List<VertexAiCustomJobWorkerPoolSpecs> workerPoolSpecs;

  @internal
  Map<String, Object?> encode() => {
    'enable_dashboard_access': ?enableDashboardAccess?.toTfJson(),
    'enable_web_access': ?enableWebAccess?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'reserved_ip_ranges': ?reservedIpRanges?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'tensorboard': ?tensorboard?.toTfJson(),
    'base_output_directory': ?baseOutputDirectory?.encode(),
    'psc_interface_config': ?pscInterfaceConfig?.encode(),
    'scheduling': ?scheduling?.encode(),
    'worker_pool_specs': [for (final e in workerPoolSpecs) e.encode()],
  };
}

/// Typed helper for the `job_spec.base_output_directory` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobBaseOutputDirectory {
  const VertexAiCustomJobBaseOutputDirectory({required this.outputUriPrefix});

  final TfArg<String> outputUriPrefix;

  @internal
  Map<String, Object?> encode() => {
    'output_uri_prefix': outputUriPrefix.toTfJson(),
  };
}

/// Typed helper for the `job_spec.psc_interface_config` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobPscInterfaceConfig {
  const VertexAiCustomJobPscInterfaceConfig({
    this.networkAttachment,
    this.dnsPeeringConfigs,
  });

  final TfArg<String>? networkAttachment;

  final List<VertexAiCustomJobDnsPeeringConfigs>? dnsPeeringConfigs;

  @internal
  Map<String, Object?> encode() => {
    'network_attachment': ?networkAttachment?.toTfJson(),
    if (dnsPeeringConfigs != null)
      'dns_peering_configs': [for (final e in dnsPeeringConfigs!) e.encode()],
  };
}

/// Typed helper for the `job_spec.psc_interface_config.dns_peering_configs` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobDnsPeeringConfigs {
  const VertexAiCustomJobDnsPeeringConfigs({
    required this.domain,
    required this.targetNetwork,
    required this.targetProject,
  });

  final TfArg<String> domain;

  final TfArg<String> targetNetwork;

  final TfArg<String> targetProject;

  @internal
  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'target_network': targetNetwork.toTfJson(),
    'target_project': targetProject.toTfJson(),
  };
}

/// Typed helper for the `job_spec.scheduling` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobScheduling {
  const VertexAiCustomJobScheduling({
    this.disableRetries,
    this.maxWaitDuration,
    this.restartJobOnWorkerRestart,
    this.strategy,
    this.timeout,
  });

  final TfArg<bool>? disableRetries;

  final TfArg<String>? maxWaitDuration;

  final TfArg<bool>? restartJobOnWorkerRestart;

  final VertexAiCustomJobStrategy? strategy;

  final TfArg<String>? timeout;

  @internal
  Map<String, Object?> encode() => {
    'disable_retries': ?disableRetries?.toTfJson(),
    'max_wait_duration': ?maxWaitDuration?.toTfJson(),
    'restart_job_on_worker_restart': ?restartJobOnWorkerRestart?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
  };
}

/// `strategy` — derived from the provider schema description.
extension type const VertexAiCustomJobStrategy._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiCustomJobStrategy.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiCustomJobStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiCustomJobStrategy.arg(TfArg<String> arg) : this._(arg);

  static const onDemand = VertexAiCustomJobStrategy._(
    TfArgLiteral('ON_DEMAND'),
  );
  static const lowCost = VertexAiCustomJobStrategy._(TfArgLiteral('LOW_COST'));
  static const standard = VertexAiCustomJobStrategy._(TfArgLiteral('STANDARD'));
  static const spot = VertexAiCustomJobStrategy._(TfArgLiteral('SPOT'));
  static const flexStart = VertexAiCustomJobStrategy._(
    TfArgLiteral('FLEX_START'),
  );

  static const List<VertexAiCustomJobStrategy> values = [
    onDemand,
    lowCost,
    standard,
    spot,
    flexStart,
  ];
}

/// Typed helper for the `job_spec.worker_pool_specs` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobWorkerPoolSpecs {
  const VertexAiCustomJobWorkerPoolSpecs({
    this.replicaCount,
    this.containerSpec,
    this.diskSpec,
    this.lustreMounts,
    this.machineSpec,
    this.nfsMounts,
    this.pythonPackageSpec,
  });

  final TfArg<num>? replicaCount;

  final VertexAiCustomJobContainerSpec? containerSpec;

  final VertexAiCustomJobDiskSpec? diskSpec;

  final List<VertexAiCustomJobLustreMounts>? lustreMounts;

  final VertexAiCustomJobMachineSpec? machineSpec;

  final List<VertexAiCustomJobNfsMounts>? nfsMounts;

  final VertexAiCustomJobPythonPackageSpec? pythonPackageSpec;

  @internal
  Map<String, Object?> encode() => {
    'replica_count': ?replicaCount?.toTfJson(),
    'container_spec': ?containerSpec?.encode(),
    'disk_spec': ?diskSpec?.encode(),
    if (lustreMounts != null)
      'lustre_mounts': [for (final e in lustreMounts!) e.encode()],
    'machine_spec': ?machineSpec?.encode(),
    if (nfsMounts != null)
      'nfs_mounts': [for (final e in nfsMounts!) e.encode()],
    'python_package_spec': ?pythonPackageSpec?.encode(),
  };
}

/// Typed helper for the `job_spec.worker_pool_specs.container_spec` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobContainerSpec {
  const VertexAiCustomJobContainerSpec({
    this.args,
    this.command,
    required this.imageUri,
    this.env,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<String> imageUri;

  final List<VertexAiCustomJobEnv>? env;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'image_uri': imageUri.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
  };
}

/// Typed helper for the `job_spec.worker_pool_specs.container_spec.env` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiCustomJobEnv {
  const VertexAiCustomJobEnv({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `job_spec.worker_pool_specs.disk_spec` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobDiskSpec {
  const VertexAiCustomJobDiskSpec({this.bootDiskSizeGb, this.bootDiskType});

  final TfArg<num>? bootDiskSizeGb;

  final VertexAiCustomJobBootDiskType? bootDiskType;

  @internal
  Map<String, Object?> encode() => {
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
  };
}

/// `boot_disk_type` — derived from the provider schema description.
extension type const VertexAiCustomJobBootDiskType._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiCustomJobBootDiskType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiCustomJobBootDiskType.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiCustomJobBootDiskType.arg(TfArg<String> arg) : this._(arg);

  static const pdSsd = VertexAiCustomJobBootDiskType._(TfArgLiteral('pd-ssd'));
  static const pdStandard = VertexAiCustomJobBootDiskType._(
    TfArgLiteral('pd-standard'),
  );
  static const pdBalanced = VertexAiCustomJobBootDiskType._(
    TfArgLiteral('pd-balanced'),
  );
  static const hyperdiskBalanced = VertexAiCustomJobBootDiskType._(
    TfArgLiteral('hyperdisk-balanced'),
  );

  static const List<VertexAiCustomJobBootDiskType> values = [
    pdSsd,
    pdStandard,
    pdBalanced,
    hyperdiskBalanced,
  ];
}

/// Typed helper for the `job_spec.worker_pool_specs.lustre_mounts` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobLustreMounts {
  const VertexAiCustomJobLustreMounts({
    required this.filesystem,
    required this.instanceIp,
    required this.mountPoint,
    required this.volumeHandle,
  });

  final TfArg<String> filesystem;

  final TfArg<String> instanceIp;

  final TfArg<String> mountPoint;

  final TfArg<String> volumeHandle;

  @internal
  Map<String, Object?> encode() => {
    'filesystem': filesystem.toTfJson(),
    'instance_ip': instanceIp.toTfJson(),
    'mount_point': mountPoint.toTfJson(),
    'volume_handle': volumeHandle.toTfJson(),
  };
}

/// Typed helper for the `job_spec.worker_pool_specs.machine_spec` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobMachineSpec {
  const VertexAiCustomJobMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
    this.tpuTopology,
    this.reservationAffinity,
  });

  final TfArg<num>? acceleratorCount;

  final VertexAiCustomJobAcceleratorType? acceleratorType;

  final TfArg<String>? machineType;

  final TfArg<String>? tpuTopology;

  final VertexAiCustomJobReservationAffinity? reservationAffinity;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'tpu_topology': ?tpuTopology?.toTfJson(),
    'reservation_affinity': ?reservationAffinity?.encode(),
  };
}

/// `accelerator_type` — derived from the provider schema description.
extension type const VertexAiCustomJobAcceleratorType._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiCustomJobAcceleratorType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiCustomJobAcceleratorType.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiCustomJobAcceleratorType.arg(TfArg<String> arg) : this._(arg);

  static const nvidiaTeslaK80 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_K80'),
  );
  static const nvidiaTeslaP100 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_P100'),
  );
  static const nvidiaTeslaV100 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_V100'),
  );
  static const nvidiaTeslaP4 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_P4'),
  );
  static const nvidiaTeslaT4 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_T4'),
  );
  static const nvidiaTeslaA100 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_A100'),
  );
  static const nvidiaA10080gb = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_A100_80GB'),
  );
  static const nvidiaL4 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_L4'),
  );
  static const nvidiaH10080gb = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_H100_80GB'),
  );
  static const nvidiaH100Mega80gb = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_H100_MEGA_80GB'),
  );
  static const nvidiaH200141gb = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_H200_141GB'),
  );
  static const nvidiaB200 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_B200'),
  );
  static const nvidiaGb200 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_GB200'),
  );
  static const nvidiaRtxPro6000 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('NVIDIA_RTX_PRO_6000'),
  );
  static const tpuV2 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('TPU_V2'),
  );
  static const tpuV3 = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('TPU_V3'),
  );
  static const tpuV4Pod = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('TPU_V4_POD'),
  );
  static const tpuV5Litepod = VertexAiCustomJobAcceleratorType._(
    TfArgLiteral('TPU_V5_LITEPOD'),
  );

  static const List<VertexAiCustomJobAcceleratorType> values = [
    nvidiaTeslaK80,
    nvidiaTeslaP100,
    nvidiaTeslaV100,
    nvidiaTeslaP4,
    nvidiaTeslaT4,
    nvidiaTeslaA100,
    nvidiaA10080gb,
    nvidiaL4,
    nvidiaH10080gb,
    nvidiaH100Mega80gb,
    nvidiaH200141gb,
    nvidiaB200,
    nvidiaGb200,
    nvidiaRtxPro6000,
    tpuV2,
    tpuV3,
    tpuV4Pod,
    tpuV5Litepod,
  ];
}

/// Typed helper for the `job_spec.worker_pool_specs.machine_spec.reservation_affinity` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobReservationAffinity {
  const VertexAiCustomJobReservationAffinity({
    this.key,
    required this.reservationAffinityType,
    this.values,
  });

  final TfArg<String>? key;

  final VertexAiCustomJobReservationAffinityType reservationAffinityType;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'reservation_affinity_type': reservationAffinityType.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `reservation_affinity_type` — derived from the provider schema description.
extension type const VertexAiCustomJobReservationAffinityType._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiCustomJobReservationAffinityType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiCustomJobReservationAffinityType.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiCustomJobReservationAffinityType.arg(TfArg<String> arg)
    : this._(arg);

  static const noReservation = VertexAiCustomJobReservationAffinityType._(
    TfArgLiteral('NO_RESERVATION'),
  );
  static const anyReservation = VertexAiCustomJobReservationAffinityType._(
    TfArgLiteral('ANY_RESERVATION'),
  );
  static const specificReservation = VertexAiCustomJobReservationAffinityType._(
    TfArgLiteral('SPECIFIC_RESERVATION'),
  );

  static const List<VertexAiCustomJobReservationAffinityType> values = [
    noReservation,
    anyReservation,
    specificReservation,
  ];
}

/// Typed helper for the `job_spec.worker_pool_specs.nfs_mounts` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobNfsMounts {
  const VertexAiCustomJobNfsMounts({
    required this.mountPoint,
    required this.path,
    required this.server,
  });

  final TfArg<String> mountPoint;

  final TfArg<String> path;

  final TfArg<String> server;

  @internal
  Map<String, Object?> encode() => {
    'mount_point': mountPoint.toTfJson(),
    'path': path.toTfJson(),
    'server': server.toTfJson(),
  };
}

/// Typed helper for the `job_spec.worker_pool_specs.python_package_spec` block of
/// `google_vertex_ai_custom_job` (derived from provider schema).
@immutable
final class VertexAiCustomJobPythonPackageSpec {
  const VertexAiCustomJobPythonPackageSpec({
    this.args,
    required this.executorImageUri,
    required this.packageUris,
    required this.pythonModule,
    this.env,
  });

  final TfArg<List<String>>? args;

  final TfArg<String> executorImageUri;

  final TfArg<List<String>> packageUris;

  final TfArg<String> pythonModule;

  final List<VertexAiCustomJobEnv>? env;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'executor_image_uri': executorImageUri.toTfJson(),
    'package_uris': packageUris.toTfJson(),
    'python_module': pythonModule.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
  };
}

/// Factory wrapper for `google_vertex_ai_custom_job`.
///
/// Represents a job that runs custom workloads such as a Docker container or a
/// Python package. A CustomJob can have multiple worker pools and each worker
/// pool can have its own machine and input spec. A CustomJob will be cleaned up
/// once the job enters terminal state (failed or succeeded).
final class GoogleVertexAiCustomJob extends Resource {
  static const String tfType = 'google_vertex_ai_custom_job';

  GoogleVertexAiCustomJob(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    required TfArg<String> region,
    VertexAiCustomJobEncryptionSpec? encryptionSpec,
    required VertexAiCustomJobSpec jobSpec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'labels': ?labels,
           'project': ?project,
           'region': region,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           'job_spec': TfArg.literal(jobSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiCustomJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiCustomJob>`.
  RefTo<GoogleVertexAiCustomJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `error` attribute.
  TfRef<List<Map<String, Object?>>> get error =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `web_access_uris` attribute.
  TfRef<Map<String, String>> get webAccessUris =>
      TfRef.attribute<Map<String, String>>(this, 'web_access_uris');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
