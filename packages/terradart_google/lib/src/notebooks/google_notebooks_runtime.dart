// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_notebooks_runtime`.
const Set<String> _googleNotebooksRuntimeSensitive = <String>{};

/// Notebooks Runtime enum for `state`.
enum NotebooksRuntimeState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  starting('STARTING'),
  provisioning('PROVISIONING'),
  active('ACTIVE'),
  stopping('STOPPING'),
  stopped('STOPPED'),
  deleting('DELETING'),
  upgrading('UPGRADING'),
  initializing('INITIALIZING');

  const NotebooksRuntimeState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `access_config` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeAccessConfig {
  const NotebooksRuntimeAccessConfig({this.accessType, this.runtimeOwner});

  final TfArg<String>? accessType;

  final TfArg<String>? runtimeOwner;

  Map<String, Object?> encode() => {
    if (accessType != null) 'access_type': accessType!.toTfJson(),
    if (runtimeOwner != null) 'runtime_owner': runtimeOwner!.toTfJson(),
  };
}

/// Typed helper for the `software_config` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeSoftwareConfig {
  const NotebooksRuntimeSoftwareConfig({
    this.customGpuDriverPath,
    this.enableHealthMonitoring,
    this.idleShutdown,
    this.idleShutdownTimeout,
    this.installGpuDriver,
    this.notebookUpgradeSchedule,
    this.postStartupScript,
    this.postStartupScriptBehavior,
    this.kernels,
  });

  final TfArg<String>? customGpuDriverPath;

  final TfArg<bool>? enableHealthMonitoring;

  final TfArg<bool>? idleShutdown;

  final TfArg<num>? idleShutdownTimeout;

  final TfArg<bool>? installGpuDriver;

  final TfArg<String>? notebookUpgradeSchedule;

  final TfArg<String>? postStartupScript;

  final TfArg<NotebooksRuntimeSoftwareConfigPostStartupScriptBehavior>?
  postStartupScriptBehavior;

  final List<NotebooksRuntimeSoftwareConfigKernels>? kernels;

  Map<String, Object?> encode() => {
    if (customGpuDriverPath != null)
      'custom_gpu_driver_path': customGpuDriverPath!.toTfJson(),
    if (enableHealthMonitoring != null)
      'enable_health_monitoring': enableHealthMonitoring!.toTfJson(),
    if (idleShutdown != null) 'idle_shutdown': idleShutdown!.toTfJson(),
    if (idleShutdownTimeout != null)
      'idle_shutdown_timeout': idleShutdownTimeout!.toTfJson(),
    if (installGpuDriver != null)
      'install_gpu_driver': installGpuDriver!.toTfJson(),
    if (notebookUpgradeSchedule != null)
      'notebook_upgrade_schedule': notebookUpgradeSchedule!.toTfJson(),
    if (postStartupScript != null)
      'post_startup_script': postStartupScript!.toTfJson(),
    if (postStartupScriptBehavior != null)
      'post_startup_script_behavior': postStartupScriptBehavior!.toTfJson(),
    if (kernels != null) 'kernels': [for (final e in kernels!) e.encode()],
  };
}

/// `post_startup_script_behavior` — derived from the provider schema description.
enum NotebooksRuntimeSoftwareConfigPostStartupScriptBehavior
    implements TerraformEnum {
  postStartupScriptBehaviorUnspecified(
    'POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED',
  ),
  runEveryStart('RUN_EVERY_START'),
  downloadAndRunEveryStart('DOWNLOAD_AND_RUN_EVERY_START');

  const NotebooksRuntimeSoftwareConfigPostStartupScriptBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `software_config.kernels` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeSoftwareConfigKernels {
  const NotebooksRuntimeSoftwareConfigKernels({
    required this.repository,
    this.tag,
  });

  final TfArg<String> repository;

  final TfArg<String>? tag;

  Map<String, Object?> encode() => {
    'repository': repository.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
  };
}

/// Typed helper for the `virtual_machine` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeVirtualMachine {
  const NotebooksRuntimeVirtualMachine({this.virtualMachineConfig});

  final NotebooksRuntimeVirtualMachineVirtualMachineConfig?
  virtualMachineConfig;

  Map<String, Object?> encode() => {
    if (virtualMachineConfig != null)
      'virtual_machine_config': virtualMachineConfig!.encode(),
  };
}

/// Typed helper for the `virtual_machine.virtual_machine_config` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeVirtualMachineVirtualMachineConfig {
  const NotebooksRuntimeVirtualMachineVirtualMachineConfig({
    this.internalIpOnly,
    this.labels,
    required this.machineType,
    this.metadata,
    this.network,
    this.nicType,
    this.reservedIpRange,
    this.subnet,
    this.tags,
    this.acceleratorConfig,
    this.containerImages,
    required this.dataDisk,
    this.encryptionConfig,
    this.shieldedInstanceConfig,
  });

  final TfArg<bool>? internalIpOnly;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> machineType;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String>? network;

  final TfArg<NotebooksRuntimeVirtualMachineVirtualMachineConfigNicType>?
  nicType;

  final TfArg<String>? reservedIpRange;

  final TfArg<String>? subnet;

  final TfArg<List<Object?>>? tags;

  final NotebooksRuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig?
  acceleratorConfig;

  final List<NotebooksRuntimeVirtualMachineVirtualMachineConfigContainerImages>?
  containerImages;

  final NotebooksRuntimeVirtualMachineVirtualMachineConfigDataDisk dataDisk;

  final NotebooksRuntimeVirtualMachineVirtualMachineConfigEncryptionConfig?
  encryptionConfig;

  final NotebooksRuntimeVirtualMachineVirtualMachineConfigShieldedInstanceConfig?
  shieldedInstanceConfig;

  Map<String, Object?> encode() => {
    if (internalIpOnly != null) 'internal_ip_only': internalIpOnly!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    'machine_type': machineType.toTfJson(),
    if (metadata != null) 'metadata': metadata!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (nicType != null) 'nic_type': nicType!.toTfJson(),
    if (reservedIpRange != null)
      'reserved_ip_range': reservedIpRange!.toTfJson(),
    if (subnet != null) 'subnet': subnet!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (acceleratorConfig != null)
      'accelerator_config': acceleratorConfig!.encode(),
    if (containerImages != null)
      'container_images': [for (final e in containerImages!) e.encode()],
    'data_disk': dataDisk.encode(),
    if (encryptionConfig != null)
      'encryption_config': encryptionConfig!.encode(),
    if (shieldedInstanceConfig != null)
      'shielded_instance_config': shieldedInstanceConfig!.encode(),
  };
}

/// `nic_type` — derived from the provider schema description.
enum NotebooksRuntimeVirtualMachineVirtualMachineConfigNicType
    implements TerraformEnum {
  unspecifiedNicType('UNSPECIFIED_NIC_TYPE'),
  virtioNet('VIRTIO_NET'),
  gvnic('GVNIC');

  const NotebooksRuntimeVirtualMachineVirtualMachineConfigNicType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `virtual_machine.virtual_machine_config.accelerator_config` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig {
  const NotebooksRuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig({
    this.coreCount,
    this.type,
  });

  final TfArg<num>? coreCount;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (coreCount != null) 'core_count': coreCount!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `virtual_machine.virtual_machine_config.container_images` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeVirtualMachineVirtualMachineConfigContainerImages {
  const NotebooksRuntimeVirtualMachineVirtualMachineConfigContainerImages({
    required this.repository,
    this.tag,
  });

  final TfArg<String> repository;

  final TfArg<String>? tag;

  Map<String, Object?> encode() => {
    'repository': repository.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
  };
}

/// Typed helper for the `virtual_machine.virtual_machine_config.data_disk` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeVirtualMachineVirtualMachineConfigDataDisk {
  const NotebooksRuntimeVirtualMachineVirtualMachineConfigDataDisk({
    this.interface,
    this.mode,
    this.source,
    this.type,
    this.initializeParams,
  });

  final TfArg<String>? interface;

  final TfArg<String>? mode;

  final TfArg<String>? source;

  final TfArg<String>? type;

  final NotebooksRuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams?
  initializeParams;

  Map<String, Object?> encode() => {
    if (interface != null) 'interface': interface!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (source != null) 'source': source!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (initializeParams != null)
      'initialize_params': initializeParams!.encode(),
  };
}

/// Typed helper for the `virtual_machine.virtual_machine_config.data_disk.initialize_params` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams {
  const NotebooksRuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams({
    this.description,
    this.diskName,
    this.diskSizeGb,
    this.diskType,
    this.labels,
  });

  final TfArg<String>? description;

  final TfArg<String>? diskName;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (diskName != null) 'disk_name': diskName!.toTfJson(),
    if (diskSizeGb != null) 'disk_size_gb': diskSizeGb!.toTfJson(),
    if (diskType != null) 'disk_type': diskType!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
  };
}

/// Typed helper for the `virtual_machine.virtual_machine_config.encryption_config` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeVirtualMachineVirtualMachineConfigEncryptionConfig {
  const NotebooksRuntimeVirtualMachineVirtualMachineConfigEncryptionConfig({
    this.kmsKey,
  });

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
  };
}

/// Typed helper for the `virtual_machine.virtual_machine_config.shielded_instance_config` block of
/// `google_notebooks_runtime` (derived from provider schema).
@immutable
final class NotebooksRuntimeVirtualMachineVirtualMachineConfigShieldedInstanceConfig {
  const NotebooksRuntimeVirtualMachineVirtualMachineConfigShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  Map<String, Object?> encode() => {
    if (enableIntegrityMonitoring != null)
      'enable_integrity_monitoring': enableIntegrityMonitoring!.toTfJson(),
    if (enableSecureBoot != null)
      'enable_secure_boot': enableSecureBoot!.toTfJson(),
    if (enableVtpm != null) 'enable_vtpm': enableVtpm!.toTfJson(),
  };
}

/// Factory wrapper for `google_notebooks_runtime`.
///
/// A Cloud AI Platform Notebook runtime.
///
/// ~> **Note:** Due to limitations of the Notebooks Runtime API, many fields in
/// this resource do not properly detect drift. These fields will also not
/// appear in state once imported.
///
/// Vertex AI Workbench (Notebooks) **runtime** — a managed notebook
/// environment (Compute Engine VM under the hood).
///
/// **Cost:** same Notebooks billing surface as
/// [GoogleNotebooksInstance] (`D73B-5EEA-8215` management fee + GCE
/// usage while the runtime VM runs). Destroy stops charges. Too
/// expensive for apply-smoke — factories ship without a quickstart.
///
/// Configure [virtualMachine] (and optional [accessConfig] /
/// [softwareConfig]). Enable `notebooks.googleapis.com` via
/// [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleNotebooksRuntime(
///   localName: 'rt',
///   name: TfArg.literal('terradart-nb-rt'),
///   location: TfArg.literal('us-central1'),
///   virtualMachine: NotebooksRuntimeVirtualMachine(
///     virtualMachineConfig: NotebooksRuntimeVirtualMachineVirtualMachineConfig(
///       machineType: TfArg.literal('n1-standard-4'),
///       dataDisk: NotebooksRuntimeVirtualMachineVirtualMachineConfigDataDisk(
///         initializeParams:
///             NotebooksRuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams(
///           diskSizeGb: TfArg.literal(100),
///         ),
///       ),
///     ),
///   ),
/// );
/// ```
final class GoogleNotebooksRuntime extends Resource {
  static const String tfType = 'google_notebooks_runtime';

  GoogleNotebooksRuntime({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    NotebooksRuntimeVirtualMachine? virtualMachine,
    NotebooksRuntimeAccessConfig? accessConfig,
    NotebooksRuntimeSoftwareConfig? softwareConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (virtualMachine != null)
             'virtual_machine': TfArg.literal(virtualMachine.encode()),
           if (accessConfig != null)
             'access_config': TfArg.literal(accessConfig.encode()),
           if (softwareConfig != null)
             'software_config': TfArg.literal(softwareConfig.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNotebooksRuntimeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `health_state` attribute.
  TfRef<String> get healthState =>
      TfRef.attribute<String>(this, 'health_state');

  /// Reference to `metrics` attribute.
  TfRef<List<Map<String, Object?>>> get metrics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metrics');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
