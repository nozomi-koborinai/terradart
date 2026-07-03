// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_flexible_app_version`.
const Set<String> _googleAppEngineFlexibleAppVersionSensitive = <String>{};

/// App Engine Flexible App Version Serving enum for `serving_status`.
enum AppEngineFlexibleAppVersionServingStatus implements TerraformEnum {
  serving('SERVING'),
  stopped('STOPPED');

  const AppEngineFlexibleAppVersionServingStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Automatic or manual scaling for [GoogleAppEngineFlexibleAppVersion].
sealed class AppEngineFlexibleAppVersionScaling {
  const AppEngineFlexibleAppVersionScaling();

  String get blockKey;

  Map<String, Object?> encode();
}

/// `automatic_scaling` block — request/latency-driven autoscaling.
@immutable
final class AppEngineFlexibleAppVersionAutomaticScalingMode
    extends AppEngineFlexibleAppVersionScaling {
  const AppEngineFlexibleAppVersionAutomaticScalingMode({
    required this.minTotalInstances,
  });

  final TfArg<int> minTotalInstances;

  @override
  String get blockKey => 'automatic_scaling';

  @override
  Map<String, Object?> encode() => {
    'min_total_instances': minTotalInstances.toTfJson(),
  };
}

/// `manual_scaling` block — fixed instance count.
@immutable
final class AppEngineFlexibleAppVersionManualScalingMode
    extends AppEngineFlexibleAppVersionScaling {
  const AppEngineFlexibleAppVersionManualScalingMode({required this.instances});

  final TfArg<int> instances;

  @override
  String get blockKey => 'manual_scaling';

  @override
  Map<String, Object?> encode() => {'instances': instances.toTfJson()};
}

/// Typed helper for the `api_config` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionApiConfig {
  const AppEngineFlexibleAppVersionApiConfig({
    this.authFailAction,
    this.login,
    required this.script,
    this.securityLevel,
    this.url,
  });

  final TfArg<AppEngineFlexibleAppVersionApiConfigAuthFailAction>?
  authFailAction;

  final TfArg<AppEngineFlexibleAppVersionApiConfigLogin>? login;

  final TfArg<String> script;

  final TfArg<AppEngineFlexibleAppVersionApiConfigSecurityLevel>? securityLevel;

  final TfArg<String>? url;

  Map<String, Object?> encode() => {
    if (authFailAction != null) 'auth_fail_action': authFailAction!.toTfJson(),
    if (login != null) 'login': login!.toTfJson(),
    'script': script.toTfJson(),
    if (securityLevel != null) 'security_level': securityLevel!.toTfJson(),
    if (url != null) 'url': url!.toTfJson(),
  };
}

/// `auth_fail_action` — derived from the provider schema description.
enum AppEngineFlexibleAppVersionApiConfigAuthFailAction
    implements TerraformEnum {
  authFailActionRedirect('AUTH_FAIL_ACTION_REDIRECT'),
  authFailActionUnauthorized('AUTH_FAIL_ACTION_UNAUTHORIZED');

  const AppEngineFlexibleAppVersionApiConfigAuthFailAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `login` — derived from the provider schema description.
enum AppEngineFlexibleAppVersionApiConfigLogin implements TerraformEnum {
  loginOptional('LOGIN_OPTIONAL'),
  loginAdmin('LOGIN_ADMIN'),
  loginRequired('LOGIN_REQUIRED');

  const AppEngineFlexibleAppVersionApiConfigLogin(this.terraformValue);
  @override
  final String terraformValue;
}

/// `security_level` — derived from the provider schema description.
enum AppEngineFlexibleAppVersionApiConfigSecurityLevel
    implements TerraformEnum {
  secureDefault('SECURE_DEFAULT'),
  secureNever('SECURE_NEVER'),
  secureOptional('SECURE_OPTIONAL'),
  secureAlways('SECURE_ALWAYS');

  const AppEngineFlexibleAppVersionApiConfigSecurityLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `deployment` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionDeployment {
  const AppEngineFlexibleAppVersionDeployment({
    this.cloudBuildOptions,
    this.container,
    this.files,
    this.zip,
  });

  final AppEngineFlexibleAppVersionDeploymentCloudBuildOptions?
  cloudBuildOptions;

  final AppEngineFlexibleAppVersionDeploymentContainer? container;

  final List<AppEngineFlexibleAppVersionDeploymentFiles>? files;

  final AppEngineFlexibleAppVersionDeploymentZip? zip;

  Map<String, Object?> encode() => {
    if (cloudBuildOptions != null)
      'cloud_build_options': cloudBuildOptions!.encode(),
    if (container != null) 'container': container!.encode(),
    if (files != null) 'files': [for (final e in files!) e.encode()],
    if (zip != null) 'zip': zip!.encode(),
  };
}

/// Typed helper for the `deployment.cloud_build_options` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionDeploymentCloudBuildOptions {
  const AppEngineFlexibleAppVersionDeploymentCloudBuildOptions({
    required this.appYamlPath,
    this.cloudBuildTimeout,
  });

  final TfArg<String> appYamlPath;

  final TfArg<String>? cloudBuildTimeout;

  Map<String, Object?> encode() => {
    'app_yaml_path': appYamlPath.toTfJson(),
    if (cloudBuildTimeout != null)
      'cloud_build_timeout': cloudBuildTimeout!.toTfJson(),
  };
}

/// Typed helper for the `deployment.container` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionDeploymentContainer {
  const AppEngineFlexibleAppVersionDeploymentContainer({required this.image});

  final TfArg<String> image;

  Map<String, Object?> encode() => {'image': image.toTfJson()};
}

/// Typed helper for the `deployment.files` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionDeploymentFiles {
  const AppEngineFlexibleAppVersionDeploymentFiles({
    required this.name,
    this.sha1Sum,
    required this.sourceUrl,
  });

  final TfArg<String> name;

  final TfArg<String>? sha1Sum;

  final TfArg<String> sourceUrl;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (sha1Sum != null) 'sha1_sum': sha1Sum!.toTfJson(),
    'source_url': sourceUrl.toTfJson(),
  };
}

/// Typed helper for the `deployment.zip` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionDeploymentZip {
  const AppEngineFlexibleAppVersionDeploymentZip({
    this.filesCount,
    required this.sourceUrl,
  });

  final TfArg<num>? filesCount;

  final TfArg<String> sourceUrl;

  Map<String, Object?> encode() => {
    if (filesCount != null) 'files_count': filesCount!.toTfJson(),
    'source_url': sourceUrl.toTfJson(),
  };
}

/// Typed helper for the `endpoints_api_service` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionEndpointsApiService {
  const AppEngineFlexibleAppVersionEndpointsApiService({
    this.configId,
    this.disableTraceSampling,
    required this.name,
    this.rolloutStrategy,
  });

  final TfArg<String>? configId;

  final TfArg<bool>? disableTraceSampling;

  final TfArg<String> name;

  final TfArg<AppEngineFlexibleAppVersionEndpointsApiServiceRolloutStrategy>?
  rolloutStrategy;

  Map<String, Object?> encode() => {
    if (configId != null) 'config_id': configId!.toTfJson(),
    if (disableTraceSampling != null)
      'disable_trace_sampling': disableTraceSampling!.toTfJson(),
    'name': name.toTfJson(),
    if (rolloutStrategy != null)
      'rollout_strategy': rolloutStrategy!.toTfJson(),
  };
}

/// `rollout_strategy` — derived from the provider schema description.
enum AppEngineFlexibleAppVersionEndpointsApiServiceRolloutStrategy
    implements TerraformEnum {
  fixed('FIXED'),
  managed('MANAGED');

  const AppEngineFlexibleAppVersionEndpointsApiServiceRolloutStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `entrypoint` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionEntrypoint {
  const AppEngineFlexibleAppVersionEntrypoint({required this.shell});

  final TfArg<String> shell;

  Map<String, Object?> encode() => {'shell': shell.toTfJson()};
}

/// Typed helper for the `flexible_runtime_settings` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionFlexibleRuntimeSettings {
  const AppEngineFlexibleAppVersionFlexibleRuntimeSettings({
    this.operatingSystem,
    this.runtimeVersion,
  });

  final TfArg<String>? operatingSystem;

  final TfArg<String>? runtimeVersion;

  Map<String, Object?> encode() => {
    if (operatingSystem != null)
      'operating_system': operatingSystem!.toTfJson(),
    if (runtimeVersion != null) 'runtime_version': runtimeVersion!.toTfJson(),
  };
}

/// Typed helper for the `handlers` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionHandlers {
  const AppEngineFlexibleAppVersionHandlers({
    this.authFailAction,
    this.login,
    this.redirectHttpResponseCode,
    this.securityLevel,
    this.urlRegex,
    this.script,
    this.staticFiles,
  });

  final TfArg<AppEngineFlexibleAppVersionHandlersAuthFailAction>?
  authFailAction;

  final TfArg<AppEngineFlexibleAppVersionHandlersLogin>? login;

  final TfArg<AppEngineFlexibleAppVersionHandlersRedirectHttpResponseCode>?
  redirectHttpResponseCode;

  final TfArg<AppEngineFlexibleAppVersionHandlersSecurityLevel>? securityLevel;

  final TfArg<String>? urlRegex;

  final AppEngineFlexibleAppVersionHandlersScript? script;

  final AppEngineFlexibleAppVersionHandlersStaticFiles? staticFiles;

  Map<String, Object?> encode() => {
    if (authFailAction != null) 'auth_fail_action': authFailAction!.toTfJson(),
    if (login != null) 'login': login!.toTfJson(),
    if (redirectHttpResponseCode != null)
      'redirect_http_response_code': redirectHttpResponseCode!.toTfJson(),
    if (securityLevel != null) 'security_level': securityLevel!.toTfJson(),
    if (urlRegex != null) 'url_regex': urlRegex!.toTfJson(),
    if (script != null) 'script': script!.encode(),
    if (staticFiles != null) 'static_files': staticFiles!.encode(),
  };
}

/// `auth_fail_action` — derived from the provider schema description.
enum AppEngineFlexibleAppVersionHandlersAuthFailAction
    implements TerraformEnum {
  authFailActionRedirect('AUTH_FAIL_ACTION_REDIRECT'),
  authFailActionUnauthorized('AUTH_FAIL_ACTION_UNAUTHORIZED');

  const AppEngineFlexibleAppVersionHandlersAuthFailAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `login` — derived from the provider schema description.
enum AppEngineFlexibleAppVersionHandlersLogin implements TerraformEnum {
  loginOptional('LOGIN_OPTIONAL'),
  loginAdmin('LOGIN_ADMIN'),
  loginRequired('LOGIN_REQUIRED');

  const AppEngineFlexibleAppVersionHandlersLogin(this.terraformValue);
  @override
  final String terraformValue;
}

/// `redirect_http_response_code` — derived from the provider schema description.
enum AppEngineFlexibleAppVersionHandlersRedirectHttpResponseCode
    implements TerraformEnum {
  redirectHttpResponseCode301('REDIRECT_HTTP_RESPONSE_CODE_301'),
  redirectHttpResponseCode302('REDIRECT_HTTP_RESPONSE_CODE_302'),
  redirectHttpResponseCode303('REDIRECT_HTTP_RESPONSE_CODE_303'),
  redirectHttpResponseCode307('REDIRECT_HTTP_RESPONSE_CODE_307');

  const AppEngineFlexibleAppVersionHandlersRedirectHttpResponseCode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `security_level` — derived from the provider schema description.
enum AppEngineFlexibleAppVersionHandlersSecurityLevel implements TerraformEnum {
  secureDefault('SECURE_DEFAULT'),
  secureNever('SECURE_NEVER'),
  secureOptional('SECURE_OPTIONAL'),
  secureAlways('SECURE_ALWAYS');

  const AppEngineFlexibleAppVersionHandlersSecurityLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `handlers.script` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionHandlersScript {
  const AppEngineFlexibleAppVersionHandlersScript({required this.scriptPath});

  final TfArg<String> scriptPath;

  Map<String, Object?> encode() => {'script_path': scriptPath.toTfJson()};
}

/// Typed helper for the `handlers.static_files` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionHandlersStaticFiles {
  const AppEngineFlexibleAppVersionHandlersStaticFiles({
    this.applicationReadable,
    this.expiration,
    this.httpHeaders,
    this.mimeType,
    this.path,
    this.requireMatchingFile,
    this.uploadPathRegex,
  });

  final TfArg<bool>? applicationReadable;

  final TfArg<String>? expiration;

  final TfArg<Map<String, String>>? httpHeaders;

  final TfArg<String>? mimeType;

  final TfArg<String>? path;

  final TfArg<bool>? requireMatchingFile;

  final TfArg<String>? uploadPathRegex;

  Map<String, Object?> encode() => {
    if (applicationReadable != null)
      'application_readable': applicationReadable!.toTfJson(),
    if (expiration != null) 'expiration': expiration!.toTfJson(),
    if (httpHeaders != null) 'http_headers': httpHeaders!.toTfJson(),
    if (mimeType != null) 'mime_type': mimeType!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (requireMatchingFile != null)
      'require_matching_file': requireMatchingFile!.toTfJson(),
    if (uploadPathRegex != null)
      'upload_path_regex': uploadPathRegex!.toTfJson(),
  };
}

/// Typed helper for the `liveness_check` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionLivenessCheck {
  const AppEngineFlexibleAppVersionLivenessCheck({
    this.checkInterval,
    this.failureThreshold,
    this.host,
    this.initialDelay,
    required this.path,
    this.successThreshold,
    this.timeout,
  });

  final TfArg<String>? checkInterval;

  final TfArg<num>? failureThreshold;

  final TfArg<String>? host;

  final TfArg<String>? initialDelay;

  final TfArg<String> path;

  final TfArg<num>? successThreshold;

  final TfArg<String>? timeout;

  Map<String, Object?> encode() => {
    if (checkInterval != null) 'check_interval': checkInterval!.toTfJson(),
    if (failureThreshold != null)
      'failure_threshold': failureThreshold!.toTfJson(),
    if (host != null) 'host': host!.toTfJson(),
    if (initialDelay != null) 'initial_delay': initialDelay!.toTfJson(),
    'path': path.toTfJson(),
    if (successThreshold != null)
      'success_threshold': successThreshold!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
  };
}

/// Typed helper for the `network` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionNetwork {
  const AppEngineFlexibleAppVersionNetwork({
    this.forwardedPorts,
    this.instanceTag,
    required this.name,
    this.sessionAffinity,
    this.subnetwork,
  });

  final TfArg<List<Object?>>? forwardedPorts;

  final TfArg<String>? instanceTag;

  final TfArg<String> name;

  final TfArg<bool>? sessionAffinity;

  final TfArg<String>? subnetwork;

  Map<String, Object?> encode() => {
    if (forwardedPorts != null) 'forwarded_ports': forwardedPorts!.toTfJson(),
    if (instanceTag != null) 'instance_tag': instanceTag!.toTfJson(),
    'name': name.toTfJson(),
    if (sessionAffinity != null)
      'session_affinity': sessionAffinity!.toTfJson(),
    if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
  };
}

/// Typed helper for the `readiness_check` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionReadinessCheck {
  const AppEngineFlexibleAppVersionReadinessCheck({
    this.appStartTimeout,
    this.checkInterval,
    this.failureThreshold,
    this.host,
    required this.path,
    this.successThreshold,
    this.timeout,
  });

  final TfArg<String>? appStartTimeout;

  final TfArg<String>? checkInterval;

  final TfArg<num>? failureThreshold;

  final TfArg<String>? host;

  final TfArg<String> path;

  final TfArg<num>? successThreshold;

  final TfArg<String>? timeout;

  Map<String, Object?> encode() => {
    if (appStartTimeout != null)
      'app_start_timeout': appStartTimeout!.toTfJson(),
    if (checkInterval != null) 'check_interval': checkInterval!.toTfJson(),
    if (failureThreshold != null)
      'failure_threshold': failureThreshold!.toTfJson(),
    if (host != null) 'host': host!.toTfJson(),
    'path': path.toTfJson(),
    if (successThreshold != null)
      'success_threshold': successThreshold!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
  };
}

/// Typed helper for the `resources` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionResources {
  const AppEngineFlexibleAppVersionResources({
    this.cpu,
    this.diskGb,
    this.memoryGb,
    this.volumes,
  });

  final TfArg<num>? cpu;

  final TfArg<num>? diskGb;

  final TfArg<num>? memoryGb;

  final List<AppEngineFlexibleAppVersionResourcesVolumes>? volumes;

  Map<String, Object?> encode() => {
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (diskGb != null) 'disk_gb': diskGb!.toTfJson(),
    if (memoryGb != null) 'memory_gb': memoryGb!.toTfJson(),
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
  };
}

/// Typed helper for the `resources.volumes` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionResourcesVolumes {
  const AppEngineFlexibleAppVersionResourcesVolumes({
    required this.name,
    required this.sizeGb,
    required this.volumeType,
  });

  final TfArg<String> name;

  final TfArg<num> sizeGb;

  final TfArg<String> volumeType;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'size_gb': sizeGb.toTfJson(),
    'volume_type': volumeType.toTfJson(),
  };
}

/// Typed helper for the `vpc_access_connector` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionVpcAccessConnector {
  const AppEngineFlexibleAppVersionVpcAccessConnector({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `google_app_engine_flexible_app_version`.
///
/// Flexible App Version resource to create a new version of flexible GAE
/// Application. Based on Google Compute Engine, the App Engine flexible
/// environment automatically scales your app up and down while also balancing
/// the load. Learn about the differences between the standard environment and
/// the flexible environment at
/// https://cloud.google.com/appengine/docs/the-appengine-environments.
///
/// ~> **Note:** The App Engine flexible environment service account uses the
/// member ID
/// `service-[YOUR_PROJECT_NUMBER]@gae-api-prod.google.com.iam.gserviceaccount.com`
/// It should have the App Engine Flexible Environment Service Agent role, which
/// will be applied when the `appengineflex.googleapis.com` service is enabled.
final class GoogleAppEngineFlexibleAppVersion extends Resource {
  static const String tfType = 'google_app_engine_flexible_app_version';

  GoogleAppEngineFlexibleAppVersion({
    required super.localName,
    required TfArg<String> service,
    TfArg<String>? versionId,
    required TfArg<String> runtime,
    TfArg<String>? runtimeApiVersion,
    TfArg<String>? instanceClass,
    required AppEngineFlexibleAppVersionScaling scaling,
    required AppEngineFlexibleAppVersionLivenessCheck livenessCheck,
    required AppEngineFlexibleAppVersionReadinessCheck readinessCheck,
    AppEngineFlexibleAppVersionVpcAccessConnector? vpcAccessConnector,
    TfArg<Map<String, String>>? envVariables,
    TfArg<Map<String, String>>? betaSettings,
    TfArg<String>? defaultExpiration,
    TfArg<bool>? deleteServiceOnDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? noopOnDestroy,
    TfArg<String>? nobuildFilesRegex,
    TfArg<String>? runtimeChannel,
    TfArg<String>? runtimeMainExecutablePath,
    TfArg<String>? serviceAccount,
    TfArg<AppEngineFlexibleAppVersionServingStatus>? servingStatus,
    TfArg<List<String>>? inboundServices,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           if (versionId != null) 'version_id': versionId,
           'runtime': runtime,
           if (runtimeApiVersion != null)
             'runtime_api_version': runtimeApiVersion,
           if (instanceClass != null) 'instance_class': instanceClass,
           scaling.blockKey: TfArg.literal(scaling.encode()),
           'liveness_check': TfArg.literal(livenessCheck.encode()),
           'readiness_check': TfArg.literal(readinessCheck.encode()),
           if (vpcAccessConnector != null)
             'vpc_access_connector': TfArg.literal(vpcAccessConnector.encode()),
           if (envVariables != null) 'env_variables': envVariables,
           if (betaSettings != null) 'beta_settings': betaSettings,
           if (defaultExpiration != null)
             'default_expiration': defaultExpiration,
           if (deleteServiceOnDestroy != null)
             'delete_service_on_destroy': deleteServiceOnDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (noopOnDestroy != null) 'noop_on_destroy': noopOnDestroy,
           if (nobuildFilesRegex != null)
             'nobuild_files_regex': nobuildFilesRegex,
           if (runtimeChannel != null) 'runtime_channel': runtimeChannel,
           if (runtimeMainExecutablePath != null)
             'runtime_main_executable_path': runtimeMainExecutablePath,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (servingStatus != null) 'serving_status': servingStatus,
           if (inboundServices != null) 'inbound_services': inboundServices,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineFlexibleAppVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
