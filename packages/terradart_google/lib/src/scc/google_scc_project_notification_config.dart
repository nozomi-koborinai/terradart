// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_project_notification_config`.
const Set<String> _googleSccProjectNotificationConfigSensitive = <String>{};

/// Typed helper for the `streaming_config` block of
/// `google_scc_project_notification_config` (derived from provider schema).
@immutable
final class SccProjectNotificationConfigStreamingConfig {
  const SccProjectNotificationConfigStreamingConfig({required this.filter});

  final TfArg<String> filter;

  Map<String, Object?> encode() => {'filter': filter.toTfJson()};
}

/// Factory wrapper for `google_scc_project_notification_config`.
///
/// A Cloud Security Command Center (Cloud SCC) notification configs. A
/// notification config is a Cloud SCC resource that contains the configuration
/// to send notifications for create/update events of findings, assets and etc.
/// ~> **Note:** In order to use Cloud SCC resources, your organization must be
/// enrolled in [SCC
/// Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
/// SCC project notification config — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccProjectNotificationConfig extends Resource {
  static const String tfType = 'google_scc_project_notification_config';

  GoogleSccProjectNotificationConfig({
    required super.localName,
    required TfArg<String> configId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? project,
    required TfArg<String> pubsubTopic,
    required SccProjectNotificationConfigStreamingConfig streamingConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config_id': configId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
           'pubsub_topic': pubsubTopic,
           'streaming_config': TfArg.literal(streamingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccProjectNotificationConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');
}
