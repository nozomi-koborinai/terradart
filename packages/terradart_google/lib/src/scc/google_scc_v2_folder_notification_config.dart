// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

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
    required RefTo<GooglePubsubTopic> pubsubTopic,
    required SccV2FolderNotificationConfigStreamingConfig streamingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config_id': configId,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'folder': folder,
           'location': ?location,
           'pubsub_topic': pubsubTopic.encodeAs('id'),
           'streaming_config': TfArg.literal(streamingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2FolderNotificationConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccV2FolderNotificationConfig>`.
  RefTo<GoogleSccV2FolderNotificationConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `config_id` attribute.
  TfRef<String> get configIdRef => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `folder` attribute.
  TfRef<String> get folderRef => TfRef.attribute<String>(this, 'folder');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `pubsub_topic` attribute.
  TfRef<String> get pubsubTopicRef =>
      TfRef.attribute<String>(this, 'pubsub_topic');
}
