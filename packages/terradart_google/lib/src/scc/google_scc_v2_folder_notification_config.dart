// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_folder_notification_config`.
const Set<String> _googleSccV2FolderNotificationConfigSensitive = <String>{};

/// Typed helper for the `streaming_config` block of
/// `google_scc_v2_folder_notification_config` (derived from provider schema).
@immutable
final class SccV2FolderNotificationConfigStreamingConfig {
  const SccV2FolderNotificationConfigStreamingConfig({required this.filter});

  final TfArg<String> filter;

  Map<String, Object?> encode() => {'filter': filter.toTfJson()};
}

/// Factory wrapper for `google_scc_v2_folder_notification_config`.
///
/// This is a continuous export that exports findings to a Pub/Sub topic.
///
/// SCC v2 folder notification config — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccV2FolderNotificationConfig extends Resource {
  static const String tfType = 'google_scc_v2_folder_notification_config';

  GoogleSccV2FolderNotificationConfig({
    required super.localName,
    required TfArg<String> configId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> folder,
    TfArg<String>? location,
    required TfArg<String> pubsubTopic,
    required SccV2FolderNotificationConfigStreamingConfig streamingConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config_id': configId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'folder': folder,
           if (location != null) 'location': location,
           'pubsub_topic': pubsubTopic,
           'streaming_config': TfArg.literal(streamingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2FolderNotificationConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');
}
