// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_wasm_plugin`.
const Set<String> _googleNetworkServicesWasmPluginSensitive = <String>{};

/// Typed helper for the `log_config` block of
/// `google_network_services_wasm_plugin` (derived from provider schema).
@immutable
final class NetworkServicesWasmPluginLogConfig {
  const NetworkServicesWasmPluginLogConfig({
    this.enable,
    this.minLogLevel,
    this.sampleRate,
  });

  final TfArg<bool>? enable;

  final TfArg<NetworkServicesWasmPluginLogConfigMinLogLevel>? minLogLevel;

  final TfArg<num>? sampleRate;

  Map<String, Object?> encode() => {
    if (enable != null) 'enable': enable!.toTfJson(),
    if (minLogLevel != null) 'min_log_level': minLogLevel!.toTfJson(),
    if (sampleRate != null) 'sample_rate': sampleRate!.toTfJson(),
  };
}

/// `min_log_level` — derived from the provider schema description.
enum NetworkServicesWasmPluginLogConfigMinLogLevel implements TerraformEnum {
  logLevelUnspecified('LOG_LEVEL_UNSPECIFIED'),
  trace('TRACE'),
  debug('DEBUG'),
  info('INFO'),
  warn('WARN'),
  error('ERROR'),
  critical('CRITICAL');

  const NetworkServicesWasmPluginLogConfigMinLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `versions` block of
/// `google_network_services_wasm_plugin` (derived from provider schema).
@immutable
final class NetworkServicesWasmPluginVersions {
  const NetworkServicesWasmPluginVersions({
    this.description,
    this.imageUri,
    this.labels,
    this.pluginConfigData,
    this.pluginConfigUri,
    required this.versionName,
  });

  final TfArg<String>? description;

  final TfArg<String>? imageUri;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? pluginConfigData;

  final TfArg<String>? pluginConfigUri;

  final TfArg<String> versionName;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (imageUri != null) 'image_uri': imageUri!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (pluginConfigData != null)
      'plugin_config_data': pluginConfigData!.toTfJson(),
    if (pluginConfigUri != null)
      'plugin_config_uri': pluginConfigUri!.toTfJson(),
    'version_name': versionName.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_wasm_plugin`.
///
/// WasmPlugin is a resource representing a service executing a
/// customer-provided Wasm module.
///
/// Network Services Wasm plugin metadata — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleNetworkServicesWasmPlugin extends Resource {
  static const String tfType = 'google_network_services_wasm_plugin';

  GoogleNetworkServicesWasmPlugin({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? location,
    required TfArg<String> mainVersionId,
    required TfArg<String> name,
    TfArg<String>? project,
    NetworkServicesWasmPluginLogConfig? logConfig,
    required List<NetworkServicesWasmPluginVersions> versions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (location != null) 'location': location,
           'main_version_id': mainVersionId,
           'name': name,
           if (project != null) 'project': project,
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           'versions': TfArg.literal([for (final e in versions) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesWasmPluginSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `used_by` attribute.
  TfRef<List<Map<String, Object?>>> get usedBy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'used_by');
}
