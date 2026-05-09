// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_cloud_scheduler_job.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class AppEngineRouting {
  /// Creates a [AppEngineRouting] from a JSON map.
  factory AppEngineRouting.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AppEngineRouting._(this._json);

  AppEngineRouting({String? instance, String? service, String? version}) {
    _json = {'instance': ?instance, 'service': ?service, 'version': ?version};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AppEngineRouting].
  static const SchemanticType<AppEngineRouting> $schema =
      _AppEngineRoutingTypeFactory();

  String? get instance {
    return _json['instance'] as String?;
  }

  set instance(String? value) {
    if (value == null) {
      _json.remove('instance');
    } else {
      _json['instance'] = value;
    }
  }

  String? get service {
    return _json['service'] as String?;
  }

  set service(String? value) {
    if (value == null) {
      _json.remove('service');
    } else {
      _json['service'] = value;
    }
  }

  String? get version {
    return _json['version'] as String?;
  }

  set version(String? value) {
    if (value == null) {
      _json.remove('version');
    } else {
      _json['version'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AppEngineRouting] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AppEngineRoutingTypeFactory
    extends SchemanticType<AppEngineRouting> {
  const _AppEngineRoutingTypeFactory();

  @override
  AppEngineRouting parse(Object? json) {
    return AppEngineRouting._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AppEngineRouting',
    definition: $Schema
        .object(
          properties: {
            'instance': $Schema.string(
              description:
                  'App instance.\nBy default, the job is sent to an instance which is available when the job is attempted.',
            ),
            'service': $Schema.string(
              description:
                  'App service.\nBy default, the job is sent to the service which is the default service when the job is attempted.',
            ),
            'version': $Schema.string(
              description:
                  'App version.\nBy default, the job is sent to the version which is the default version when the job is attempted.',
            ),
          },
          description: 'App Engine Routing setting for the job.',
        )
        .value,
    dependencies: [],
  );
}

base class AppEngineHttpTarget {
  /// Creates a [AppEngineHttpTarget] from a JSON map.
  factory AppEngineHttpTarget.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AppEngineHttpTarget._(this._json);

  AppEngineHttpTarget({
    String? body,
    Map<String, String>? headers,
    String? httpMethod,
    required String relativeUri,
    AppEngineRouting? appEngineRouting,
  }) {
    _json = {
      'body': ?body,
      'headers': ?headers,
      'http_method': ?httpMethod,
      'relative_uri': relativeUri,
      'app_engine_routing': ?appEngineRouting?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AppEngineHttpTarget].
  static const SchemanticType<AppEngineHttpTarget> $schema =
      _AppEngineHttpTargetTypeFactory();

  String? get body {
    return _json['body'] as String?;
  }

  set body(String? value) {
    if (value == null) {
      _json.remove('body');
    } else {
      _json['body'] = value;
    }
  }

  Map<String, String>? get headers {
    return (_json['headers'] as Map?)?.cast<String, String>();
  }

  set headers(Map<String, String>? value) {
    if (value == null) {
      _json.remove('headers');
    } else {
      _json['headers'] = value;
    }
  }

  String? get httpMethod {
    return _json['http_method'] as String?;
  }

  set httpMethod(String? value) {
    if (value == null) {
      _json.remove('http_method');
    } else {
      _json['http_method'] = value;
    }
  }

  String get relativeUri {
    return _json['relative_uri'] as String;
  }

  set relativeUri(String value) {
    _json['relative_uri'] = value;
  }

  AppEngineRouting? get appEngineRouting {
    return _json['app_engine_routing'] == null
        ? null
        : AppEngineRouting.fromJson(
            _json['app_engine_routing'] as Map<String, dynamic>,
          );
  }

  set appEngineRouting(AppEngineRouting? value) {
    if (value == null) {
      _json.remove('app_engine_routing');
    } else {
      _json['app_engine_routing'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AppEngineHttpTarget] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AppEngineHttpTargetTypeFactory
    extends SchemanticType<AppEngineHttpTarget> {
  const _AppEngineHttpTargetTypeFactory();

  @override
  AppEngineHttpTarget parse(Object? json) {
    return AppEngineHttpTarget._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AppEngineHttpTarget',
    definition: $Schema
        .object(
          properties: {
            'body': $Schema.string(
              description:
                  'HTTP request body.\nA request body is allowed only if the HTTP method is POST or PUT.\nIt will result in invalid argument error to set a body on a job with an incompatible HttpMethod.\n\nA base64-encoded string.',
            ),
            'headers': $Schema.object(
              description:
                  'HTTP request headers.\nThis map contains the header field names and values.\nHeaders can be set when the job is created.',
              additionalProperties: $Schema.string(),
            ),
            'http_method': $Schema.string(
              description: 'Which HTTP method to use for the request.',
            ),
            'relative_uri': $Schema.string(
              description:
                  'The relative URI.\nThe relative URL must begin with "/" and must be a valid HTTP relative URL.\nIt can contain a path, query string arguments, and \# fragments.\nIf the relative URL is empty, then the root path "/" will be used.\nNo spaces are allowed, and the maximum length allowed is 2083 characters',
            ),
            'app_engine_routing': $Schema.fromMap({
              '\$ref': r'#/$defs/AppEngineRouting',
            }),
          },
          required: ['relative_uri'],
          description:
              'App Engine HTTP target.\nIf the job providers a App Engine HTTP target the cron will\nsend a request to the service instance',
        )
        .value,
    dependencies: [AppEngineRouting.$schema],
  );
}

base class OauthToken {
  /// Creates a [OauthToken] from a JSON map.
  factory OauthToken.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  OauthToken._(this._json);

  OauthToken({String? scope, required String serviceAccountEmail}) {
    _json = {'scope': ?scope, 'service_account_email': serviceAccountEmail};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [OauthToken].
  static const SchemanticType<OauthToken> $schema = _OauthTokenTypeFactory();

  String? get scope {
    return _json['scope'] as String?;
  }

  set scope(String? value) {
    if (value == null) {
      _json.remove('scope');
    } else {
      _json['scope'] = value;
    }
  }

  String get serviceAccountEmail {
    return _json['service_account_email'] as String;
  }

  set serviceAccountEmail(String value) {
    _json['service_account_email'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [OauthToken] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _OauthTokenTypeFactory extends SchemanticType<OauthToken> {
  const _OauthTokenTypeFactory();

  @override
  OauthToken parse(Object? json) {
    return OauthToken._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'OauthToken',
    definition: $Schema
        .object(
          properties: {
            'scope': $Schema.string(
              description:
                  'OAuth scope to be used for generating OAuth access token. If not specified,\n"https://www.googleapis.com/auth/cloud-platform" will be used.',
            ),
            'service_account_email': $Schema.string(
              description:
                  'Service account email to be used for generating OAuth token.\nThe service account must be within the same project as the job.',
            ),
          },
          required: ['service_account_email'],
          description:
              'Contains information needed for generating an OAuth token.\nThis type of authorization should be used when sending requests to a GCP endpoint.',
        )
        .value,
    dependencies: [],
  );
}

base class OidcToken {
  /// Creates a [OidcToken] from a JSON map.
  factory OidcToken.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  OidcToken._(this._json);

  OidcToken({String? audience, required String serviceAccountEmail}) {
    _json = {
      'audience': ?audience,
      'service_account_email': serviceAccountEmail,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [OidcToken].
  static const SchemanticType<OidcToken> $schema = _OidcTokenTypeFactory();

  String? get audience {
    return _json['audience'] as String?;
  }

  set audience(String? value) {
    if (value == null) {
      _json.remove('audience');
    } else {
      _json['audience'] = value;
    }
  }

  String get serviceAccountEmail {
    return _json['service_account_email'] as String;
  }

  set serviceAccountEmail(String value) {
    _json['service_account_email'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [OidcToken] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _OidcTokenTypeFactory extends SchemanticType<OidcToken> {
  const _OidcTokenTypeFactory();

  @override
  OidcToken parse(Object? json) {
    return OidcToken._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'OidcToken',
    definition: $Schema
        .object(
          properties: {
            'audience': $Schema.string(
              description:
                  'Audience to be used when generating OIDC token. If not specified,\nthe URI specified in target will be used.',
            ),
            'service_account_email': $Schema.string(
              description:
                  'Service account email to be used for generating OAuth token.\nThe service account must be within the same project as the job.',
            ),
          },
          required: ['service_account_email'],
          description:
              'Contains information needed for generating an OpenID Connect token.\nThis type of authorization should be used when sending requests to third party endpoints or Cloud Run.',
        )
        .value,
    dependencies: [],
  );
}

base class HttpTarget {
  /// Creates a [HttpTarget] from a JSON map.
  factory HttpTarget.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  HttpTarget._(this._json);

  HttpTarget({
    String? body,
    Map<String, String>? headers,
    String? httpMethod,
    required String uri,
    OauthToken? oauthToken,
    OidcToken? oidcToken,
  }) {
    _json = {
      'body': ?body,
      'headers': ?headers,
      'http_method': ?httpMethod,
      'uri': uri,
      'oauth_token': ?oauthToken?.toJson(),
      'oidc_token': ?oidcToken?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [HttpTarget].
  static const SchemanticType<HttpTarget> $schema = _HttpTargetTypeFactory();

  String? get body {
    return _json['body'] as String?;
  }

  set body(String? value) {
    if (value == null) {
      _json.remove('body');
    } else {
      _json['body'] = value;
    }
  }

  Map<String, String>? get headers {
    return (_json['headers'] as Map?)?.cast<String, String>();
  }

  set headers(Map<String, String>? value) {
    if (value == null) {
      _json.remove('headers');
    } else {
      _json['headers'] = value;
    }
  }

  String? get httpMethod {
    return _json['http_method'] as String?;
  }

  set httpMethod(String? value) {
    if (value == null) {
      _json.remove('http_method');
    } else {
      _json['http_method'] = value;
    }
  }

  String get uri {
    return _json['uri'] as String;
  }

  set uri(String value) {
    _json['uri'] = value;
  }

  OauthToken? get oauthToken {
    return _json['oauth_token'] == null
        ? null
        : OauthToken.fromJson(_json['oauth_token'] as Map<String, dynamic>);
  }

  set oauthToken(OauthToken? value) {
    if (value == null) {
      _json.remove('oauth_token');
    } else {
      _json['oauth_token'] = value;
    }
  }

  OidcToken? get oidcToken {
    return _json['oidc_token'] == null
        ? null
        : OidcToken.fromJson(_json['oidc_token'] as Map<String, dynamic>);
  }

  set oidcToken(OidcToken? value) {
    if (value == null) {
      _json.remove('oidc_token');
    } else {
      _json['oidc_token'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [HttpTarget] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _HttpTargetTypeFactory extends SchemanticType<HttpTarget> {
  const _HttpTargetTypeFactory();

  @override
  HttpTarget parse(Object? json) {
    return HttpTarget._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'HttpTarget',
    definition: $Schema
        .object(
          properties: {
            'body': $Schema.string(
              description:
                  'HTTP request body.\nA request body is allowed only if the HTTP method is POST, PUT, or PATCH.\nIt is an error to set body on a job with an incompatible HttpMethod.\n\nA base64-encoded string.',
            ),
            'headers': $Schema.object(
              description:
                  'This map contains the header field names and values.\nRepeated headers are not supported, but a header value can contain commas.',
              additionalProperties: $Schema.string(),
            ),
            'http_method': $Schema.string(
              description: 'Which HTTP method to use for the request.',
            ),
            'uri': $Schema.string(
              description:
                  'The full URI path that the request will be sent to.',
            ),
            'oauth_token': $Schema.fromMap({'\$ref': r'#/$defs/OauthToken'}),
            'oidc_token': $Schema.fromMap({'\$ref': r'#/$defs/OidcToken'}),
          },
          required: ['uri'],
          description:
              'HTTP target.\nIf the job providers a http_target the cron will\nsend a request to the targeted url',
        )
        .value,
    dependencies: [OauthToken.$schema, OidcToken.$schema],
  );
}

base class PubsubTarget {
  /// Creates a [PubsubTarget] from a JSON map.
  factory PubsubTarget.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  PubsubTarget._(this._json);

  PubsubTarget({
    Map<String, String>? attributes,
    String? data,
    required String topicName,
  }) {
    _json = {'attributes': ?attributes, 'data': ?data, 'topic_name': topicName};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [PubsubTarget].
  static const SchemanticType<PubsubTarget> $schema =
      _PubsubTargetTypeFactory();

  Map<String, String>? get attributes {
    return (_json['attributes'] as Map?)?.cast<String, String>();
  }

  set attributes(Map<String, String>? value) {
    if (value == null) {
      _json.remove('attributes');
    } else {
      _json['attributes'] = value;
    }
  }

  String? get data {
    return _json['data'] as String?;
  }

  set data(String? value) {
    if (value == null) {
      _json.remove('data');
    } else {
      _json['data'] = value;
    }
  }

  String get topicName {
    return _json['topic_name'] as String;
  }

  set topicName(String value) {
    _json['topic_name'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [PubsubTarget] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PubsubTargetTypeFactory extends SchemanticType<PubsubTarget> {
  const _PubsubTargetTypeFactory();

  @override
  PubsubTarget parse(Object? json) {
    return PubsubTarget._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'PubsubTarget',
    definition: $Schema
        .object(
          properties: {
            'attributes': $Schema.object(
              description:
                  'Attributes for PubsubMessage.\nPubsub message must contain either non-empty data, or at least one attribute.',
              additionalProperties: $Schema.string(),
            ),
            'data': $Schema.string(
              description:
                  'The message payload for PubsubMessage.\nPubsub message must contain either non-empty data, or at least one attribute.\n\n A base64-encoded string.',
            ),
            'topic_name': $Schema.string(
              description:
                  'The full resource name for the Cloud Pub/Sub topic to which\nmessages will be published when a job is delivered. ~>**NOTE:**\nThe topic name must be in the same format as required by PubSub\'s\nPublishRequest.name, e.g. \'projects/my-project/topics/my-topic\'.',
            ),
          },
          required: ['topic_name'],
          description:
              'Pub/Sub target\nIf the job providers a Pub/Sub target the cron will publish\na message to the provided topic',
        )
        .value,
    dependencies: [],
  );
}

base class RetryConfig {
  /// Creates a [RetryConfig] from a JSON map.
  factory RetryConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  RetryConfig._(this._json);

  RetryConfig({
    String? maxBackoffDuration,
    num? maxDoublings,
    String? maxRetryDuration,
    String? minBackoffDuration,
    num? retryCount,
  }) {
    _json = {
      'max_backoff_duration': ?maxBackoffDuration,
      'max_doublings': ?maxDoublings,
      'max_retry_duration': ?maxRetryDuration,
      'min_backoff_duration': ?minBackoffDuration,
      'retry_count': ?retryCount,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [RetryConfig].
  static const SchemanticType<RetryConfig> $schema = _RetryConfigTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get maxBackoffDuration {
    return _json['max_backoff_duration'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxBackoffDuration(String? value) {
    if (value == null) {
      _json.remove('max_backoff_duration');
    } else {
      _json['max_backoff_duration'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get maxDoublings {
    return _json['max_doublings'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxDoublings(num? value) {
    if (value == null) {
      _json.remove('max_doublings');
    } else {
      _json['max_doublings'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get maxRetryDuration {
    return _json['max_retry_duration'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxRetryDuration(String? value) {
    if (value == null) {
      _json.remove('max_retry_duration');
    } else {
      _json['max_retry_duration'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get minBackoffDuration {
    return _json['min_backoff_duration'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set minBackoffDuration(String? value) {
    if (value == null) {
      _json.remove('min_backoff_duration');
    } else {
      _json['min_backoff_duration'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get retryCount {
    return _json['retry_count'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set retryCount(num? value) {
    if (value == null) {
      _json.remove('retry_count');
    } else {
      _json['retry_count'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [RetryConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RetryConfigTypeFactory extends SchemanticType<RetryConfig> {
  const _RetryConfigTypeFactory();

  @override
  RetryConfig parse(Object? json) {
    return RetryConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'RetryConfig',
    definition: $Schema
        .object(
          properties: {
            'max_backoff_duration': $Schema.string(
              description:
                  'The maximum amount of time to wait before retrying a job after it fails.\nA duration in seconds with up to nine fractional digits, terminated by \'s\'.',
            ),
            'max_doublings': $Schema.number(
              description:
                  'The time between retries will double maxDoublings times.\nA job\'s retry interval starts at minBackoffDuration,\nthen doubles maxDoublings times, then increases linearly,\nand finally retries retries at intervals of maxBackoffDuration up to retryCount times.',
            ),
            'max_retry_duration': $Schema.string(
              description:
                  'The time limit for retrying a failed job, measured from time when an execution was first attempted.\nIf specified with retryCount, the job will be retried until both limits are reached.\nA duration in seconds with up to nine fractional digits, terminated by \'s\'.',
            ),
            'min_backoff_duration': $Schema.string(
              description:
                  'The minimum amount of time to wait before retrying a job after it fails.\nA duration in seconds with up to nine fractional digits, terminated by \'s\'.',
            ),
            'retry_count': $Schema.number(
              description:
                  'The number of attempts that the system will make to run a\njob using the exponential backoff procedure described by maxDoublings.\nValues greater than 5 and negative values are not allowed.',
            ),
          },
          description:
              'By default, if a job does not complete successfully,\nmeaning that an acknowledgement is not received from the handler,\nthen it will be retried with exponential backoff according to the settings',
        )
        .value,
    dependencies: [],
  );
}

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create, String? delete, String? update}) {
    _json = {'create': ?create, 'delete': ?delete, 'update': ?update};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Timeouts].
  static const SchemanticType<Timeouts> $schema = _TimeoutsTypeFactory();

  String? get create {
    return _json['create'] as String?;
  }

  set create(String? value) {
    if (value == null) {
      _json.remove('create');
    } else {
      _json['create'] = value;
    }
  }

  String? get delete {
    return _json['delete'] as String?;
  }

  set delete(String? value) {
    if (value == null) {
      _json.remove('delete');
    } else {
      _json['delete'] = value;
    }
  }

  String? get update {
    return _json['update'] as String?;
  }

  set update(String? value) {
    if (value == null) {
      _json.remove('update');
    } else {
      _json['update'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Timeouts] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TimeoutsTypeFactory extends SchemanticType<Timeouts> {
  const _TimeoutsTypeFactory();

  @override
  Timeouts parse(Object? json) {
    return Timeouts._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Timeouts',
    definition: $Schema
        .object(
          properties: {
            'create': $Schema.string(),
            'delete': $Schema.string(),
            'update': $Schema.string(),
          },
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleCloudSchedulerJob {
  /// Creates a [GoogleCloudSchedulerJob] from a JSON map.
  factory GoogleCloudSchedulerJob.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleCloudSchedulerJob._(this._json);

  GoogleCloudSchedulerJob({
    String? attemptDeadline,
    String? description,
    String? id,
    required String name,
    bool? paused,
    String? project,
    String? region,
    String? schedule,
    String? timeZone,
    AppEngineHttpTarget? appEngineHttpTarget,
    HttpTarget? httpTarget,
    PubsubTarget? pubsubTarget,
    RetryConfig? retryConfig,
    Timeouts? timeouts,
  }) {
    _json = {
      'attempt_deadline': ?attemptDeadline,
      'description': ?description,
      'id': ?id,
      'name': name,
      'paused': ?paused,
      'project': ?project,
      'region': ?region,
      'schedule': ?schedule,
      'time_zone': ?timeZone,
      'app_engine_http_target': ?appEngineHttpTarget?.toJson(),
      'http_target': ?httpTarget?.toJson(),
      'pubsub_target': ?pubsubTarget?.toJson(),
      'retry_config': ?retryConfig?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleCloudSchedulerJob].
  static const SchemanticType<GoogleCloudSchedulerJob> $schema =
      _GoogleCloudSchedulerJobTypeFactory();

  String? get attemptDeadline {
    return _json['attempt_deadline'] as String?;
  }

  set attemptDeadline(String? value) {
    if (value == null) {
      _json.remove('attempt_deadline');
    } else {
      _json['attempt_deadline'] = value;
    }
  }

  String? get description {
    return _json['description'] as String?;
  }

  set description(String? value) {
    if (value == null) {
      _json.remove('description');
    } else {
      _json['description'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get id {
    return _json['id'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set id(String? value) {
    if (value == null) {
      _json.remove('id');
    } else {
      _json['id'] = value;
    }
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  bool? get paused {
    return _json['paused'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set paused(bool? value) {
    if (value == null) {
      _json.remove('paused');
    } else {
      _json['paused'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get project {
    return _json['project'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set project(String? value) {
    if (value == null) {
      _json.remove('project');
    } else {
      _json['project'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get region {
    return _json['region'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set region(String? value) {
    if (value == null) {
      _json.remove('region');
    } else {
      _json['region'] = value;
    }
  }

  String? get schedule {
    return _json['schedule'] as String?;
  }

  set schedule(String? value) {
    if (value == null) {
      _json.remove('schedule');
    } else {
      _json['schedule'] = value;
    }
  }

  String? get timeZone {
    return _json['time_zone'] as String?;
  }

  set timeZone(String? value) {
    if (value == null) {
      _json.remove('time_zone');
    } else {
      _json['time_zone'] = value;
    }
  }

  AppEngineHttpTarget? get appEngineHttpTarget {
    return _json['app_engine_http_target'] == null
        ? null
        : AppEngineHttpTarget.fromJson(
            _json['app_engine_http_target'] as Map<String, dynamic>,
          );
  }

  set appEngineHttpTarget(AppEngineHttpTarget? value) {
    if (value == null) {
      _json.remove('app_engine_http_target');
    } else {
      _json['app_engine_http_target'] = value;
    }
  }

  HttpTarget? get httpTarget {
    return _json['http_target'] == null
        ? null
        : HttpTarget.fromJson(_json['http_target'] as Map<String, dynamic>);
  }

  set httpTarget(HttpTarget? value) {
    if (value == null) {
      _json.remove('http_target');
    } else {
      _json['http_target'] = value;
    }
  }

  PubsubTarget? get pubsubTarget {
    return _json['pubsub_target'] == null
        ? null
        : PubsubTarget.fromJson(_json['pubsub_target'] as Map<String, dynamic>);
  }

  set pubsubTarget(PubsubTarget? value) {
    if (value == null) {
      _json.remove('pubsub_target');
    } else {
      _json['pubsub_target'] = value;
    }
  }

  RetryConfig? get retryConfig {
    return _json['retry_config'] == null
        ? null
        : RetryConfig.fromJson(_json['retry_config'] as Map<String, dynamic>);
  }

  set retryConfig(RetryConfig? value) {
    if (value == null) {
      _json.remove('retry_config');
    } else {
      _json['retry_config'] = value;
    }
  }

  Timeouts? get timeouts {
    return _json['timeouts'] == null
        ? null
        : Timeouts.fromJson(_json['timeouts'] as Map<String, dynamic>);
  }

  set timeouts(Timeouts? value) {
    if (value == null) {
      _json.remove('timeouts');
    } else {
      _json['timeouts'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleCloudSchedulerJob] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleCloudSchedulerJobTypeFactory
    extends SchemanticType<GoogleCloudSchedulerJob> {
  const _GoogleCloudSchedulerJobTypeFactory();

  @override
  GoogleCloudSchedulerJob parse(Object? json) {
    return GoogleCloudSchedulerJob._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleCloudSchedulerJob',
    definition: $Schema
        .object(
          properties: {
            'attempt_deadline': $Schema.string(
              description:
                  'The deadline for job attempts. If the request handler does not respond by this deadline then the request is\ncancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in\nexecution logs. Cloud Scheduler will retry the job according to the RetryConfig.\nThe allowed duration for this deadline is:\n* For HTTP targets, between 15 seconds and 30 minutes.\n* For App Engine HTTP targets, between 15 seconds and 24 hours.\n* **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.\nA duration in seconds with up to nine fractional digits, terminated by \'s\'. Example: "3.5s"',
            ),
            'description': $Schema.string(
              description:
                  'A human-readable description for the job.\nThis string must not contain more than 500 characters.',
            ),
            'id': $Schema.string(),
            'name': $Schema.string(description: 'The name of the job.'),
            'paused': $Schema.boolean(
              description:
                  'Sets the job to a paused state. Jobs default to being enabled when this property is not set.',
            ),
            'project': $Schema.string(),
            'region': $Schema.string(
              description:
                  'Region where the scheduler job resides. If it is not provided, Terraform will use the provider default.',
            ),
            'schedule': $Schema.string(
              description:
                  'Describes the schedule on which the job will be executed.',
            ),
            'time_zone': $Schema.string(
              description:
                  'Specifies the time zone to be used in interpreting schedule.\nThe value of this field must be a time zone name from the tz database.',
            ),
            'app_engine_http_target': $Schema.fromMap({
              '\$ref': r'#/$defs/AppEngineHttpTarget',
            }),
            'http_target': $Schema.fromMap({'\$ref': r'#/$defs/HttpTarget'}),
            'pubsub_target': $Schema.fromMap({
              '\$ref': r'#/$defs/PubsubTarget',
            }),
            'retry_config': $Schema.fromMap({'\$ref': r'#/$defs/RetryConfig'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['name'],
        )
        .value,
    dependencies: [
      AppEngineHttpTarget.$schema,
      HttpTarget.$schema,
      PubsubTarget.$schema,
      RetryConfig.$schema,
      Timeouts.$schema,
    ],
  );
}
