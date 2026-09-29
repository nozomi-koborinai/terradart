// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_cloudfunctions_function`.
const Set<String> _googleCloudfunctionsFunctionSensitive = <String>{};

/// Typed helper for the `automatic_update_policy` block of
/// `google_cloudfunctions_function` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionAutomaticUpdatePolicy {
  const CloudfunctionsFunctionAutomaticUpdatePolicy();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `event_trigger` block of
/// `google_cloudfunctions_function` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionEventTrigger {
  const CloudfunctionsFunctionEventTrigger({
    required this.eventType,
    required this.resource,
    this.failurePolicy,
  });

  final TfArg<String> eventType;

  final TfArg<String> resource;

  final CloudfunctionsFunctionEventTriggerFailurePolicy? failurePolicy;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    'resource': resource.toTfJson(),
    'failure_policy': ?failurePolicy?.encode(),
  };
}

/// Typed helper for the `event_trigger.failure_policy` block of
/// `google_cloudfunctions_function` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionEventTriggerFailurePolicy {
  const CloudfunctionsFunctionEventTriggerFailurePolicy({required this.retry});

  final TfArg<bool> retry;

  Map<String, Object?> encode() => {'retry': retry.toTfJson()};
}

/// Typed helper for the `on_deploy_update_policy` block of
/// `google_cloudfunctions_function` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionOnDeployUpdatePolicy {
  const CloudfunctionsFunctionOnDeployUpdatePolicy();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `secret_environment_variables` block of
/// `google_cloudfunctions_function` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionSecretEnvironmentVariables {
  const CloudfunctionsFunctionSecretEnvironmentVariables({
    required this.key,
    this.projectId,
    required this.secret,
    required this.version,
  });

  final TfArg<String> key;

  final TfArg<String>? projectId;

  final TfArg<String> secret;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'secret': secret.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `secret_volumes` block of
/// `google_cloudfunctions_function` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionSecretVolumes {
  const CloudfunctionsFunctionSecretVolumes({
    required this.mountPath,
    this.projectId,
    required this.secret,
    this.versions,
  });

  final TfArg<String> mountPath;

  final TfArg<String>? projectId;

  final TfArg<String> secret;

  final List<CloudfunctionsFunctionSecretVolumesVersions>? versions;

  Map<String, Object?> encode() => {
    'mount_path': mountPath.toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'secret': secret.toTfJson(),
    if (versions != null) 'versions': [for (final e in versions!) e.encode()],
  };
}

/// Typed helper for the `secret_volumes.versions` block of
/// `google_cloudfunctions_function` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionSecretVolumesVersions {
  const CloudfunctionsFunctionSecretVolumesVersions({
    required this.path,
    required this.version,
  });

  final TfArg<String> path;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `source_repository` block of
/// `google_cloudfunctions_function` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionSourceRepository {
  const CloudfunctionsFunctionSourceRepository({required this.url});

  final TfArg<String> url;

  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Factory wrapper for `google_cloudfunctions_function`.
///
/// A Cloud Function that contains user computation executed in response to an
/// event.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudfunctionsFunction extends Resource {
  static const String tfType = 'google_cloudfunctions_function';

  GoogleCloudfunctionsFunction({
    required super.localName,
    TfArg<num>? availableMemoryMb,
    TfArg<Map<String, String>>? buildEnvironmentVariables,
    TfArg<String>? buildServiceAccount,
    TfArg<String>? buildWorkerPool,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? dockerRegistry,
    TfArg<String>? dockerRepository,
    TfArg<String>? entryPoint,
    TfArg<Map<String, String>>? environmentVariables,
    TfArg<String>? httpsTriggerSecurityLevel,
    TfArg<String>? httpsTriggerUrl,
    TfArg<String>? ingressSettings,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<Map<String, String>>? labels,
    TfArg<num>? maxInstances,
    TfArg<num>? minInstances,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> runtime,
    RefTo<GoogleServiceAccount>? serviceAccountEmail,
    TfArg<String>? sourceArchiveBucket,
    TfArg<String>? sourceArchiveObject,
    TfArg<num>? timeout,
    TfArg<bool>? triggerHttp,
    TfArg<String>? vpcConnector,
    TfArg<String>? vpcConnectorEgressSettings,
    CloudfunctionsFunctionAutomaticUpdatePolicy? automaticUpdatePolicy,
    CloudfunctionsFunctionEventTrigger? eventTrigger,
    CloudfunctionsFunctionOnDeployUpdatePolicy? onDeployUpdatePolicy,
    List<CloudfunctionsFunctionSecretEnvironmentVariables>?
    secretEnvironmentVariables,
    List<CloudfunctionsFunctionSecretVolumes>? secretVolumes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'available_memory_mb': ?availableMemoryMb,
           'build_environment_variables': ?buildEnvironmentVariables,
           'build_service_account': ?buildServiceAccount,
           'build_worker_pool': ?buildWorkerPool,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'docker_registry': ?dockerRegistry,
           'docker_repository': ?dockerRepository,
           'entry_point': ?entryPoint,
           'environment_variables': ?environmentVariables,
           'https_trigger_security_level': ?httpsTriggerSecurityLevel,
           'https_trigger_url': ?httpsTriggerUrl,
           'ingress_settings': ?ingressSettings,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'labels': ?labels,
           'max_instances': ?maxInstances,
           'min_instances': ?minInstances,
           'name': name,
           'project': ?project,
           'region': ?region,
           'runtime': runtime,
           'service_account_email': ?serviceAccountEmail?.encodeAs('email'),
           'source_archive_bucket': ?sourceArchiveBucket,
           'source_archive_object': ?sourceArchiveObject,
           'timeout': ?timeout,
           'trigger_http': ?triggerHttp,
           'vpc_connector': ?vpcConnector,
           'vpc_connector_egress_settings': ?vpcConnectorEgressSettings,
           if (automaticUpdatePolicy != null)
             'automatic_update_policy': TfArg.literal(
               automaticUpdatePolicy.encode(),
             ),
           if (eventTrigger != null)
             'event_trigger': TfArg.literal(eventTrigger.encode()),
           if (onDeployUpdatePolicy != null)
             'on_deploy_update_policy': TfArg.literal(
               onDeployUpdatePolicy.encode(),
             ),
           if (secretEnvironmentVariables != null)
             'secret_environment_variables': TfArg.literal([
               for (final e in secretEnvironmentVariables) e.encode(),
             ]),
           if (secretVolumes != null)
             'secret_volumes': TfArg.literal([
               for (final e in secretVolumes) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudfunctionsFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudfunctionsFunction>`.
  RefTo<GoogleCloudfunctionsFunction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');
}
