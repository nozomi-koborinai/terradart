// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_app_engine_standard_app_version`.
const Set<String> _googleAppEngineStandardAppVersionSensitive = <String>{};

/// At most one of `app_engine_apis`, `app_engine_bundled_services` on `google_app_engine_standard_app_version`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.appEngineApis(...)`.
sealed class AppEngineStandardAppVersionLegacyServices {
  const AppEngineStandardAppVersionLegacyServices();

  /// Sets `app_engine_apis`.
  const factory AppEngineStandardAppVersionLegacyServices.appEngineApis(
    TfArg<bool> appEngineApis,
  ) = AppEngineStandardAppVersionLegacyServicesAppEngineApis;

  /// Sets `app_engine_bundled_services`.
  const factory AppEngineStandardAppVersionLegacyServices.appEngineBundledServices(
    TfArg<List<String>> appEngineBundledServices,
  ) = AppEngineStandardAppVersionLegacyServicesAppEngineBundledServices;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppEngineStandardAppVersionLegacyServices.appEngineApis] choice: sets `app_engine_apis`.
final class AppEngineStandardAppVersionLegacyServicesAppEngineApis
    extends AppEngineStandardAppVersionLegacyServices {
  const AppEngineStandardAppVersionLegacyServicesAppEngineApis(
    this.appEngineApis,
  );

  final TfArg<bool> appEngineApis;

  @override
  String get blockKey => 'app_engine_apis';

  @override
  Map<String, Object?> encode() => {
    'app_engine_apis': appEngineApis.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'app_engine_apis': appEngineApis};
}

/// The [AppEngineStandardAppVersionLegacyServices.appEngineBundledServices] choice: sets `app_engine_bundled_services`.
final class AppEngineStandardAppVersionLegacyServicesAppEngineBundledServices
    extends AppEngineStandardAppVersionLegacyServices {
  const AppEngineStandardAppVersionLegacyServicesAppEngineBundledServices(
    this.appEngineBundledServices,
  );

  final TfArg<List<String>> appEngineBundledServices;

  @override
  String get blockKey => 'app_engine_bundled_services';

  @override
  Map<String, Object?> encode() => {
    'app_engine_bundled_services': appEngineBundledServices.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'app_engine_bundled_services': appEngineBundledServices,
  };
}

/// At most one of `automatic_scaling`, `basic_scaling`, `manual_scaling` on `google_app_engine_standard_app_version`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.automaticScaling(...)`.
sealed class AppEngineStandardAppVersionScaling {
  const AppEngineStandardAppVersionScaling();

  /// Sets `automatic_scaling`.
  const factory AppEngineStandardAppVersionScaling.automaticScaling(
    AppEngineStandardAppVersionAutomaticScaling automaticScaling,
  ) = AppEngineStandardAppVersionAutomaticScalingChoice;

  /// Sets `basic_scaling`.
  const factory AppEngineStandardAppVersionScaling.basicScaling(
    AppEngineStandardAppVersionBasicScaling basicScaling,
  ) = AppEngineStandardAppVersionBasicScalingChoice;

  /// Sets `manual_scaling`.
  const factory AppEngineStandardAppVersionScaling.manualScaling(
    AppEngineStandardAppVersionManualScaling manualScaling,
  ) = AppEngineStandardAppVersionManualScalingChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppEngineStandardAppVersionScaling.automaticScaling] choice: sets `automatic_scaling`.
final class AppEngineStandardAppVersionAutomaticScalingChoice
    extends AppEngineStandardAppVersionScaling {
  const AppEngineStandardAppVersionAutomaticScalingChoice(
    this.automaticScaling,
  );

  final AppEngineStandardAppVersionAutomaticScaling automaticScaling;

  @override
  String get blockKey => 'automatic_scaling';

  @override
  Map<String, Object?> encode() => {
    'automatic_scaling': automaticScaling.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'automatic_scaling': TfArg.literal(automaticScaling.encode()),
  };
}

/// The [AppEngineStandardAppVersionScaling.basicScaling] choice: sets `basic_scaling`.
final class AppEngineStandardAppVersionBasicScalingChoice
    extends AppEngineStandardAppVersionScaling {
  const AppEngineStandardAppVersionBasicScalingChoice(this.basicScaling);

  final AppEngineStandardAppVersionBasicScaling basicScaling;

  @override
  String get blockKey => 'basic_scaling';

  @override
  Map<String, Object?> encode() => {'basic_scaling': basicScaling.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'basic_scaling': TfArg.literal(basicScaling.encode()),
  };
}

/// The [AppEngineStandardAppVersionScaling.manualScaling] choice: sets `manual_scaling`.
final class AppEngineStandardAppVersionManualScalingChoice
    extends AppEngineStandardAppVersionScaling {
  const AppEngineStandardAppVersionManualScalingChoice(this.manualScaling);

  final AppEngineStandardAppVersionManualScaling manualScaling;

  @override
  String get blockKey => 'manual_scaling';

  @override
  Map<String, Object?> encode() => {'manual_scaling': manualScaling.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'manual_scaling': TfArg.literal(manualScaling.encode()),
  };
}

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

  final AppEngineStandardAppVersionStandardSchedulerSettings?
  standardSchedulerSettings;

  Map<String, Object?> encode() => {
    'max_concurrent_requests': ?maxConcurrentRequests?.toTfJson(),
    'max_idle_instances': ?maxIdleInstances?.toTfJson(),
    'max_pending_latency': ?maxPendingLatency?.toTfJson(),
    'min_idle_instances': ?minIdleInstances?.toTfJson(),
    'min_pending_latency': ?minPendingLatency?.toTfJson(),
    'standard_scheduler_settings': ?standardSchedulerSettings?.encode(),
  };
}

/// Typed helper for the `automatic_scaling.standard_scheduler_settings` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionStandardSchedulerSettings {
  const AppEngineStandardAppVersionStandardSchedulerSettings({
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
    'max_instances': ?maxInstances?.toTfJson(),
    'min_instances': ?minInstances?.toTfJson(),
    'target_cpu_utilization': ?targetCpuUtilization?.toTfJson(),
    'target_throughput_utilization': ?targetThroughputUtilization?.toTfJson(),
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
    'idle_timeout': ?idleTimeout?.toTfJson(),
    'max_instances': maxInstances.toTfJson(),
  };
}

/// Typed helper for the `deployment` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionDeployment {
  const AppEngineStandardAppVersionDeployment({this.files, this.zip});

  final List<AppEngineStandardAppVersionFiles>? files;

  final AppEngineStandardAppVersionZip? zip;

  Map<String, Object?> encode() => {
    if (files != null) 'files': [for (final e in files!) e.encode()],
    'zip': ?zip?.encode(),
  };
}

/// Typed helper for the `deployment.files` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionFiles {
  const AppEngineStandardAppVersionFiles({
    required this.name,
    this.sha1Sum,
    required this.sourceUrl,
  });

  final TfArg<String> name;

  final TfArg<String>? sha1Sum;

  final TfArg<String> sourceUrl;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'sha1_sum': ?sha1Sum?.toTfJson(),
    'source_url': sourceUrl.toTfJson(),
  };
}

/// Typed helper for the `deployment.zip` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionZip {
  const AppEngineStandardAppVersionZip({
    this.filesCount,
    required this.sourceUrl,
  });

  final TfArg<num>? filesCount;

  final TfArg<String> sourceUrl;

  Map<String, Object?> encode() => {
    'files_count': ?filesCount?.toTfJson(),
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

  final TfArg<AppEngineStandardAppVersionAuthFailAction>? authFailAction;

  final TfArg<AppEngineStandardAppVersionLogin>? login;

  final TfArg<AppEngineStandardAppVersionRedirectHttpResponseCode>?
  redirectHttpResponseCode;

  final TfArg<AppEngineStandardAppVersionSecurityLevel>? securityLevel;

  final TfArg<String>? urlRegex;

  final AppEngineStandardAppVersionScript? script;

  final AppEngineStandardAppVersionStaticFiles? staticFiles;

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

/// `auth_fail_action` — derived from the provider schema description.
enum AppEngineStandardAppVersionAuthFailAction implements TerraformEnum {
  authFailActionRedirect('AUTH_FAIL_ACTION_REDIRECT'),
  authFailActionUnauthorized('AUTH_FAIL_ACTION_UNAUTHORIZED');

  const AppEngineStandardAppVersionAuthFailAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `login` — derived from the provider schema description.
enum AppEngineStandardAppVersionLogin implements TerraformEnum {
  loginOptional('LOGIN_OPTIONAL'),
  loginAdmin('LOGIN_ADMIN'),
  loginRequired('LOGIN_REQUIRED');

  const AppEngineStandardAppVersionLogin(this.terraformValue);
  @override
  final String terraformValue;
}

/// `redirect_http_response_code` — derived from the provider schema description.
enum AppEngineStandardAppVersionRedirectHttpResponseCode
    implements TerraformEnum {
  redirectHttpResponseCode301('REDIRECT_HTTP_RESPONSE_CODE_301'),
  redirectHttpResponseCode302('REDIRECT_HTTP_RESPONSE_CODE_302'),
  redirectHttpResponseCode303('REDIRECT_HTTP_RESPONSE_CODE_303'),
  redirectHttpResponseCode307('REDIRECT_HTTP_RESPONSE_CODE_307');

  const AppEngineStandardAppVersionRedirectHttpResponseCode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `security_level` — derived from the provider schema description.
enum AppEngineStandardAppVersionSecurityLevel implements TerraformEnum {
  secureDefault('SECURE_DEFAULT'),
  secureNever('SECURE_NEVER'),
  secureOptional('SECURE_OPTIONAL'),
  secureAlways('SECURE_ALWAYS');

  const AppEngineStandardAppVersionSecurityLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `handlers.script` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionScript {
  const AppEngineStandardAppVersionScript({required this.scriptPath});

  final TfArg<String> scriptPath;

  Map<String, Object?> encode() => {'script_path': scriptPath.toTfJson()};
}

/// Typed helper for the `handlers.static_files` block of
/// `google_app_engine_standard_app_version` (derived from provider schema).
@immutable
final class AppEngineStandardAppVersionStaticFiles {
  const AppEngineStandardAppVersionStaticFiles({
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
    'application_readable': ?applicationReadable?.toTfJson(),
    'expiration': ?expiration?.toTfJson(),
    'http_headers': ?httpHeaders?.toTfJson(),
    'mime_type': ?mimeType?.toTfJson(),
    'path': ?path?.toTfJson(),
    'require_matching_file': ?requireMatchingFile?.toTfJson(),
    'upload_path_regex': ?uploadPathRegex?.toTfJson(),
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
    'name': ?name?.toTfJson(),
    'version': ?version?.toTfJson(),
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
    'egress_setting': ?egressSetting?.toTfJson(),
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
    AppEngineStandardAppVersionScaling? scaling,
    AppEngineStandardAppVersionVpcAccessConnector? vpcAccessConnector,
    AppEngineStandardAppVersionLegacyServices? legacyServices,
    TfArg<bool>? deleteServiceOnDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? noopOnDestroy,
    RefTo<GoogleServiceAccount>? serviceAccount,
    TfArg<bool>? threadsafe,
    TfArg<List<String>>? inboundServices,
    TfArg<String>? project,
    List<AppEngineStandardAppVersionLibraries>? libraries,
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
           'env_variables': ?envVariables,
           if (handlers != null)
             'handlers': TfArg.literal([for (final e in handlers) e.encode()]),
           'deployment': TfArg.literal(deployment.encode()),
           'entrypoint': TfArg.literal(entrypoint.encode()),
           ...?scaling?.argMap,
           if (vpcAccessConnector != null)
             'vpc_access_connector': TfArg.literal(vpcAccessConnector.encode()),
           ...?legacyServices?.argMap,
           'delete_service_on_destroy': ?deleteServiceOnDestroy,
           'deletion_policy': ?deletionPolicy,
           'noop_on_destroy': ?noopOnDestroy,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'threadsafe': ?threadsafe,
           'inbound_services': ?inboundServices,
           'project': ?project,
           if (libraries != null)
             'libraries': TfArg.literal([
               for (final e in libraries) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineStandardAppVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAppEngineStandardAppVersion>`.
  RefTo<GoogleAppEngineStandardAppVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_engine_apis` attribute.
  TfRef<bool> get appEngineApis =>
      TfRef.attribute<bool>(this, 'app_engine_apis');

  /// Reference to `app_engine_bundled_services` attribute.
  TfRef<List<String>> get appEngineBundledServices =>
      TfRef.attribute<List<String>>(this, 'app_engine_bundled_services');

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

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `threadsafe` attribute.
  TfRef<bool> get threadsafe => TfRef.attribute<bool>(this, 'threadsafe');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');
}
