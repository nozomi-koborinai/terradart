// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_scc_folder_notification_config`.
const Set<String> _googleSccFolderNotificationConfigSensitive = <String>{};

/// Typed helper for the `streaming_config` block of
/// `google_scc_folder_notification_config` (derived from provider schema).
@immutable
final class SccFolderNotificationConfigStreamingConfig {
  const SccFolderNotificationConfigStreamingConfig({required this.filter});

  final TfArg<String> filter;

  Map<String, Object?> encode() => {'filter': filter.toTfJson()};
}

/// Factory wrapper for `google_scc_folder_notification_config`.
///
/// A Cloud Security Command Center (Cloud SCC) notification configs. A
/// notification config is a Cloud SCC resource that contains the configuration
/// to send notifications for create/update events of findings, assets and etc.
/// ~> **Note:** In order to use Cloud SCC resources, your organization must be
/// enrolled in [SCC
/// Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
/// SCC folder notification config — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccFolderNotificationConfig extends Resource {
  static const String tfType = 'google_scc_folder_notification_config';

  GoogleSccFolderNotificationConfig(
    super.localName, {
    required TfArg<String> configId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> folder,
    required RefTo<GooglePubsubTopic> pubsubTopic,
    required SccFolderNotificationConfigStreamingConfig streamingConfig,
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
           'pubsub_topic': pubsubTopic.encodeAs('id'),
           'streaming_config': TfArg.literal(streamingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccFolderNotificationConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccFolderNotificationConfig>`.
  RefTo<GoogleSccFolderNotificationConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `config_id` attribute.
  TfRef<String> get configId => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `pubsub_topic` attribute.
  TfRef<String> get pubsubTopic =>
      TfRef.attribute<String>(this, 'pubsub_topic');
}
