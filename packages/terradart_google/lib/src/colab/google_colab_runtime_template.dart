// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_colab_runtime_template`.
const Set<String> _googleColabRuntimeTemplateSensitive = <String>{};

/// Typed helper for the `data_persistent_disk_spec` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateDataPersistentDiskSpec {
  const ColabRuntimeTemplateDataPersistentDiskSpec({
    this.diskSizeGb,
    this.diskType,
  });

  final TfArg<String>? diskSizeGb;

  final TfArg<String>? diskType;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
  };
}

/// Typed helper for the `encryption_spec` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateEncryptionSpec {
  const ColabRuntimeTemplateEncryptionSpec({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `euc_config` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateEucConfig {
  const ColabRuntimeTemplateEucConfig({this.eucDisabled});

  final TfArg<bool>? eucDisabled;

  Map<String, Object?> encode() => {'euc_disabled': ?eucDisabled?.toTfJson()};
}

/// Typed helper for the `idle_shutdown_config` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateIdleShutdownConfig {
  const ColabRuntimeTemplateIdleShutdownConfig({this.idleTimeout});

  final TfArg<String>? idleTimeout;

  Map<String, Object?> encode() => {'idle_timeout': ?idleTimeout?.toTfJson()};
}

/// Typed helper for the `machine_spec` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateMachineSpec {
  const ColabRuntimeTemplateMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  final TfArg<String>? machineType;

  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
  };
}

/// Typed helper for the `network_spec` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateNetworkSpec {
  const ColabRuntimeTemplateNetworkSpec({
    this.enableInternetAccess,
    this.network,
    this.subnetwork,
  });

  final TfArg<bool>? enableInternetAccess;

  final RefTo<GoogleComputeNetwork>? network;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  Map<String, Object?> encode() => {
    'enable_internet_access': ?enableInternetAccess?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `shielded_vm_config` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateShieldedVmConfig {
  const ColabRuntimeTemplateShieldedVmConfig({this.enableSecureBoot});

  final TfArg<bool>? enableSecureBoot;

  Map<String, Object?> encode() => {
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
  };
}

/// Typed helper for the `software_config` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateSoftwareConfig {
  const ColabRuntimeTemplateSoftwareConfig({
    this.colabImage,
    this.env,
    this.postStartupScriptConfig,
  });

  final ColabRuntimeTemplateColabImage? colabImage;

  final List<ColabRuntimeTemplateEnv>? env;

  final ColabRuntimeTemplatePostStartupScriptConfig? postStartupScriptConfig;

  Map<String, Object?> encode() => {
    'colab_image': ?colabImage?.encode(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    'post_startup_script_config': ?postStartupScriptConfig?.encode(),
  };
}

/// Typed helper for the `software_config.colab_image` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateColabImage {
  const ColabRuntimeTemplateColabImage({this.releaseName});

  final TfArg<String>? releaseName;

  Map<String, Object?> encode() => {'release_name': ?releaseName?.toTfJson()};
}

/// Typed helper for the `software_config.env` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateEnv {
  const ColabRuntimeTemplateEnv({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `software_config.post_startup_script_config` block of
/// `google_colab_runtime_template` (derived from provider schema).
@immutable
final class ColabRuntimeTemplatePostStartupScriptConfig {
  const ColabRuntimeTemplatePostStartupScriptConfig({
    this.postStartupScript,
    this.postStartupScriptBehavior,
    this.postStartupScriptUrl,
  });

  final TfArg<String>? postStartupScript;

  final TfArg<ColabRuntimeTemplatePostStartupScriptBehavior>?
  postStartupScriptBehavior;

  final TfArg<String>? postStartupScriptUrl;

  Map<String, Object?> encode() => {
    'post_startup_script': ?postStartupScript?.toTfJson(),
    'post_startup_script_behavior': ?postStartupScriptBehavior?.toTfJson(),
    'post_startup_script_url': ?postStartupScriptUrl?.toTfJson(),
  };
}

/// `post_startup_script_behavior` — derived from the provider schema description.
enum ColabRuntimeTemplatePostStartupScriptBehavior implements TerraformEnum {
  runOnce('RUN_ONCE'),
  runEveryStart('RUN_EVERY_START'),
  downloadAndRunEveryStart('DOWNLOAD_AND_RUN_EVERY_START');

  const ColabRuntimeTemplatePostStartupScriptBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_colab_runtime_template`.
///
/// 'A runtime template is a VM configuration that specifies a machine type and
/// other characteristics of the VM, as well as common settings such as the
/// network and whether public internet access is enabled. When you create a
/// runtime, its VM is created according to the specifications of a runtime
/// template.'
///
/// Colab Enterprise runtime template — a reusable VM shape for notebook
/// runtimes (machine type, network, disk, software).
///
/// Enable `aiplatform.googleapis.com` via [GoogleProjectService] before
/// apply. Creating a template does not start a VM; pair with
/// [GoogleColabSchedule] (paused) or a runtime when you need execution.
final class GoogleColabRuntimeTemplate extends Resource {
  static const String tfType = 'google_colab_runtime_template';

  GoogleColabRuntimeTemplate(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> displayName,
    TfArg<String>? name,
    TfArg<String>? description,
    ColabRuntimeTemplateMachineSpec? machineSpec,
    ColabRuntimeTemplateNetworkSpec? networkSpec,
    ColabRuntimeTemplateDataPersistentDiskSpec? dataPersistentDiskSpec,
    ColabRuntimeTemplateIdleShutdownConfig? idleShutdownConfig,
    ColabRuntimeTemplateSoftwareConfig? softwareConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<List<String>>? networkTags,
    ColabRuntimeTemplateEncryptionSpec? encryptionSpec,
    ColabRuntimeTemplateEucConfig? eucConfig,
    ColabRuntimeTemplateShieldedVmConfig? shieldedVmConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'display_name': displayName,
           'name': ?name,
           'description': ?description,
           if (machineSpec != null)
             'machine_spec': TfArg.literal(machineSpec.encode()),
           if (networkSpec != null)
             'network_spec': TfArg.literal(networkSpec.encode()),
           if (dataPersistentDiskSpec != null)
             'data_persistent_disk_spec': TfArg.literal(
               dataPersistentDiskSpec.encode(),
             ),
           if (idleShutdownConfig != null)
             'idle_shutdown_config': TfArg.literal(idleShutdownConfig.encode()),
           if (softwareConfig != null)
             'software_config': TfArg.literal(softwareConfig.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'network_tags': ?networkTags,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (eucConfig != null)
             'euc_config': TfArg.literal(eucConfig.encode()),
           if (shieldedVmConfig != null)
             'shielded_vm_config': TfArg.literal(shieldedVmConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleColabRuntimeTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleColabRuntimeTemplate>`.
  RefTo<GoogleColabRuntimeTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_tags` attribute.
  TfRef<List<String>> get networkTags =>
      TfRef.attribute<List<String>>(this, 'network_tags');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
