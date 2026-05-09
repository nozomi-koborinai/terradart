import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../generated/google_cloud_tasks_queue.schema.dart'
    show $GoogleCloudTasksQueue, googleCloudTasksQueueSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline. `noSuchMethod` satisfies the abstract field
// getters; they are never invoked in v0.0.x.
class _GoogleCloudTasksQueueSchemaInstance implements $GoogleCloudTasksQueue {
  const _GoogleCloudTasksQueueSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// ===========================================================================
// Nested-block helpers
// ===========================================================================

/// `rate_limits` block.
@immutable
class RateLimits {
  const RateLimits({this.maxConcurrentDispatches, this.maxDispatchesPerSecond});

  final TfArg<int>? maxConcurrentDispatches;
  final TfArg<num>? maxDispatchesPerSecond;

  Map<String, Object?> encode() => {
    if (maxConcurrentDispatches != null)
      'max_concurrent_dispatches': maxConcurrentDispatches!.toTfJson(),
    if (maxDispatchesPerSecond != null)
      'max_dispatches_per_second': maxDispatchesPerSecond!.toTfJson(),
  };
}

/// `retry_config` block (Cloud Tasks queue-level retry policy).
@immutable
class RetryConfig {
  const RetryConfig({
    this.maxAttempts,
    this.maxRetryDuration,
    this.minBackoff,
    this.maxBackoff,
    this.maxDoublings,
  });

  final TfArg<int>? maxAttempts;
  final TfArg<String>? maxRetryDuration;
  final TfArg<String>? minBackoff;
  final TfArg<String>? maxBackoff;
  final TfArg<int>? maxDoublings;

  Map<String, Object?> encode() => {
    if (maxAttempts != null) 'max_attempts': maxAttempts!.toTfJson(),
    if (maxRetryDuration != null)
      'max_retry_duration': maxRetryDuration!.toTfJson(),
    if (minBackoff != null) 'min_backoff': minBackoff!.toTfJson(),
    if (maxBackoff != null) 'max_backoff': maxBackoff!.toTfJson(),
    if (maxDoublings != null) 'max_doublings': maxDoublings!.toTfJson(),
  };
}

/// `app_engine_routing_override` block (queue-level App Engine fallback).
@immutable
class AppEngineRoutingOverride {
  const AppEngineRoutingOverride({this.service, this.version, this.instance});

  final TfArg<String>? service;
  final TfArg<String>? version;
  final TfArg<String>? instance;

  Map<String, Object?> encode() => {
    if (service != null) 'service': service!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
    if (instance != null) 'instance': instance!.toTfJson(),
  };
}

/// `stackdriver_logging_config` block — sampling ratio for queue logs.
@immutable
class StackdriverLoggingConfig {
  const StackdriverLoggingConfig({required this.samplingRatio});

  final TfArg<num> samplingRatio;

  Map<String, Object?> encode() => {'sampling_ratio': samplingRatio.toTfJson()};
}

/// `http_target` block on the queue (NOT on the per-task HTTP request — this
/// is the queue-level URL override). Named `QueueHttpTarget` to avoid
/// colliding with `HttpTarget` in `cloud_scheduler/`.
@immutable
class QueueHttpTarget {
  const QueueHttpTarget({
    this.uriOverride,
    this.httpMethod,
    this.headerOverrides,
    this.oauthToken,
    this.oidcToken,
  });

  final TfArg<Map<String, dynamic>>? uriOverride;
  final TfArg<String>? httpMethod;
  final TfArg<List<Map<String, dynamic>>>? headerOverrides;
  final QueueOauthToken? oauthToken;
  final QueueOidcToken? oidcToken;

  Map<String, Object?> encode() => {
    if (uriOverride != null) 'uri_override': uriOverride!.toTfJson(),
    if (httpMethod != null) 'http_method': httpMethod!.toTfJson(),
    if (headerOverrides != null)
      'header_overrides': headerOverrides!.toTfJson(),
    if (oauthToken != null) 'oauth_token': oauthToken!.encode(),
    if (oidcToken != null) 'oidc_token': oidcToken!.encode(),
  };
}

/// OAuth token for queue-level HTTP target.
@immutable
class QueueOauthToken {
  const QueueOauthToken({required this.serviceAccountEmail, this.scope});

  final TfArg<String> serviceAccountEmail;
  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    'service_account_email': serviceAccountEmail.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
  };
}

/// OIDC token for queue-level HTTP target.
@immutable
class QueueOidcToken {
  const QueueOidcToken({required this.serviceAccountEmail, this.audience});

  final TfArg<String> serviceAccountEmail;
  final TfArg<String>? audience;

  Map<String, Object?> encode() => {
    'service_account_email': serviceAccountEmail.toTfJson(),
    if (audience != null) 'audience': audience!.toTfJson(),
  };
}

// ===========================================================================
// Factory
// ===========================================================================

/// Factory wrapper for `google_cloud_tasks_queue`.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `name`: queue name (project-relative; provider expands to full path).
/// - `location`: GCP region (e.g. `us-central1`). v0.0.x treats this as
///   Required for ergonomic clarity even though the underlying provider
///   attribute is technically Optional.
final class GoogleCloudTasksQueue extends Resource<$GoogleCloudTasksQueue> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_cloud_tasks_queue';

  GoogleCloudTasksQueue({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    AppEngineRoutingOverride? appEngineRoutingOverride,
    RateLimits? rateLimits,
    RetryConfig? retryConfig,
    StackdriverLoggingConfig? stackdriverLoggingConfig,
    QueueHttpTarget? httpTarget,
    TfArg<String>? project,
    TfArg<String>? desiredState,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleCloudTasksQueueSchemaInstance(),
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
           if (project != null) 'project': project,
           if (desiredState != null) 'desired_state': desiredState,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleCloudTasksQueueSensitive;

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
