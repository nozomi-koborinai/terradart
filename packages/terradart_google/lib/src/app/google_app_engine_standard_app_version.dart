// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_standard_app_version`.
const Set<String> _googleAppEngineStandardAppVersionSensitive = <String>{};

/// Typed helper for the `automatic_scaling` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionAutomaticScaling {
  const AppEngineStandardAppVersionAutomaticScaling({
    this.maxConcurrentRequests,
    this.maxIdleInstances,
    this.maxPendingLatency,
    this.minIdleInstances,
    this.minPendingLatency,
    this.standardSchedulerSettings,
  });

  final TfArg<num>? maxConcurrentRequests;

  final TfArg<num>? maxIdleInstances;

  final TfArg<String>? maxPendingLatency;

  final TfArg<num>? minIdleInstances;

  final TfArg<String>? minPendingLatency;

  final AppEngineStandardAppVersionAutomaticScalingStandardSchedulerSettings?
  standardSchedulerSettings;

  Map<String, Object?> encode() => {
    if (maxConcurrentRequests != null)
      'max_concurrent_requests': maxConcurrentRequests!.toTfJson(),
    if (maxIdleInstances != null)
      'max_idle_instances': maxIdleInstances!.toTfJson(),
    if (maxPendingLatency != null)
      'max_pending_latency': maxPendingLatency!.toTfJson(),
    if (minIdleInstances != null)
      'min_idle_instances': minIdleInstances!.toTfJson(),
    if (minPendingLatency != null)
      'min_pending_latency': minPendingLatency!.toTfJson(),
    if (standardSchedulerSettings != null)
      'standard_scheduler_settings': standardSchedulerSettings!.encode(),
  };
}

/// Typed helper for the `automatic_scaling.standard_scheduler_settings` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionAutomaticScalingStandardSchedulerSettings {
  const AppEngineStandardAppVersionAutomaticScalingStandardSchedulerSettings({
    this.maxInstances,
    this.minInstances,
    this.targetCpuUtilization,
    this.targetThroughputUtilization,
  });

  final TfArg<num>? maxInstances;

  final TfArg<num>? minInstances;

  final TfArg<num>? targetCpuUtilization;

  final TfArg<num>? targetThroughputUtilization;

  Map<String, Object?> encode() => {
    if (maxInstances != null) 'max_instances': maxInstances!.toTfJson(),
    if (minInstances != null) 'min_instances': minInstances!.toTfJson(),
    if (targetCpuUtilization != null)
      'target_cpu_utilization': targetCpuUtilization!.toTfJson(),
    if (targetThroughputUtilization != null)
      'target_throughput_utilization': targetThroughputUtilization!.toTfJson(),
  };
}

/// Typed helper for the `basic_scaling` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionBasicScaling {
  const AppEngineStandardAppVersionBasicScaling({
    this.idleTimeout,
    required this.maxInstances,
  });

  final TfArg<String>? idleTimeout;

  final TfArg<num> maxInstances;

  Map<String, Object?> encode() => {
    if (idleTimeout != null) 'idle_timeout': idleTimeout!.toTfJson(),
    'max_instances': maxInstances.toTfJson(),
  };
}

/// Typed helper for the `deployment` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionDeployment {
  const AppEngineStandardAppVersionDeployment({this.files, this.zip});

  final List<AppEngineStandardAppVersionDeploymentFiles>? files;

  final AppEngineStandardAppVersionDeploymentZip? zip;

  Map<String, Object?> encode() => {
    if (files != null) 'files': [for (final e in files!) e.encode()],
    if (zip != null) 'zip': zip!.encode(),
  };
}

/// Typed helper for the `deployment.files` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionDeploymentFiles {
  const AppEngineStandardAppVersionDeploymentFiles({
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
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionDeploymentZip {
  const AppEngineStandardAppVersionDeploymentZip({
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

/// Typed helper for the `entrypoint` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionEntrypoint {
  const AppEngineStandardAppVersionEntrypoint({required this.shell});

  final TfArg<String> shell;

  Map<String, Object?> encode() => {'shell': shell.toTfJson()};
}

/// Typed helper for the `handlers` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionHandlers {
  const AppEngineStandardAppVersionHandlers({
    this.authFailAction,
    this.login,
    this.redirectHttpResponseCode,
    this.securityLevel,
    this.urlRegex,
    this.script,
    this.staticFiles,
  });

  final TfArg<AppEngineStandardAppVersionHandlersAuthFailAction>?
  authFailAction;

  final TfArg<AppEngineStandardAppVersionHandlersLogin>? login;

  final TfArg<AppEngineStandardAppVersionHandlersRedirectHttpResponseCode>?
  redirectHttpResponseCode;

  final TfArg<AppEngineStandardAppVersionHandlersSecurityLevel>? securityLevel;

  final TfArg<String>? urlRegex;

  final AppEngineStandardAppVersionHandlersScript? script;

  final AppEngineStandardAppVersionHandlersStaticFiles? staticFiles;

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
enum AppEngineStandardAppVersionHandlersAuthFailAction
    implements TerraformEnum {
  authFailActionRedirect('AUTH_FAIL_ACTION_REDIRECT'),
  authFailActionUnauthorized('AUTH_FAIL_ACTION_UNAUTHORIZED');

  const AppEngineStandardAppVersionHandlersAuthFailAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `login` — derived from the provider schema description.
enum AppEngineStandardAppVersionHandlersLogin implements TerraformEnum {
  loginOptional('LOGIN_OPTIONAL'),
  loginAdmin('LOGIN_ADMIN'),
  loginRequired('LOGIN_REQUIRED');

  const AppEngineStandardAppVersionHandlersLogin(this.terraformValue);
  @override
  final String terraformValue;
}

/// `redirect_http_response_code` — derived from the provider schema description.
enum AppEngineStandardAppVersionHandlersRedirectHttpResponseCode
    implements TerraformEnum {
  redirectHttpResponseCode301('REDIRECT_HTTP_RESPONSE_CODE_301'),
  redirectHttpResponseCode302('REDIRECT_HTTP_RESPONSE_CODE_302'),
  redirectHttpResponseCode303('REDIRECT_HTTP_RESPONSE_CODE_303'),
  redirectHttpResponseCode307('REDIRECT_HTTP_RESPONSE_CODE_307');

  const AppEngineStandardAppVersionHandlersRedirectHttpResponseCode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `security_level` — derived from the provider schema description.
enum AppEngineStandardAppVersionHandlersSecurityLevel implements TerraformEnum {
  secureDefault('SECURE_DEFAULT'),
  secureNever('SECURE_NEVER'),
  secureOptional('SECURE_OPTIONAL'),
  secureAlways('SECURE_ALWAYS');

  const AppEngineStandardAppVersionHandlersSecurityLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `handlers.script` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionHandlersScript {
  const AppEngineStandardAppVersionHandlersScript({required this.scriptPath});

  final TfArg<String> scriptPath;

  Map<String, Object?> encode() => {'script_path': scriptPath.toTfJson()};
}

/// Typed helper for the `handlers.static_files` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionHandlersStaticFiles {
  const AppEngineStandardAppVersionHandlersStaticFiles({
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

/// Typed helper for the `libraries` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionLibraries {
  const AppEngineStandardAppVersionLibraries({this.name, this.version});

  final TfArg<String>? name;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `manual_scaling` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionManualScaling {
  const AppEngineStandardAppVersionManualScaling({required this.instances});

  final TfArg<num> instances;

  Map<String, Object?> encode() => {'instances': instances.toTfJson()};
}

/// Typed helper for the `vpc_access_connector` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionVpcAccessConnector {
  const AppEngineStandardAppVersionVpcAccessConnector({
    this.egressSetting,
    required this.name,
  });

  final TfArg<String>? egressSetting;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (egressSetting != null) 'egress_setting': egressSetting!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `google_app_engine_standard_app_version`.
///
/// Standard App Version resource to create a new version of standard GAE
/// Application. Learn about the differences between the standard environment
/// and the flexible environment at
/// https://cloud.google.com/appengine/docs/the-appengine-environments.
/// Currently supporting Zip and File Containers.
final class GoogleAppEngineStandardAppVersion extends Resource {
  static const String tfType = 'google_app_engine_standard_app_version';

  GoogleAppEngineStandardAppVersion({
    required super.localName,
    required TfArg<String> service,
    TfArg<String>? versionId,
    required TfArg<String> runtime,
    TfArg<String>? runtimeApiVersion,
    TfArg<String>? instanceClass,
    TfArg<Map<String, String>>? envVariables,
    List<AppEngineStandardAppVersionHandlers>? handlers,
    required AppEngineStandardAppVersionDeployment deployment,
    required AppEngineStandardAppVersionEntrypoint entrypoint,
    AppEngineStandardAppVersionAutomaticScaling? automaticScaling,
    AppEngineStandardAppVersionManualScaling? manualScaling,
    AppEngineStandardAppVersionVpcAccessConnector? vpcAccessConnector,
    TfArg<bool>? appEngineApis,
    TfArg<bool>? deleteServiceOnDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? noopOnDestroy,
    TfArg<String>? serviceAccount,
    TfArg<bool>? threadsafe,
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
           if (envVariables != null) 'env_variables': envVariables,
           if (handlers != null)
             'handlers': TfArg.literal([for (final e in handlers) e.encode()]),
           'deployment': TfArg.literal(deployment.encode()),
           'entrypoint': TfArg.literal(entrypoint.encode()),
           if (automaticScaling != null)
             'automatic_scaling': TfArg.literal(automaticScaling.encode()),
           if (manualScaling != null)
             'manual_scaling': TfArg.literal(manualScaling.encode()),
           if (vpcAccessConnector != null)
             'vpc_access_connector': TfArg.literal(vpcAccessConnector.encode()),
           if (appEngineApis != null) 'app_engine_apis': appEngineApis,
           if (deleteServiceOnDestroy != null)
             'delete_service_on_destroy': deleteServiceOnDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (noopOnDestroy != null) 'noop_on_destroy': noopOnDestroy,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (threadsafe != null) 'threadsafe': threadsafe,
           if (inboundServices != null) 'inbound_services': inboundServices,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineStandardAppVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
