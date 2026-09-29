// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_cloud_tasks_queue`.
const Set<String> _googleCloudTasksQueueSensitive = <String>{};

enum CloudTasksQueueDesiredState implements TerraformEnum {
  running('RUNNING'),
  paused('PAUSED');

  const CloudTasksQueueDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Nested-block helpers
// ===========================================================================

// ===========================================================================
// Factory
// ===========================================================================

/// Typed helper for the `app_engine_routing_override` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueAppEngineRoutingOverride {
  const CloudTasksQueueAppEngineRoutingOverride({
    this.instance,
    this.service,
    this.version,
  });

  final TfArg<String>? instance;

  final TfArg<String>? service;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'instance': ?instance?.toTfJson(),
    'service': ?service?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `http_target` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueHttpTarget {
  const CloudTasksQueueHttpTarget({
    this.httpMethod,
    this.headerOverrides,
    this.token,
    this.uriOverride,
  });

  final TfArg<CloudTasksQueueHttpTargetHttpMethod>? httpMethod;

  final List<CloudTasksQueueHttpTargetHeaderOverrides>? headerOverrides;

  final CloudTasksQueueHttpTargetToken? token;

  final CloudTasksQueueHttpTargetUriOverride? uriOverride;

  Map<String, Object?> encode() => {
    'http_method': ?httpMethod?.toTfJson(),
    if (headerOverrides != null)
      'header_overrides': [for (final e in headerOverrides!) e.encode()],
    ...?token?.encode(),
    'uri_override': ?uriOverride?.encode(),
  };
}

/// At most one of `oauth_token`, `oidc_token` on the `http_target` block of `google_cloud_tasks_queue`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.oauthToken(...)`.
sealed class CloudTasksQueueHttpTargetToken {
  const CloudTasksQueueHttpTargetToken();

  /// Sets `oauth_token`.
  const factory CloudTasksQueueHttpTargetToken.oauthToken(
    CloudTasksQueueHttpTargetOauthToken oauthToken,
  ) = CloudTasksQueueHttpTargetTokenOauthToken;

  /// Sets `oidc_token`.
  const factory CloudTasksQueueHttpTargetToken.oidcToken(
    CloudTasksQueueHttpTargetOidcToken oidcToken,
  ) = CloudTasksQueueHttpTargetTokenOidcToken;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudTasksQueueHttpTargetToken.oauthToken] choice: sets `oauth_token`.
final class CloudTasksQueueHttpTargetTokenOauthToken
    extends CloudTasksQueueHttpTargetToken {
  const CloudTasksQueueHttpTargetTokenOauthToken(this.oauthToken);

  final CloudTasksQueueHttpTargetOauthToken oauthToken;

  @override
  String get blockKey => 'oauth_token';

  @override
  Map<String, Object?> encode() => {'oauth_token': oauthToken.encode()};
}

/// The [CloudTasksQueueHttpTargetToken.oidcToken] choice: sets `oidc_token`.
final class CloudTasksQueueHttpTargetTokenOidcToken
    extends CloudTasksQueueHttpTargetToken {
  const CloudTasksQueueHttpTargetTokenOidcToken(this.oidcToken);

  final CloudTasksQueueHttpTargetOidcToken oidcToken;

  @override
  String get blockKey => 'oidc_token';

  @override
  Map<String, Object?> encode() => {'oidc_token': oidcToken.encode()};
}

/// `http_method` — derived from the provider schema description.
enum CloudTasksQueueHttpTargetHttpMethod implements TerraformEnum {
  httpMethodUnspecified('HTTP_METHOD_UNSPECIFIED'),
  post('POST'),
  get('GET'),
  head('HEAD'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH'),
  options('OPTIONS');

  const CloudTasksQueueHttpTargetHttpMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `http_target.header_overrides` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueHttpTargetHeaderOverrides {
  const CloudTasksQueueHttpTargetHeaderOverrides({required this.header});

  final CloudTasksQueueHttpTargetHeaderOverridesHeader header;

  Map<String, Object?> encode() => {'header': header.encode()};
}

/// Typed helper for the `http_target.header_overrides.header` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueHttpTargetHeaderOverridesHeader {
  const CloudTasksQueueHttpTargetHeaderOverridesHeader({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `http_target.oauth_token` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueHttpTargetOauthToken {
  const CloudTasksQueueHttpTargetOauthToken({
    this.scope,
    required this.serviceAccountEmail,
  });

  final TfArg<String>? scope;

  final RefTo<GoogleServiceAccount> serviceAccountEmail;

  Map<String, Object?> encode() => {
    'scope': ?scope?.toTfJson(),
    'service_account_email': serviceAccountEmail.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `http_target.oidc_token` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueHttpTargetOidcToken {
  const CloudTasksQueueHttpTargetOidcToken({
    this.audience,
    required this.serviceAccountEmail,
  });

  final TfArg<String>? audience;

  final RefTo<GoogleServiceAccount> serviceAccountEmail;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'service_account_email': serviceAccountEmail.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `http_target.uri_override` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueHttpTargetUriOverride {
  const CloudTasksQueueHttpTargetUriOverride({
    this.host,
    this.port,
    this.scheme,
    this.uriOverrideEnforceMode,
    this.pathOverride,
    this.queryOverride,
  });

  final TfArg<String>? host;

  final TfArg<String>? port;

  final TfArg<CloudTasksQueueHttpTargetUriOverrideScheme>? scheme;

  final TfArg<CloudTasksQueueHttpTargetUriOverrideUriOverrideEnforceMode>?
  uriOverrideEnforceMode;

  final CloudTasksQueueHttpTargetUriOverridePathOverride? pathOverride;

  final CloudTasksQueueHttpTargetUriOverrideQueryOverride? queryOverride;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'port': ?port?.toTfJson(),
    'scheme': ?scheme?.toTfJson(),
    'uri_override_enforce_mode': ?uriOverrideEnforceMode?.toTfJson(),
    'path_override': ?pathOverride?.encode(),
    'query_override': ?queryOverride?.encode(),
  };
}

/// `scheme` — derived from the provider schema description.
enum CloudTasksQueueHttpTargetUriOverrideScheme implements TerraformEnum {
  http('HTTP'),
  https('HTTPS');

  const CloudTasksQueueHttpTargetUriOverrideScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// `uri_override_enforce_mode` — derived from the provider schema description.
enum CloudTasksQueueHttpTargetUriOverrideUriOverrideEnforceMode
    implements TerraformEnum {
  always('ALWAYS'),
  ifNotExists('IF_NOT_EXISTS');

  const CloudTasksQueueHttpTargetUriOverrideUriOverrideEnforceMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `http_target.uri_override.path_override` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueHttpTargetUriOverridePathOverride {
  const CloudTasksQueueHttpTargetUriOverridePathOverride({this.path});

  final TfArg<String>? path;

  Map<String, Object?> encode() => {'path': ?path?.toTfJson()};
}

/// Typed helper for the `http_target.uri_override.query_override` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueHttpTargetUriOverrideQueryOverride {
  const CloudTasksQueueHttpTargetUriOverrideQueryOverride({this.queryParams});

  final TfArg<String>? queryParams;

  Map<String, Object?> encode() => {'query_params': ?queryParams?.toTfJson()};
}

/// Typed helper for the `rate_limits` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueRateLimits {
  const CloudTasksQueueRateLimits({
    this.maxConcurrentDispatches,
    this.maxDispatchesPerSecond,
  });

  final TfArg<num>? maxConcurrentDispatches;

  final TfArg<num>? maxDispatchesPerSecond;

  Map<String, Object?> encode() => {
    'max_concurrent_dispatches': ?maxConcurrentDispatches?.toTfJson(),
    'max_dispatches_per_second': ?maxDispatchesPerSecond?.toTfJson(),
  };
}

/// Typed helper for the `retry_config` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueRetryConfig {
  const CloudTasksQueueRetryConfig({
    this.maxAttempts,
    this.maxBackoff,
    this.maxDoublings,
    this.maxRetryDuration,
    this.minBackoff,
  });

  final TfArg<num>? maxAttempts;

  final TfArg<String>? maxBackoff;

  final TfArg<num>? maxDoublings;

  final TfArg<String>? maxRetryDuration;

  final TfArg<String>? minBackoff;

  Map<String, Object?> encode() => {
    'max_attempts': ?maxAttempts?.toTfJson(),
    'max_backoff': ?maxBackoff?.toTfJson(),
    'max_doublings': ?maxDoublings?.toTfJson(),
    'max_retry_duration': ?maxRetryDuration?.toTfJson(),
    'min_backoff': ?minBackoff?.toTfJson(),
  };
}

/// Typed helper for the `stackdriver_logging_config` block of
/// `google_cloud_tasks_queue` (derived from provider schema).
@immutable
final class CloudTasksQueueStackdriverLoggingConfig {
  const CloudTasksQueueStackdriverLoggingConfig({required this.samplingRatio});

  final TfArg<num> samplingRatio;

  Map<String, Object?> encode() => {'sampling_ratio': samplingRatio.toTfJson()};
}

/// Factory wrapper for `google_cloud_tasks_queue`.
///
/// A named resource to which messages are sent by publishers.
final class GoogleCloudTasksQueue extends Resource {
  static const String tfType = 'google_cloud_tasks_queue';

  GoogleCloudTasksQueue({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    CloudTasksQueueAppEngineRoutingOverride? appEngineRoutingOverride,
    CloudTasksQueueRateLimits? rateLimits,
    CloudTasksQueueRetryConfig? retryConfig,
    CloudTasksQueueStackdriverLoggingConfig? stackdriverLoggingConfig,
    CloudTasksQueueHttpTarget? httpTarget,
    TfArg<String>? project,
    TfArg<CloudTasksQueueDesiredState>? desiredState,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (appEngineRoutingOverride != null)
             'app_engine_routing_override': TfArg.literal(
               appEngineRoutingOverride.encode(),
             ),
           if (rateLimits != null)
             'rate_limits': TfArg.literal(rateLimits.encode()),
           if (retryConfig != null)
             'retry_config': TfArg.literal(retryConfig.encode()),
           if (stackdriverLoggingConfig != null)
             'stackdriver_logging_config': TfArg.literal(
               stackdriverLoggingConfig.encode(),
             ),
           if (httpTarget != null)
             'http_target': TfArg.literal(httpTarget.encode()),
           'project': ?project,
           'desired_state': ?desiredState,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudTasksQueueSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudTasksQueue>`.
  RefTo<GoogleCloudTasksQueue> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');
}
