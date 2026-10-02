// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_app_engine_flexible_app_version`.
const Set<String> _googleAppEngineFlexibleAppVersionSensitive = <String>{};

/// App Engine Flexible App Version Serving enum for `serving_status`.
extension type const AppEngineFlexibleAppVersionServingStatus._(TfArg<String> _)
    implements TfArg<String> {
  AppEngineFlexibleAppVersionServingStatus.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineFlexibleAppVersionServingStatus.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineFlexibleAppVersionServingStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const serving = AppEngineFlexibleAppVersionServingStatus._(
    TfArgLiteral('SERVING'),
  );
  static const stopped = AppEngineFlexibleAppVersionServingStatus._(
    TfArgLiteral('STOPPED'),
  );

  static const List<AppEngineFlexibleAppVersionServingStatus> values = [
    serving,
    stopped,
  ];
}

/// Automatic or manual scaling for [GoogleAppEngineFlexibleAppVersion].
sealed class AppEngineFlexibleAppVersionScaling {
  const AppEngineFlexibleAppVersionScaling();

  /// `automatic_scaling` block — request/latency-driven autoscaling.
  const factory AppEngineFlexibleAppVersionScaling.automaticScaling(
    TfArg<int> minTotalInstances,
  ) = AppEngineFlexibleAppVersionAutomaticScalingMode;

  /// `manual_scaling` block — fixed instance count.
  const factory AppEngineFlexibleAppVersionScaling.manualScaling(
    TfArg<int> instances,
  ) = AppEngineFlexibleAppVersionManualScalingMode;

  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// `automatic_scaling` block — request/latency-driven autoscaling.
@immutable
final class AppEngineFlexibleAppVersionAutomaticScalingMode
    extends AppEngineFlexibleAppVersionScaling {
  const AppEngineFlexibleAppVersionAutomaticScalingMode(this.minTotalInstances);

  final TfArg<int> minTotalInstances;

  @override
  @internal
  String get blockKey => 'automatic_scaling';

  @override
  @internal
  Map<String, Object?> encode() => {
    'min_total_instances': minTotalInstances.toTfJson(),
  };
}

/// `manual_scaling` block — fixed instance count.
@immutable
final class AppEngineFlexibleAppVersionManualScalingMode
    extends AppEngineFlexibleAppVersionScaling {
  const AppEngineFlexibleAppVersionManualScalingMode(this.instances);

  final TfArg<int> instances;

  @override
  @internal
  String get blockKey => 'manual_scaling';

  @override
  @internal
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

  final AppEngineFlexibleAppVersionAuthFailAction? authFailAction;

  final AppEngineFlexibleAppVersionLogin? login;

  final TfArg<String> script;

  final AppEngineFlexibleAppVersionSecurityLevel? securityLevel;

  final TfArg<String>? url;

  @internal
  Map<String, Object?> encode() => {
    'auth_fail_action': ?authFailAction?.toTfJson(),
    'login': ?login?.toTfJson(),
    'script': script.toTfJson(),
    'security_level': ?securityLevel?.toTfJson(),
    'url': ?url?.toTfJson(),
  };
}

/// `auth_fail_action` — derived from the provider schema description.
extension type const AppEngineFlexibleAppVersionAuthFailAction._(
  TfArg<String> _
) implements TfArg<String> {
  AppEngineFlexibleAppVersionAuthFailAction.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineFlexibleAppVersionAuthFailAction.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineFlexibleAppVersionAuthFailAction.arg(TfArg<String> arg)
    : this._(arg);

  static const authFailActionRedirect =
      AppEngineFlexibleAppVersionAuthFailAction._(
        TfArgLiteral('AUTH_FAIL_ACTION_REDIRECT'),
      );
  static const authFailActionUnauthorized =
      AppEngineFlexibleAppVersionAuthFailAction._(
        TfArgLiteral('AUTH_FAIL_ACTION_UNAUTHORIZED'),
      );

  static const List<AppEngineFlexibleAppVersionAuthFailAction> values = [
    authFailActionRedirect,
    authFailActionUnauthorized,
  ];
}

/// `login` — derived from the provider schema description.
extension type const AppEngineFlexibleAppVersionLogin._(TfArg<String> _)
    implements TfArg<String> {
  AppEngineFlexibleAppVersionLogin.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineFlexibleAppVersionLogin.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineFlexibleAppVersionLogin.arg(TfArg<String> arg) : this._(arg);

  static const loginOptional = AppEngineFlexibleAppVersionLogin._(
    TfArgLiteral('LOGIN_OPTIONAL'),
  );
  static const loginAdmin = AppEngineFlexibleAppVersionLogin._(
    TfArgLiteral('LOGIN_ADMIN'),
  );
  static const loginRequired = AppEngineFlexibleAppVersionLogin._(
    TfArgLiteral('LOGIN_REQUIRED'),
  );

  static const List<AppEngineFlexibleAppVersionLogin> values = [
    loginOptional,
    loginAdmin,
    loginRequired,
  ];
}

/// `security_level` — derived from the provider schema description.
extension type const AppEngineFlexibleAppVersionSecurityLevel._(TfArg<String> _)
    implements TfArg<String> {
  AppEngineFlexibleAppVersionSecurityLevel.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineFlexibleAppVersionSecurityLevel.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineFlexibleAppVersionSecurityLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const secureDefault = AppEngineFlexibleAppVersionSecurityLevel._(
    TfArgLiteral('SECURE_DEFAULT'),
  );
  static const secureNever = AppEngineFlexibleAppVersionSecurityLevel._(
    TfArgLiteral('SECURE_NEVER'),
  );
  static const secureOptional = AppEngineFlexibleAppVersionSecurityLevel._(
    TfArgLiteral('SECURE_OPTIONAL'),
  );
  static const secureAlways = AppEngineFlexibleAppVersionSecurityLevel._(
    TfArgLiteral('SECURE_ALWAYS'),
  );

  static const List<AppEngineFlexibleAppVersionSecurityLevel> values = [
    secureDefault,
    secureNever,
    secureOptional,
    secureAlways,
  ];
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

  final AppEngineFlexibleAppVersionCloudBuildOptions? cloudBuildOptions;

  final AppEngineFlexibleAppVersionContainer? container;

  final List<AppEngineFlexibleAppVersionFiles>? files;

  final AppEngineFlexibleAppVersionZip? zip;

  @internal
  Map<String, Object?> encode() => {
    'cloud_build_options': ?cloudBuildOptions?.encode(),
    'container': ?container?.encode(),
    if (files != null) 'files': [for (final e in files!) e.encode()],
    'zip': ?zip?.encode(),
  };
}

/// Typed helper for the `deployment.cloud_build_options` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionCloudBuildOptions {
  const AppEngineFlexibleAppVersionCloudBuildOptions({
    required this.appYamlPath,
    this.cloudBuildTimeout,
  });

  final TfArg<String> appYamlPath;

  final TfArg<String>? cloudBuildTimeout;

  @internal
  Map<String, Object?> encode() => {
    'app_yaml_path': appYamlPath.toTfJson(),
    'cloud_build_timeout': ?cloudBuildTimeout?.toTfJson(),
  };
}

/// Typed helper for the `deployment.container` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionContainer {
  const AppEngineFlexibleAppVersionContainer({required this.image});

  final TfArg<String> image;

  @internal
  Map<String, Object?> encode() => {'image': image.toTfJson()};
}

/// Typed helper for the `deployment.files` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionFiles {
  const AppEngineFlexibleAppVersionFiles({
    required this.name,
    this.sha1Sum,
    required this.sourceUrl,
  });

  final TfArg<String> name;

  final TfArg<String>? sha1Sum;

  final TfArg<String> sourceUrl;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'sha1_sum': ?sha1Sum?.toTfJson(),
    'source_url': sourceUrl.toTfJson(),
  };
}

/// Typed helper for the `deployment.zip` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionZip {
  const AppEngineFlexibleAppVersionZip({
    this.filesCount,
    required this.sourceUrl,
  });

  final TfArg<num>? filesCount;

  final TfArg<String> sourceUrl;

  @internal
  Map<String, Object?> encode() => {
    'files_count': ?filesCount?.toTfJson(),
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

  final AppEngineFlexibleAppVersionRolloutStrategy? rolloutStrategy;

  @internal
  Map<String, Object?> encode() => {
    'config_id': ?configId?.toTfJson(),
    'disable_trace_sampling': ?disableTraceSampling?.toTfJson(),
    'name': name.toTfJson(),
    'rollout_strategy': ?rolloutStrategy?.toTfJson(),
  };
}

/// `rollout_strategy` — derived from the provider schema description.
extension type const AppEngineFlexibleAppVersionRolloutStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  AppEngineFlexibleAppVersionRolloutStrategy.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineFlexibleAppVersionRolloutStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineFlexibleAppVersionRolloutStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const fixed = AppEngineFlexibleAppVersionRolloutStrategy._(
    TfArgLiteral('FIXED'),
  );
  static const managed = AppEngineFlexibleAppVersionRolloutStrategy._(
    TfArgLiteral('MANAGED'),
  );

  static const List<AppEngineFlexibleAppVersionRolloutStrategy> values = [
    fixed,
    managed,
  ];
}

/// Typed helper for the `entrypoint` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionEntrypoint {
  const AppEngineFlexibleAppVersionEntrypoint({required this.shell});

  final TfArg<String> shell;

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'operating_system': ?operatingSystem?.toTfJson(),
    'runtime_version': ?runtimeVersion?.toTfJson(),
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

  final AppEngineFlexibleAppVersionAuthFailAction? authFailAction;

  final AppEngineFlexibleAppVersionLogin? login;

  final AppEngineFlexibleAppVersionRedirectHttpResponseCode?
  redirectHttpResponseCode;

  final AppEngineFlexibleAppVersionSecurityLevel? securityLevel;

  final TfArg<String>? urlRegex;

  final AppEngineFlexibleAppVersionScript? script;

  final AppEngineFlexibleAppVersionStaticFiles? staticFiles;

  @internal
  Map<String, Object?> encode() => {
    'auth_fail_action': ?authFailAction?.toTfJson(),
    'login': ?login?.toTfJson(),
    'redirect_http_response_code': ?redirectHttpResponseCode?.toTfJson(),
    'security_level': ?securityLevel?.toTfJson(),
    'url_regex': ?urlRegex?.toTfJson(),
    'script': ?script?.encode(),
    'static_files': ?staticFiles?.encode(),
  };
}

/// `redirect_http_response_code` — derived from the provider schema description.
extension type const AppEngineFlexibleAppVersionRedirectHttpResponseCode._(
  TfArg<String> _
) implements TfArg<String> {
  AppEngineFlexibleAppVersionRedirectHttpResponseCode.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineFlexibleAppVersionRedirectHttpResponseCode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AppEngineFlexibleAppVersionRedirectHttpResponseCode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const redirectHttpResponseCode301 =
      AppEngineFlexibleAppVersionRedirectHttpResponseCode._(
        TfArgLiteral('REDIRECT_HTTP_RESPONSE_CODE_301'),
      );
  static const redirectHttpResponseCode302 =
      AppEngineFlexibleAppVersionRedirectHttpResponseCode._(
        TfArgLiteral('REDIRECT_HTTP_RESPONSE_CODE_302'),
      );
  static const redirectHttpResponseCode303 =
      AppEngineFlexibleAppVersionRedirectHttpResponseCode._(
        TfArgLiteral('REDIRECT_HTTP_RESPONSE_CODE_303'),
      );
  static const redirectHttpResponseCode307 =
      AppEngineFlexibleAppVersionRedirectHttpResponseCode._(
        TfArgLiteral('REDIRECT_HTTP_RESPONSE_CODE_307'),
      );

  static const List<AppEngineFlexibleAppVersionRedirectHttpResponseCode>
  values = [
    redirectHttpResponseCode301,
    redirectHttpResponseCode302,
    redirectHttpResponseCode303,
    redirectHttpResponseCode307,
  ];
}

/// Typed helper for the `handlers.script` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionScript {
  const AppEngineFlexibleAppVersionScript({required this.scriptPath});

  final TfArg<String> scriptPath;

  @internal
  Map<String, Object?> encode() => {'script_path': scriptPath.toTfJson()};
}

/// Typed helper for the `handlers.static_files` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionStaticFiles {
  const AppEngineFlexibleAppVersionStaticFiles({
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

  @internal
  Map<String, Object?> encode() => {
    'application_readable': ?applicationReadable?.toTfJson(),
    'expiration': ?expiration?.toTfJson(),
    'http_headers': ?httpHeaders?.toTfJson(),
    'mime_type': ?mimeType?.toTfJson(),
    'path': ?path?.toTfJson(),
    'require_matching_file': ?requireMatchingFile?.toTfJson(),
    'upload_path_regex': ?uploadPathRegex?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'check_interval': ?checkInterval?.toTfJson(),
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'host': ?host?.toTfJson(),
    'initial_delay': ?initialDelay?.toTfJson(),
    'path': path.toTfJson(),
    'success_threshold': ?successThreshold?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
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

  final TfArg<List<String>>? forwardedPorts;

  final TfArg<String>? instanceTag;

  final TfArg<String> name;

  final TfArg<bool>? sessionAffinity;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  @internal
  Map<String, Object?> encode() => {
    'forwarded_ports': ?forwardedPorts?.toTfJson(),
    'instance_tag': ?instanceTag?.toTfJson(),
    'name': name.toTfJson(),
    'session_affinity': ?sessionAffinity?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'app_start_timeout': ?appStartTimeout?.toTfJson(),
    'check_interval': ?checkInterval?.toTfJson(),
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'host': ?host?.toTfJson(),
    'path': path.toTfJson(),
    'success_threshold': ?successThreshold?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
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

  final List<AppEngineFlexibleAppVersionVolumes>? volumes;

  @internal
  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'disk_gb': ?diskGb?.toTfJson(),
    'memory_gb': ?memoryGb?.toTfJson(),
    if (volumes != null) 'volumes': [for (final e in volumes!) e.encode()],
  };
}

/// Typed helper for the `resources.volumes` block of
/// `google_app_engine_flexible_app_version` (derived from provider schema).
@immutable
final class AppEngineFlexibleAppVersionVolumes {
  const AppEngineFlexibleAppVersionVolumes({
    required this.name,
    required this.sizeGb,
    required this.volumeType,
  });

  final TfArg<String> name;

  final TfArg<num> sizeGb;

  final TfArg<String> volumeType;

  @internal
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

  @internal
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

  GoogleAppEngineFlexibleAppVersion(
    super.localName, {
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
    RefTo<GoogleServiceAccount>? serviceAccount,
    AppEngineFlexibleAppVersionServingStatus? servingStatus,
    TfArg<List<String>>? inboundServices,
    TfArg<String>? project,
    AppEngineFlexibleAppVersionApiConfig? apiConfig,
    AppEngineFlexibleAppVersionDeployment? deployment,
    AppEngineFlexibleAppVersionEndpointsApiService? endpointsApiService,
    AppEngineFlexibleAppVersionEntrypoint? entrypoint,
    AppEngineFlexibleAppVersionFlexibleRuntimeSettings? flexibleRuntimeSettings,
    List<AppEngineFlexibleAppVersionHandlers>? handlers,
    AppEngineFlexibleAppVersionNetwork? network,
    AppEngineFlexibleAppVersionResources? resources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'version_id': ?versionId,
           'runtime': runtime,
           'runtime_api_version': ?runtimeApiVersion,
           'instance_class': ?instanceClass,
           scaling.blockKey: TfArg.literal(scaling.encode()),
           'liveness_check': TfArg.literal(livenessCheck.encode()),
           'readiness_check': TfArg.literal(readinessCheck.encode()),
           if (vpcAccessConnector != null)
             'vpc_access_connector': TfArg.literal(vpcAccessConnector.encode()),
           'env_variables': ?envVariables,
           'beta_settings': ?betaSettings,
           'default_expiration': ?defaultExpiration,
           'delete_service_on_destroy': ?deleteServiceOnDestroy,
           'deletion_policy': ?deletionPolicy,
           'noop_on_destroy': ?noopOnDestroy,
           'nobuild_files_regex': ?nobuildFilesRegex,
           'runtime_channel': ?runtimeChannel,
           'runtime_main_executable_path': ?runtimeMainExecutablePath,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'serving_status': ?servingStatus,
           'inbound_services': ?inboundServices,
           'project': ?project,
           if (apiConfig != null)
             'api_config': TfArg.literal(apiConfig.encode()),
           if (deployment != null)
             'deployment': TfArg.literal(deployment.encode()),
           if (endpointsApiService != null)
             'endpoints_api_service': TfArg.literal(
               endpointsApiService.encode(),
             ),
           if (entrypoint != null)
             'entrypoint': TfArg.literal(entrypoint.encode()),
           if (flexibleRuntimeSettings != null)
             'flexible_runtime_settings': TfArg.literal(
               flexibleRuntimeSettings.encode(),
             ),
           if (handlers != null)
             'handlers': TfArg.literal([for (final e in handlers) e.encode()]),
           if (network != null) 'network': TfArg.literal(network.encode()),
           if (resources != null)
             'resources': TfArg.literal(resources.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineFlexibleAppVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAppEngineFlexibleAppVersion>`.
  RefTo<GoogleAppEngineFlexibleAppVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `beta_settings` attribute.
  TfRef<Map<String, String>> get betaSettings =>
      TfRef.attribute<Map<String, String>>(this, 'beta_settings');

  /// Reference to `default_expiration` attribute.
  TfRef<String> get defaultExpiration =>
      TfRef.attribute<String>(this, 'default_expiration');

  /// Reference to `delete_service_on_destroy` attribute.
  TfRef<bool> get deleteServiceOnDestroy =>
      TfRef.attribute<bool>(this, 'delete_service_on_destroy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `env_variables` attribute.
  TfRef<Map<String, String>> get envVariables =>
      TfRef.attribute<Map<String, String>>(this, 'env_variables');

  /// Reference to `inbound_services` attribute.
  TfRef<List<String>> get inboundServices =>
      TfRef.attribute<List<String>>(this, 'inbound_services');

  /// Reference to `instance_class` attribute.
  TfRef<String> get instanceClass =>
      TfRef.attribute<String>(this, 'instance_class');

  /// Reference to `nobuild_files_regex` attribute.
  TfRef<String> get nobuildFilesRegex =>
      TfRef.attribute<String>(this, 'nobuild_files_regex');

  /// Reference to `noop_on_destroy` attribute.
  TfRef<bool> get noopOnDestroy =>
      TfRef.attribute<bool>(this, 'noop_on_destroy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `runtime` attribute.
  TfRef<String> get runtime => TfRef.attribute<String>(this, 'runtime');

  /// Reference to `runtime_api_version` attribute.
  TfRef<String> get runtimeApiVersion =>
      TfRef.attribute<String>(this, 'runtime_api_version');

  /// Reference to `runtime_channel` attribute.
  TfRef<String> get runtimeChannel =>
      TfRef.attribute<String>(this, 'runtime_channel');

  /// Reference to `runtime_main_executable_path` attribute.
  TfRef<String> get runtimeMainExecutablePath =>
      TfRef.attribute<String>(this, 'runtime_main_executable_path');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `serving_status` attribute.
  TfRef<String> get servingStatus =>
      TfRef.attribute<String>(this, 'serving_status');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');
}
