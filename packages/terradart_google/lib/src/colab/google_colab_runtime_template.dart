// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_colab_runtime_template`.
const Set<String> _googleColabRuntimeTemplateSensitive = <String>{};

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

  GoogleColabRuntimeTemplate({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> displayName,
    TfArg<String>? name,
    TfArg<String>? description,
    TfArg<Map<String, dynamic>>? machineSpec,
    TfArg<Map<String, dynamic>>? networkSpec,
    TfArg<Map<String, dynamic>>? dataPersistentDiskSpec,
    TfArg<Map<String, dynamic>>? idleShutdownConfig,
    TfArg<Map<String, dynamic>>? softwareConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
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
           'machine_spec': ?machineSpec,
           'network_spec': ?networkSpec,
           'data_persistent_disk_spec': ?dataPersistentDiskSpec,
           'idle_shutdown_config': ?idleShutdownConfig,
           'software_config': ?softwareConfig,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleColabRuntimeTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleColabRuntimeTemplate>`.
  RefTo<GoogleColabRuntimeTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
