// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_extensions_instance`.
const Set<String> _googleFirebaseExtensionsInstanceSensitive = <String>{};

/// Firebase Extensions Instance enum for `state`.
enum FirebaseExtensionsInstanceState implements TerraformEnum {
  deploying('DEPLOYING'),
  uninstalling('UNINSTALLING'),
  active('ACTIVE'),
  errored('ERRORED'),
  paused('PAUSED');

  const FirebaseExtensionsInstanceState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config` block of
/// `google_firebase_extensions_instance` (derived from provider schema).
@immutable
final class FirebaseExtensionsInstanceConfig {
  const FirebaseExtensionsInstanceConfig({
    this.allowedEventTypes,
    this.eventarcChannel,
    required this.extensionRef,
    this.extensionVersion,
    required this.params,
    this.systemParams,
  });

  final TfArg<List<Object?>>? allowedEventTypes;

  final TfArg<String>? eventarcChannel;

  final TfArg<String> extensionRef;

  final TfArg<String>? extensionVersion;

  final TfArg<Map<String, String>> params;

  final TfArg<Map<String, String>>? systemParams;

  Map<String, Object?> encode() => {
    if (allowedEventTypes != null)
      'allowed_event_types': allowedEventTypes!.toTfJson(),
    if (eventarcChannel != null)
      'eventarc_channel': eventarcChannel!.toTfJson(),
    'extension_ref': extensionRef.toTfJson(),
    if (extensionVersion != null)
      'extension_version': extensionVersion!.toTfJson(),
    'params': params.toTfJson(),
    if (systemParams != null) 'system_params': systemParams!.toTfJson(),
  };
}

/// Factory wrapper for `google_firebase_extensions_instance`.
///
/// An Instance is an installation of an Extension into a user's project.
final class GoogleFirebaseExtensionsInstance extends Resource {
  static const String tfType = 'google_firebase_extensions_instance';

  GoogleFirebaseExtensionsInstance({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> instanceId,
    TfArg<String>? project,
    required FirebaseExtensionsInstanceConfig config,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'instance_id': instanceId,
           if (project != null) 'project': project,
           'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseExtensionsInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseExtensionsInstance>`.
  RefTo<GoogleFirebaseExtensionsInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `error_status` attribute.
  TfRef<List<Map<String, Object?>>> get errorStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error_status');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `last_operation_name` attribute.
  TfRef<String> get lastOperationName =>
      TfRef.attribute<String>(this, 'last_operation_name');

  /// Reference to `last_operation_type` attribute.
  TfRef<String> get lastOperationType =>
      TfRef.attribute<String>(this, 'last_operation_type');

  /// Reference to `runtime_data` attribute.
  TfRef<List<Map<String, Object?>>> get runtimeData =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'runtime_data');

  /// Reference to `service_account_email` attribute.
  TfRef<String> get serviceAccountEmail =>
      TfRef.attribute<String>(this, 'service_account_email');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
