// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_scc_v2_project_notification_config`.
const Set<String> _googleSccV2ProjectNotificationConfigSensitive = <String>{};

/// Typed helper for the `streaming_config` block of
/// `google_scc_v2_project_notification_config` (derived from provider schema).
@immutable
final class SccV2ProjectNotificationConfigStreamingConfig {
  const SccV2ProjectNotificationConfigStreamingConfig({required this.filter});

  final TfArg<String> filter;

  Map<String, Object?> encode() => {'filter': filter.toTfJson()};
}

/// Factory wrapper for `google_scc_v2_project_notification_config`.
///
/// This is a continuous export that exports findings to a Pub/Sub topic.
///
/// Security Command Center v2 **project notification config** — a continuous
/// export that streams findings to a Pub/Sub topic.
///
/// [pubsubTopic] must be a fully-qualified topic path
/// (`projects/{project}/topics/{topic}`). Pass [GooglePubsubTopic.id] from a
/// sibling topic (not the bare topic name).
///
/// [streamingConfig].`filter` is required by the schema; use `""` to match
/// all findings, or a CEL-style expression such as
/// `state = "ACTIVE"`. See
/// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications).
///
/// After create, [serviceAccount] is the identity that needs
/// `roles/pubsub.publisher` on the destination topic (grant via
/// [GooglePubsubTopicIamMember] when delivery must succeed).
///
/// Enable `securitycenter.googleapis.com` (and `pubsub.googleapis.com` when
/// creating the topic in-stack) via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// final topic = GooglePubsubTopic(
///   'scc_findings',
///   name: TfArg.literal('scc-findings'),
/// );
/// GoogleSccV2ProjectNotificationConfig(
///   'findings_export',
///   configId: TfArg.literal('terradart-findings'),
///   description: TfArg.literal('Export ACTIVE findings to Pub/Sub'),
///   pubsubTopic: topic.ref,
///   streamingConfig: SccV2ProjectNotificationConfigStreamingConfig(
///     filter: TfArg.literal('state = "ACTIVE"'),
///   ),
/// );
/// ```
final class GoogleSccV2ProjectNotificationConfig extends Resource {
  static const String tfType = 'google_scc_v2_project_notification_config';

  GoogleSccV2ProjectNotificationConfig(
    super.localName, {
    required TfArg<String> configId,
    RefTo<GooglePubsubTopic>? pubsubTopic,
    required SccV2ProjectNotificationConfigStreamingConfig streamingConfig,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config_id': configId,
           'pubsub_topic': ?pubsubTopic?.encodeAs('id'),
           'streaming_config': TfArg.literal(streamingConfig.encode()),
           'description': ?description,
           'location': ?location,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2ProjectNotificationConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccV2ProjectNotificationConfig>`.
  RefTo<GoogleSccV2ProjectNotificationConfig> get ref => RefTo.of(this);

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

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `pubsub_topic` attribute.
  TfRef<String> get pubsubTopic =>
      TfRef.attribute<String>(this, 'pubsub_topic');
}
