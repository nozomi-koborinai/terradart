// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudbuild_trigger`.
const Set<String> _googleCloudbuildTriggerSensitive = <String>{};

/// Factory wrapper for `google_cloudbuild_trigger`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudbuildTrigger extends Data {
  static const String tfType = 'google_cloudbuild_trigger';

  DataGoogleCloudbuildTrigger({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> triggerId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           'trigger_id': triggerId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudbuildTriggerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `approval_config` attribute.
  TfRef<List<Map<String, Object?>>> get approvalConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'approval_config');

  /// Reference to `bitbucket_server_trigger_config` attribute.
  TfRef<List<Map<String, Object?>>> get bitbucketServerTriggerConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'bitbucket_server_trigger_config',
      );

  /// Reference to `build` attribute.
  TfRef<List<Map<String, Object?>>> get build =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'build');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `developer_connect_event_config` attribute.
  TfRef<List<Map<String, Object?>>> get developerConnectEventConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'developer_connect_event_config',
      );

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `git_file_source` attribute.
  TfRef<List<Map<String, Object?>>> get gitFileSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'git_file_source');

  /// Reference to `github` attribute.
  TfRef<List<Map<String, Object?>>> get github =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'github');

  /// Reference to `ignored_files` attribute.
  TfRef<List<String>> get ignoredFiles =>
      TfRef.attribute<List<String>>(this, 'ignored_files');

  /// Reference to `include_build_logs` attribute.
  TfRef<String> get includeBuildLogs =>
      TfRef.attribute<String>(this, 'include_build_logs');

  /// Reference to `included_files` attribute.
  TfRef<List<String>> get includedFiles =>
      TfRef.attribute<List<String>>(this, 'included_files');

  /// Reference to `pubsub_config` attribute.
  TfRef<List<Map<String, Object?>>> get pubsubConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'pubsub_config');

  /// Reference to `repository_event_config` attribute.
  TfRef<List<Map<String, Object?>>> get repositoryEventConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'repository_event_config',
      );

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `source_to_build` attribute.
  TfRef<List<Map<String, Object?>>> get sourceToBuild =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source_to_build');

  /// Reference to `substitutions` attribute.
  TfRef<Map<String, String>> get substitutions =>
      TfRef.attribute<Map<String, String>>(this, 'substitutions');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `trigger_template` attribute.
  TfRef<List<Map<String, Object?>>> get triggerTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trigger_template');

  /// Reference to `webhook_config` attribute.
  TfRef<List<Map<String, Object?>>> get webhookConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'webhook_config');
}
