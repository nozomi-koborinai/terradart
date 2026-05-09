// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_cloud_tasks_queue.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class AppEngineRoutingOverride {
  /// Creates a [AppEngineRoutingOverride] from a JSON map.
  factory AppEngineRoutingOverride.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AppEngineRoutingOverride._(this._json);

  AppEngineRoutingOverride({
    String? instance,
    String? service,
    String? version,
  }) {
    _json = {'instance': ?instance, 'service': ?service, 'version': ?version};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AppEngineRoutingOverride].
  static const SchemanticType<AppEngineRoutingOverride> $schema =
      _AppEngineRoutingOverrideTypeFactory();

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

  /// Serializes this [AppEngineRoutingOverride] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AppEngineRoutingOverrideTypeFactory
    extends SchemanticType<AppEngineRoutingOverride> {
  const _AppEngineRoutingOverrideTypeFactory();

  @override
  AppEngineRoutingOverride parse(Object? json) {
    return AppEngineRoutingOverride._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AppEngineRoutingOverride',
    definition: $Schema
        .object(
          properties: {
            'instance': $Schema.string(
              description:
                  'App instance.\n\nBy default, the task is sent to an instance which is available when the task is attempted.',
            ),
            'service': $Schema.string(
              description:
                  'App service.\n\nBy default, the task is sent to the service which is the default service when the task is attempted.',
            ),
            'version': $Schema.string(
              description:
                  'App version.\n\nBy default, the task is sent to the version which is the default version when the task is attempted.',
            ),
          },
          description:
              'Overrides for task-level appEngineRouting. These settings apply only\nto App Engine tasks in this queue',
        )
        .value,
    dependencies: [],
  );
}

base class Header {
  /// Creates a [Header] from a JSON map.
  factory Header.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Header._(this._json);

  Header({required String key, required String value}) {
    _json = {'key': key, 'value': value};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Header].
  static const SchemanticType<Header> $schema = _HeaderTypeFactory();

  String get key {
    return _json['key'] as String;
  }

  set key(String value) {
    _json['key'] = value;
  }

  String get value {
    return _json['value'] as String;
  }

  set value(String value) {
    _json['value'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Header] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _HeaderTypeFactory extends SchemanticType<Header> {
  const _HeaderTypeFactory();

  @override
  Header parse(Object? json) {
    return Header._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Header',
    definition: $Schema
        .object(
          properties: {
            'key': $Schema.string(description: 'The Key of the header.'),
            'value': $Schema.string(description: 'The Value of the header.'),
          },
          required: ['key', 'value'],
          description: 'Header embodying a key and a value.',
        )
        .value,
    dependencies: [],
  );
}

base class HeaderOverrides {
  /// Creates a [HeaderOverrides] from a JSON map.
  factory HeaderOverrides.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  HeaderOverrides._(this._json);

  HeaderOverrides({required Header header}) {
    _json = {'header': header.toJson()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [HeaderOverrides].
  static const SchemanticType<HeaderOverrides> $schema =
      _HeaderOverridesTypeFactory();

  Header get header {
    return Header.fromJson(_json['header'] as Map<String, dynamic>);
  }

  set header(Header value) {
    _json['header'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [HeaderOverrides] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _HeaderOverridesTypeFactory extends SchemanticType<HeaderOverrides> {
  const _HeaderOverridesTypeFactory();

  @override
  HeaderOverrides parse(Object? json) {
    return HeaderOverrides._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'HeaderOverrides',
    definition: $Schema
        .object(
          properties: {
            'header': $Schema.fromMap({'\$ref': r'#/$defs/Header'}),
          },
          required: ['header'],
          description:
              'HTTP target headers.\n\nThis map contains the header field names and values.\nHeaders will be set when running the CreateTask and/or BufferTask.\n\nThese headers represent a subset of the headers that will be configured for the task\'s HTTP request.\nSome HTTP request headers will be ignored or replaced.\n\nHeaders which can have multiple values (according to RFC2616) can be specified using comma-separated values.\n\nThe size of the headers must be less than 80KB. Queue-level headers to override headers of all the tasks in the queue.',
        )
        .value,
    dependencies: [Header.$schema],
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

  /// Optional + Computed. Inferred from provider when null.
  String? get scope {
    return _json['scope'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
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
                  'OAuth scope to be used for generating OAuth access token.\nIf not specified, "https://www.googleapis.com/auth/cloud-platform" will be used.',
            ),
            'service_account_email': $Schema.string(
              description:
                  'Service account email to be used for generating OAuth token.\nThe service account must be within the same project as the queue.\nThe caller must have iam.serviceAccounts.actAs permission for the service account.',
            ),
          },
          required: ['service_account_email'],
          description:
              'If specified, an OAuth token is generated and attached as the Authorization header in the HTTP request.\n\nThis type of authorization should generally be used only when calling Google APIs hosted on *.googleapis.com.\nNote that both the service account email and the scope MUST be specified when using the queue-level authorization override.',
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

  /// Optional + Computed. Inferred from provider when null.
  String? get audience {
    return _json['audience'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
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
                  'Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.',
            ),
            'service_account_email': $Schema.string(
              description:
                  'Service account email to be used for generating OIDC token.\nThe service account must be within the same project as the queue.\nThe caller must have iam.serviceAccounts.actAs permission for the service account.',
            ),
          },
          required: ['service_account_email'],
          description:
              'If specified, an OIDC token is generated and attached as an Authorization header in the HTTP request.\n\nThis type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.\nNote that both the service account email and the audience MUST be specified when using the queue-level authorization override.',
        )
        .value,
    dependencies: [],
  );
}

base class PathOverride {
  /// Creates a [PathOverride] from a JSON map.
  factory PathOverride.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  PathOverride._(this._json);

  PathOverride({String? path}) {
    _json = {'path': ?path};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [PathOverride].
  static const SchemanticType<PathOverride> $schema =
      _PathOverrideTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get path {
    return _json['path'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set path(String? value) {
    if (value == null) {
      _json.remove('path');
    } else {
      _json['path'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [PathOverride] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PathOverrideTypeFactory extends SchemanticType<PathOverride> {
  const _PathOverrideTypeFactory();

  @override
  PathOverride parse(Object? json) {
    return PathOverride._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'PathOverride',
    definition: $Schema
        .object(
          properties: {
            'path': $Schema.string(
              description:
                  'The URI path (e.g., /users/1234). Default is an empty string.',
            ),
          },
          description:
              'URI path.\n\nWhen specified, replaces the existing path of the task URL.\nSetting the path value to an empty string clears the URI path segment.',
        )
        .value,
    dependencies: [],
  );
}

base class QueryOverride {
  /// Creates a [QueryOverride] from a JSON map.
  factory QueryOverride.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  QueryOverride._(this._json);

  QueryOverride({String? queryParams}) {
    _json = {'query_params': ?queryParams};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [QueryOverride].
  static const SchemanticType<QueryOverride> $schema =
      _QueryOverrideTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get queryParams {
    return _json['query_params'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set queryParams(String? value) {
    if (value == null) {
      _json.remove('query_params');
    } else {
      _json['query_params'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [QueryOverride] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _QueryOverrideTypeFactory extends SchemanticType<QueryOverride> {
  const _QueryOverrideTypeFactory();

  @override
  QueryOverride parse(Object? json) {
    return QueryOverride._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'QueryOverride',
    definition: $Schema
        .object(
          properties: {
            'query_params': $Schema.string(
              description:
                  'The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.',
            ),
          },
          description:
              'URI query.\n\nWhen specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.',
        )
        .value,
    dependencies: [],
  );
}

base class UriOverride {
  /// Creates a [UriOverride] from a JSON map.
  factory UriOverride.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  UriOverride._(this._json);

  UriOverride({
    String? host,
    String? port,
    String? scheme,
    String? uriOverrideEnforceMode,
    PathOverride? pathOverride,
    QueryOverride? queryOverride,
  }) {
    _json = {
      'host': ?host,
      'port': ?port,
      'scheme': ?scheme,
      'uri_override_enforce_mode': ?uriOverrideEnforceMode,
      'path_override': ?pathOverride?.toJson(),
      'query_override': ?queryOverride?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [UriOverride].
  static const SchemanticType<UriOverride> $schema = _UriOverrideTypeFactory();

  String? get host {
    return _json['host'] as String?;
  }

  set host(String? value) {
    if (value == null) {
      _json.remove('host');
    } else {
      _json['host'] = value;
    }
  }

  String? get port {
    return _json['port'] as String?;
  }

  set port(String? value) {
    if (value == null) {
      _json.remove('port');
    } else {
      _json['port'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get scheme {
    return _json['scheme'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set scheme(String? value) {
    if (value == null) {
      _json.remove('scheme');
    } else {
      _json['scheme'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get uriOverrideEnforceMode {
    return _json['uri_override_enforce_mode'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set uriOverrideEnforceMode(String? value) {
    if (value == null) {
      _json.remove('uri_override_enforce_mode');
    } else {
      _json['uri_override_enforce_mode'] = value;
    }
  }

  PathOverride? get pathOverride {
    return _json['path_override'] == null
        ? null
        : PathOverride.fromJson(_json['path_override'] as Map<String, dynamic>);
  }

  set pathOverride(PathOverride? value) {
    if (value == null) {
      _json.remove('path_override');
    } else {
      _json['path_override'] = value;
    }
  }

  QueryOverride? get queryOverride {
    return _json['query_override'] == null
        ? null
        : QueryOverride.fromJson(
            _json['query_override'] as Map<String, dynamic>,
          );
  }

  set queryOverride(QueryOverride? value) {
    if (value == null) {
      _json.remove('query_override');
    } else {
      _json['query_override'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [UriOverride] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _UriOverrideTypeFactory extends SchemanticType<UriOverride> {
  const _UriOverrideTypeFactory();

  @override
  UriOverride parse(Object? json) {
    return UriOverride._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'UriOverride',
    definition: $Schema
        .object(
          properties: {
            'host': $Schema.string(
              description:
                  'Host override.\n\nWhen specified, replaces the host part of the task URL.\nFor example, if the task URL is "https://www.google.com", and host value\nis set to "example.net", the overridden URI will be changed to "https://example.net".\nHost value cannot be an empty string (INVALID_ARGUMENT).',
            ),
            'port': $Schema.string(
              description:
                  'Port override.\n\nWhen specified, replaces the port part of the task URI.\nFor instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo.\nNote that the port value must be a positive integer.\nSetting the port to 0 (Zero) clears the URI port.',
            ),
            'scheme': $Schema.string(
              description:
                  'Scheme override.\n\nWhen specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS). Possible values: ["HTTP", "HTTPS"]',
            ),
            'uri_override_enforce_mode': $Schema.string(
              description:
                  'URI Override Enforce Mode\n\nWhen specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS. Possible values: ["ALWAYS", "IF_NOT_EXISTS"]',
            ),
            'path_override': $Schema.fromMap({
              '\$ref': r'#/$defs/PathOverride',
            }),
            'query_override': $Schema.fromMap({
              '\$ref': r'#/$defs/QueryOverride',
            }),
          },
          description:
              'URI override.\n\nWhen specified, overrides the execution URI for all the tasks in the queue.',
        )
        .value,
    dependencies: [PathOverride.$schema, QueryOverride.$schema],
  );
}

base class HttpTarget {
  /// Creates a [HttpTarget] from a JSON map.
  factory HttpTarget.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  HttpTarget._(this._json);

  HttpTarget({
    String? httpMethod,
    List<HeaderOverrides>? headerOverrides,
    OauthToken? oauthToken,
    OidcToken? oidcToken,
    UriOverride? uriOverride,
  }) {
    _json = {
      'http_method': ?httpMethod,
      'header_overrides': ?headerOverrides?.map((e) => e.toJson()).toList(),
      'oauth_token': ?oauthToken?.toJson(),
      'oidc_token': ?oidcToken?.toJson(),
      'uri_override': ?uriOverride?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [HttpTarget].
  static const SchemanticType<HttpTarget> $schema = _HttpTargetTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get httpMethod {
    return _json['http_method'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set httpMethod(String? value) {
    if (value == null) {
      _json.remove('http_method');
    } else {
      _json['http_method'] = value;
    }
  }

  List<HeaderOverrides>? get headerOverrides {
    return (_json['header_overrides'] as List?)
        ?.map((e) => HeaderOverrides.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set headerOverrides(List<HeaderOverrides>? value) {
    if (value == null) {
      _json.remove('header_overrides');
    } else {
      _json['header_overrides'] = value.toList();
    }
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

  UriOverride? get uriOverride {
    return _json['uri_override'] == null
        ? null
        : UriOverride.fromJson(_json['uri_override'] as Map<String, dynamic>);
  }

  set uriOverride(UriOverride? value) {
    if (value == null) {
      _json.remove('uri_override');
    } else {
      _json['uri_override'] = value;
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
            'http_method': $Schema.string(
              description:
                  'The HTTP method to use for the request.\n\nWhen specified, it overrides HttpRequest for the task.\nNote that if the value is set to GET the body of the task will be ignored at execution time. Possible values: ["HTTP_METHOD_UNSPECIFIED", "POST", "GET", "HEAD", "PUT", "DELETE", "PATCH", "OPTIONS"]',
            ),
            'header_overrides': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/HeaderOverrides'}),
            ),
            'oauth_token': $Schema.fromMap({'\$ref': r'#/$defs/OauthToken'}),
            'oidc_token': $Schema.fromMap({'\$ref': r'#/$defs/OidcToken'}),
            'uri_override': $Schema.fromMap({'\$ref': r'#/$defs/UriOverride'}),
          },
          description: 'Modifies HTTP target for HTTP tasks.',
        )
        .value,
    dependencies: [
      HeaderOverrides.$schema,
      OauthToken.$schema,
      OidcToken.$schema,
      UriOverride.$schema,
    ],
  );
}

base class RateLimits {
  /// Creates a [RateLimits] from a JSON map.
  factory RateLimits.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  RateLimits._(this._json);

  RateLimits({num? maxConcurrentDispatches, num? maxDispatchesPerSecond}) {
    _json = {
      'max_concurrent_dispatches': ?maxConcurrentDispatches,
      'max_dispatches_per_second': ?maxDispatchesPerSecond,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [RateLimits].
  static const SchemanticType<RateLimits> $schema = _RateLimitsTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get maxConcurrentDispatches {
    return _json['max_concurrent_dispatches'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxConcurrentDispatches(num? value) {
    if (value == null) {
      _json.remove('max_concurrent_dispatches');
    } else {
      _json['max_concurrent_dispatches'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get maxDispatchesPerSecond {
    return _json['max_dispatches_per_second'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxDispatchesPerSecond(num? value) {
    if (value == null) {
      _json.remove('max_dispatches_per_second');
    } else {
      _json['max_dispatches_per_second'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [RateLimits] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RateLimitsTypeFactory extends SchemanticType<RateLimits> {
  const _RateLimitsTypeFactory();

  @override
  RateLimits parse(Object? json) {
    return RateLimits._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'RateLimits',
    definition: $Schema
        .object(
          properties: {
            'max_concurrent_dispatches': $Schema.number(
              description:
                  'The maximum number of concurrent tasks that Cloud Tasks allows to\nbe dispatched for this queue. After this threshold has been\nreached, Cloud Tasks stops dispatching tasks until the number of\nconcurrent requests decreases.',
            ),
            'max_dispatches_per_second': $Schema.number(
              description:
                  'The maximum rate at which tasks are dispatched from this queue.\n\nIf unspecified when the queue is created, Cloud Tasks will pick the default.',
            ),
          },
          description:
              'Rate limits for task dispatches.\n\nThe queue\'s actual dispatch rate is the result of:\n\n* Number of tasks in the queue\n* User-specified throttling: rateLimits, retryConfig, and the queue\'s state.\n* System throttling due to 429 (Too Many Requests) or 503 (Service\n  Unavailable) responses from the worker, high error rates, or to\n  smooth sudden large traffic spikes.',
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
    num? maxAttempts,
    String? maxBackoff,
    num? maxDoublings,
    String? maxRetryDuration,
    String? minBackoff,
  }) {
    _json = {
      'max_attempts': ?maxAttempts,
      'max_backoff': ?maxBackoff,
      'max_doublings': ?maxDoublings,
      'max_retry_duration': ?maxRetryDuration,
      'min_backoff': ?minBackoff,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [RetryConfig].
  static const SchemanticType<RetryConfig> $schema = _RetryConfigTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get maxAttempts {
    return _json['max_attempts'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxAttempts(num? value) {
    if (value == null) {
      _json.remove('max_attempts');
    } else {
      _json['max_attempts'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get maxBackoff {
    return _json['max_backoff'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxBackoff(String? value) {
    if (value == null) {
      _json.remove('max_backoff');
    } else {
      _json['max_backoff'] = value;
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
  String? get minBackoff {
    return _json['min_backoff'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set minBackoff(String? value) {
    if (value == null) {
      _json.remove('min_backoff');
    } else {
      _json['min_backoff'] = value;
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
            'max_attempts': $Schema.number(
              description:
                  'Number of attempts per task.\n\nCloud Tasks will attempt the task maxAttempts times (that is, if\nthe first attempt fails, then there will be maxAttempts - 1\nretries). Must be >= -1.\n\nIf unspecified when the queue is created, Cloud Tasks will pick\nthe default.\n\n-1 indicates unlimited attempts.',
            ),
            'max_backoff': $Schema.string(
              description:
                  'A task will be scheduled for retry between minBackoff and\nmaxBackoff duration after it fails, if the queue\'s RetryConfig\nspecifies that the task should be retried.',
            ),
            'max_doublings': $Schema.number(
              description:
                  'The time between retries will double maxDoublings times.\n\nA task\'s retry interval starts at minBackoff, then doubles maxDoublings times,\nthen increases linearly, and finally retries retries at intervals of maxBackoff\nup to maxAttempts times.',
            ),
            'max_retry_duration': $Schema.string(
              description:
                  'If positive, maxRetryDuration specifies the time limit for\nretrying a failed task, measured from when the task was first\nattempted. Once maxRetryDuration time has passed and the task has\nbeen attempted maxAttempts times, no further attempts will be\nmade and the task will be deleted.\n\nIf zero, then the task age is unlimited.',
            ),
            'min_backoff': $Schema.string(
              description:
                  'A task will be scheduled for retry between minBackoff and\nmaxBackoff duration after it fails, if the queue\'s RetryConfig\nspecifies that the task should be retried.',
            ),
          },
          description: 'Settings that determine the retry behavior.',
        )
        .value,
    dependencies: [],
  );
}

base class StackdriverLoggingConfig {
  /// Creates a [StackdriverLoggingConfig] from a JSON map.
  factory StackdriverLoggingConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  StackdriverLoggingConfig._(this._json);

  StackdriverLoggingConfig({required num samplingRatio}) {
    _json = {'sampling_ratio': samplingRatio};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [StackdriverLoggingConfig].
  static const SchemanticType<StackdriverLoggingConfig> $schema =
      _StackdriverLoggingConfigTypeFactory();

  num get samplingRatio {
    return _json['sampling_ratio'] as num;
  }

  set samplingRatio(num value) {
    _json['sampling_ratio'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [StackdriverLoggingConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _StackdriverLoggingConfigTypeFactory
    extends SchemanticType<StackdriverLoggingConfig> {
  const _StackdriverLoggingConfigTypeFactory();

  @override
  StackdriverLoggingConfig parse(Object? json) {
    return StackdriverLoggingConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'StackdriverLoggingConfig',
    definition: $Schema
        .object(
          properties: {
            'sampling_ratio': $Schema.number(
              description:
                  'Specifies the fraction of operations to write to Stackdriver Logging.\nThis field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the\ndefault and means that no operations are logged.',
            ),
          },
          required: ['sampling_ratio'],
          description:
              'Configuration options for writing logs to Stackdriver Logging.',
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

base class GoogleCloudTasksQueue {
  /// Creates a [GoogleCloudTasksQueue] from a JSON map.
  factory GoogleCloudTasksQueue.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleCloudTasksQueue._(this._json);

  GoogleCloudTasksQueue({
    String? desiredState,
    String? id,
    required String location,
    required String name,
    String? project,
    AppEngineRoutingOverride? appEngineRoutingOverride,
    HttpTarget? httpTarget,
    RateLimits? rateLimits,
    RetryConfig? retryConfig,
    StackdriverLoggingConfig? stackdriverLoggingConfig,
    Timeouts? timeouts,
  }) {
    _json = {
      'desired_state': ?desiredState,
      'id': ?id,
      'location': location,
      'name': name,
      'project': ?project,
      'app_engine_routing_override': ?appEngineRoutingOverride?.toJson(),
      'http_target': ?httpTarget?.toJson(),
      'rate_limits': ?rateLimits?.toJson(),
      'retry_config': ?retryConfig?.toJson(),
      'stackdriver_logging_config': ?stackdriverLoggingConfig?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleCloudTasksQueue].
  static const SchemanticType<GoogleCloudTasksQueue> $schema =
      _GoogleCloudTasksQueueTypeFactory();

  String? get desiredState {
    return _json['desired_state'] as String?;
  }

  set desiredState(String? value) {
    if (value == null) {
      _json.remove('desired_state');
    } else {
      _json['desired_state'] = value;
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

  String get location {
    return _json['location'] as String;
  }

  set location(String value) {
    _json['location'] = value;
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
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

  AppEngineRoutingOverride? get appEngineRoutingOverride {
    return _json['app_engine_routing_override'] == null
        ? null
        : AppEngineRoutingOverride.fromJson(
            _json['app_engine_routing_override'] as Map<String, dynamic>,
          );
  }

  set appEngineRoutingOverride(AppEngineRoutingOverride? value) {
    if (value == null) {
      _json.remove('app_engine_routing_override');
    } else {
      _json['app_engine_routing_override'] = value;
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

  RateLimits? get rateLimits {
    return _json['rate_limits'] == null
        ? null
        : RateLimits.fromJson(_json['rate_limits'] as Map<String, dynamic>);
  }

  set rateLimits(RateLimits? value) {
    if (value == null) {
      _json.remove('rate_limits');
    } else {
      _json['rate_limits'] = value;
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

  StackdriverLoggingConfig? get stackdriverLoggingConfig {
    return _json['stackdriver_logging_config'] == null
        ? null
        : StackdriverLoggingConfig.fromJson(
            _json['stackdriver_logging_config'] as Map<String, dynamic>,
          );
  }

  set stackdriverLoggingConfig(StackdriverLoggingConfig? value) {
    if (value == null) {
      _json.remove('stackdriver_logging_config');
    } else {
      _json['stackdriver_logging_config'] = value;
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

  /// Serializes this [GoogleCloudTasksQueue] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleCloudTasksQueueTypeFactory
    extends SchemanticType<GoogleCloudTasksQueue> {
  const _GoogleCloudTasksQueueTypeFactory();

  @override
  GoogleCloudTasksQueue parse(Object? json) {
    return GoogleCloudTasksQueue._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleCloudTasksQueue',
    definition: $Schema
        .object(
          properties: {
            'desired_state': $Schema.string(
              description:
                  'The desired state of the queue. Use this to pause and resume the queue.\n\n* RUNNING: The queue is running. Tasks can be dispatched.\n* PAUSED: The queue is paused. Tasks are not dispatched but can be added to the queue. Default value: "RUNNING" Possible values: ["RUNNING", "PAUSED"]',
            ),
            'id': $Schema.string(),
            'location': $Schema.string(
              description: 'The location of the queue',
            ),
            'name': $Schema.string(description: 'The queue name.'),
            'project': $Schema.string(),
            'app_engine_routing_override': $Schema.fromMap({
              '\$ref': r'#/$defs/AppEngineRoutingOverride',
            }),
            'http_target': $Schema.fromMap({'\$ref': r'#/$defs/HttpTarget'}),
            'rate_limits': $Schema.fromMap({'\$ref': r'#/$defs/RateLimits'}),
            'retry_config': $Schema.fromMap({'\$ref': r'#/$defs/RetryConfig'}),
            'stackdriver_logging_config': $Schema.fromMap({
              '\$ref': r'#/$defs/StackdriverLoggingConfig',
            }),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['location', 'name'],
        )
        .value,
    dependencies: [
      AppEngineRoutingOverride.$schema,
      HttpTarget.$schema,
      RateLimits.$schema,
      RetryConfig.$schema,
      StackdriverLoggingConfig.$schema,
      Timeouts.$schema,
    ],
  );
}
