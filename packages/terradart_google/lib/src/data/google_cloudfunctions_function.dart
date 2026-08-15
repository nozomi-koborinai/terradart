// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudfunctions_function`.
const Set<String> _googleCloudfunctionsFunctionSensitive = <String>{};

/// Factory wrapper for `google_cloudfunctions_function`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudfunctionsFunction extends Data {
  static const String tfType = 'google_cloudfunctions_function';

  DataGoogleCloudfunctionsFunction({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudfunctionsFunctionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automatic_update_policy` attribute.
  TfRef<List<Map<String, Object?>>> get automaticUpdatePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'automatic_update_policy',
      );

  /// Reference to `available_memory_mb` attribute.
  TfRef<num> get availableMemoryMb =>
      TfRef.attribute<num>(this, 'available_memory_mb');

  /// Reference to `build_environment_variables` attribute.
  TfRef<Map<String, String>> get buildEnvironmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'build_environment_variables');

  /// Reference to `build_service_account` attribute.
  TfRef<String> get buildServiceAccount =>
      TfRef.attribute<String>(this, 'build_service_account');

  /// Reference to `build_worker_pool` attribute.
  TfRef<String> get buildWorkerPool =>
      TfRef.attribute<String>(this, 'build_worker_pool');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `docker_registry` attribute.
  TfRef<String> get dockerRegistry =>
      TfRef.attribute<String>(this, 'docker_registry');

  /// Reference to `docker_repository` attribute.
  TfRef<String> get dockerRepository =>
      TfRef.attribute<String>(this, 'docker_repository');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entry_point` attribute.
  TfRef<String> get entryPoint => TfRef.attribute<String>(this, 'entry_point');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `event_trigger` attribute.
  TfRef<List<Map<String, Object?>>> get eventTrigger =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'event_trigger');

  /// Reference to `https_trigger_security_level` attribute.
  TfRef<String> get httpsTriggerSecurityLevel =>
      TfRef.attribute<String>(this, 'https_trigger_security_level');

  /// Reference to `https_trigger_url` attribute.
  TfRef<String> get httpsTriggerUrl =>
      TfRef.attribute<String>(this, 'https_trigger_url');

  /// Reference to `ingress_settings` attribute.
  TfRef<String> get ingressSettings =>
      TfRef.attribute<String>(this, 'ingress_settings');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `max_instances` attribute.
  TfRef<num> get maxInstances => TfRef.attribute<num>(this, 'max_instances');

  /// Reference to `min_instances` attribute.
  TfRef<num> get minInstances => TfRef.attribute<num>(this, 'min_instances');

  /// Reference to `on_deploy_update_policy` attribute.
  TfRef<List<Map<String, Object?>>> get onDeployUpdatePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'on_deploy_update_policy',
      );

  /// Reference to `runtime` attribute.
  TfRef<String> get runtime => TfRef.attribute<String>(this, 'runtime');

  /// Reference to `secret_environment_variables` attribute.
  TfRef<List<Map<String, Object?>>> get secretEnvironmentVariables =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'secret_environment_variables',
      );

  /// Reference to `secret_volumes` attribute.
  TfRef<List<Map<String, Object?>>> get secretVolumes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secret_volumes');

  /// Reference to `service_account_email` attribute.
  TfRef<String> get serviceAccountEmail =>
      TfRef.attribute<String>(this, 'service_account_email');

  /// Reference to `source_archive_bucket` attribute.
  TfRef<String> get sourceArchiveBucket =>
      TfRef.attribute<String>(this, 'source_archive_bucket');

  /// Reference to `source_archive_object` attribute.
  TfRef<String> get sourceArchiveObject =>
      TfRef.attribute<String>(this, 'source_archive_object');

  /// Reference to `source_repository` attribute.
  TfRef<List<Map<String, Object?>>> get sourceRepository =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source_repository');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `trigger_http` attribute.
  TfRef<bool> get triggerHttp => TfRef.attribute<bool>(this, 'trigger_http');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');

  /// Reference to `vpc_connector` attribute.
  TfRef<String> get vpcConnector =>
      TfRef.attribute<String>(this, 'vpc_connector');

  /// Reference to `vpc_connector_egress_settings` attribute.
  TfRef<String> get vpcConnectorEgressSettings =>
      TfRef.attribute<String>(this, 'vpc_connector_egress_settings');
}
