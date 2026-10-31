// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_gateway`.
const Set<String> _azurermSpringCloudGatewaySensitive = <String>{
  'sensitive_environment_variables',
};

/// Spring Cloud Gateway Application Performance Monitoring enum for `application_performance_monitoring_types`.
extension type const SpringCloudGatewayApplicationPerformanceMonitoringTypes._(
  TfArg<String> _
) implements TfArg<String> {
  SpringCloudGatewayApplicationPerformanceMonitoringTypes.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudGatewayApplicationPerformanceMonitoringTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SpringCloudGatewayApplicationPerformanceMonitoringTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const appdynamics =
      SpringCloudGatewayApplicationPerformanceMonitoringTypes._(
        TfArgLiteral('AppDynamics'),
      );
  static const applicationinsights =
      SpringCloudGatewayApplicationPerformanceMonitoringTypes._(
        TfArgLiteral('ApplicationInsights'),
      );
  static const dynatrace =
      SpringCloudGatewayApplicationPerformanceMonitoringTypes._(
        TfArgLiteral('Dynatrace'),
      );
  static const elasticapm =
      SpringCloudGatewayApplicationPerformanceMonitoringTypes._(
        TfArgLiteral('ElasticAPM'),
      );
  static const newrelic =
      SpringCloudGatewayApplicationPerformanceMonitoringTypes._(
        TfArgLiteral('NewRelic'),
      );

  static const List<SpringCloudGatewayApplicationPerformanceMonitoringTypes>
  values = [appdynamics, applicationinsights, dynatrace, elasticapm, newrelic];
}

/// Spring Cloud Gateway enum for `name`.
extension type const SpringCloudGatewayName._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudGatewayName.variable(String name) : this._(TfArg.variable(name));
  SpringCloudGatewayName.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudGatewayName.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = SpringCloudGatewayName._(TfArgLiteral('default'));

  static const List<SpringCloudGatewayName> values = [defaultCase];
}

/// At most one of `local_response_cache_per_instance`, `local_response_cache_per_route` on `azurerm_spring_cloud_gateway`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.localResponseCachePerInstance(...)`.
sealed class SpringCloudGatewayLocalResponseCache {
  const SpringCloudGatewayLocalResponseCache();

  /// Sets `local_response_cache_per_instance`.
  const factory SpringCloudGatewayLocalResponseCache.localResponseCachePerInstance(
    SpringCloudGatewayLocalResponseCachePerInstance
    localResponseCachePerInstance,
  ) = SpringCloudGatewayLocalResponseCachePerInstanceChoice;

  /// Sets `local_response_cache_per_route`.
  const factory SpringCloudGatewayLocalResponseCache.localResponseCachePerRoute(
    SpringCloudGatewayLocalResponseCachePerRoute localResponseCachePerRoute,
  ) = SpringCloudGatewayLocalResponseCachePerRouteChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpringCloudGatewayLocalResponseCache.localResponseCachePerInstance] choice: sets `local_response_cache_per_instance`.
final class SpringCloudGatewayLocalResponseCachePerInstanceChoice
    extends SpringCloudGatewayLocalResponseCache {
  const SpringCloudGatewayLocalResponseCachePerInstanceChoice(
    this.localResponseCachePerInstance,
  );

  final SpringCloudGatewayLocalResponseCachePerInstance
  localResponseCachePerInstance;

  @internal
  @override
  String get blockKey => 'local_response_cache_per_instance';

  @internal
  @override
  Map<String, Object?> encode() => {
    'local_response_cache_per_instance': localResponseCachePerInstance.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'local_response_cache_per_instance': TfArg.literal(
      localResponseCachePerInstance.encode(),
    ),
  };
}

/// The [SpringCloudGatewayLocalResponseCache.localResponseCachePerRoute] choice: sets `local_response_cache_per_route`.
final class SpringCloudGatewayLocalResponseCachePerRouteChoice
    extends SpringCloudGatewayLocalResponseCache {
  const SpringCloudGatewayLocalResponseCachePerRouteChoice(
    this.localResponseCachePerRoute,
  );

  final SpringCloudGatewayLocalResponseCachePerRoute localResponseCachePerRoute;

  @internal
  @override
  String get blockKey => 'local_response_cache_per_route';

  @internal
  @override
  Map<String, Object?> encode() => {
    'local_response_cache_per_route': localResponseCachePerRoute.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'local_response_cache_per_route': TfArg.literal(
      localResponseCachePerRoute.encode(),
    ),
  };
}

/// Typed helper for the `api_metadata` block of
/// `azurerm_spring_cloud_gateway` (derived from provider schema).
@immutable
final class SpringCloudGatewayApiMetadata {
  const SpringCloudGatewayApiMetadata({
    this.description,
    this.documentationUrl,
    this.serverUrl,
    this.title,
    this.version,
  });

  final TfArg<String>? description;

  final TfArg<String>? documentationUrl;

  final TfArg<String>? serverUrl;

  final TfArg<String>? title;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'documentation_url': ?documentationUrl?.toTfJson(),
    'server_url': ?serverUrl?.toTfJson(),
    'title': ?title?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `client_authorization` block of
/// `azurerm_spring_cloud_gateway` (derived from provider schema).
@immutable
final class SpringCloudGatewayClientAuthorization {
  const SpringCloudGatewayClientAuthorization({
    this.certificateIds,
    this.verificationEnabled,
  });

  final TfArg<List<String>>? certificateIds;

  final TfArg<bool>? verificationEnabled;

  @internal
  Map<String, Object?> encode() => {
    'certificate_ids': ?certificateIds?.toTfJson(),
    'verification_enabled': ?verificationEnabled?.toTfJson(),
  };
}

/// Typed helper for the `cors` block of
/// `azurerm_spring_cloud_gateway` (derived from provider schema).
@immutable
final class SpringCloudGatewayCors {
  const SpringCloudGatewayCors({
    this.allowedHeaders,
    this.allowedMethods,
    this.allowedOriginPatterns,
    this.allowedOrigins,
    this.credentialsAllowed,
    this.exposedHeaders,
    this.maxAgeSeconds,
  });

  final TfArg<List<String>>? allowedHeaders;

  final List<SpringCloudGatewayAllowedMethods>? allowedMethods;

  final TfArg<List<String>>? allowedOriginPatterns;

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? credentialsAllowed;

  final TfArg<List<String>>? exposedHeaders;

  final TfArg<num>? maxAgeSeconds;

  @internal
  Map<String, Object?> encode() => {
    'allowed_headers': ?allowedHeaders?.toTfJson(),
    if (allowedMethods != null)
      'allowed_methods': [for (final e in allowedMethods!) e.toTfJson()],
    'allowed_origin_patterns': ?allowedOriginPatterns?.toTfJson(),
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'credentials_allowed': ?credentialsAllowed?.toTfJson(),
    'exposed_headers': ?exposedHeaders?.toTfJson(),
    'max_age_seconds': ?maxAgeSeconds?.toTfJson(),
  };
}

/// `allowed_methods` — derived from the provider schema description.
extension type const SpringCloudGatewayAllowedMethods._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudGatewayAllowedMethods.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudGatewayAllowedMethods.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudGatewayAllowedMethods.arg(TfArg<String> arg) : this._(arg);

  static const delete = SpringCloudGatewayAllowedMethods._(
    TfArgLiteral('DELETE'),
  );
  static const get = SpringCloudGatewayAllowedMethods._(TfArgLiteral('GET'));
  static const head = SpringCloudGatewayAllowedMethods._(TfArgLiteral('HEAD'));
  static const merge = SpringCloudGatewayAllowedMethods._(
    TfArgLiteral('MERGE'),
  );
  static const post = SpringCloudGatewayAllowedMethods._(TfArgLiteral('POST'));
  static const options = SpringCloudGatewayAllowedMethods._(
    TfArgLiteral('OPTIONS'),
  );
  static const put = SpringCloudGatewayAllowedMethods._(TfArgLiteral('PUT'));

  static const List<SpringCloudGatewayAllowedMethods> values = [
    delete,
    get,
    head,
    merge,
    post,
    options,
    put,
  ];
}

/// Typed helper for the `local_response_cache_per_instance` block of
/// `azurerm_spring_cloud_gateway` (derived from provider schema).
@immutable
final class SpringCloudGatewayLocalResponseCachePerInstance {
  const SpringCloudGatewayLocalResponseCachePerInstance({
    this.size,
    this.timeToLive,
  });

  final TfArg<String>? size;

  final TfArg<String>? timeToLive;

  @internal
  Map<String, Object?> encode() => {
    'size': ?size?.toTfJson(),
    'time_to_live': ?timeToLive?.toTfJson(),
  };
}

/// Typed helper for the `local_response_cache_per_route` block of
/// `azurerm_spring_cloud_gateway` (derived from provider schema).
@immutable
final class SpringCloudGatewayLocalResponseCachePerRoute {
  const SpringCloudGatewayLocalResponseCachePerRoute({
    this.size,
    this.timeToLive,
  });

  final TfArg<String>? size;

  final TfArg<String>? timeToLive;

  @internal
  Map<String, Object?> encode() => {
    'size': ?size?.toTfJson(),
    'time_to_live': ?timeToLive?.toTfJson(),
  };
}

/// Typed helper for the `quota` block of
/// `azurerm_spring_cloud_gateway` (derived from provider schema).
@immutable
final class SpringCloudGatewayQuota {
  const SpringCloudGatewayQuota({this.cpu, this.memory});

  final TfArg<String>? cpu;

  final TfArg<String>? memory;

  @internal
  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
  };
}

/// Typed helper for the `sso` block of
/// `azurerm_spring_cloud_gateway` (derived from provider schema).
@immutable
final class SpringCloudGatewaySso {
  const SpringCloudGatewaySso({
    this.clientId,
    this.clientSecret,
    this.issuerUri,
    this.scope,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? issuerUri;

  final TfArg<List<String>>? scope;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'issuer_uri': ?issuerUri?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_gateway`.
final class AzurermSpringCloudGateway extends Resource {
  static const String tfType = 'azurerm_spring_cloud_gateway';

  AzurermSpringCloudGateway(
    super.localName, {
    TfArg<List<String>>? applicationPerformanceMonitoringIds,
    List<SpringCloudGatewayApplicationPerformanceMonitoringTypes>?
    applicationPerformanceMonitoringTypes,
    TfArg<Map<String, String>>? environmentVariables,
    TfArg<bool>? httpsOnly,
    TfArg<num>? instanceCount,
    required SpringCloudGatewayName name,
    TfArg<bool>? publicNetworkAccessEnabled,
    Sensitive<Map<String, String>>? sensitiveEnvironmentVariables,
    required TfArg<String> springCloudServiceId,
    SpringCloudGatewayApiMetadata? apiMetadata,
    SpringCloudGatewayClientAuthorization? clientAuthorization,
    SpringCloudGatewayCors? cors,
    SpringCloudGatewayLocalResponseCache? localResponseCache,
    SpringCloudGatewayQuota? quota,
    SpringCloudGatewaySso? sso,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_performance_monitoring_ids':
               ?applicationPerformanceMonitoringIds,
           if (applicationPerformanceMonitoringTypes != null)
             'application_performance_monitoring_types': TfArg.literal([
               for (final e in applicationPerformanceMonitoringTypes)
                 e.toTfJson(),
             ]),
           'environment_variables': ?environmentVariables,
           'https_only': ?httpsOnly,
           'instance_count': ?instanceCount,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'sensitive_environment_variables': ?sensitiveEnvironmentVariables,
           'spring_cloud_service_id': springCloudServiceId,
           if (apiMetadata != null)
             'api_metadata': TfArg.literal(apiMetadata.encode()),
           if (clientAuthorization != null)
             'client_authorization': TfArg.literal(
               clientAuthorization.encode(),
             ),
           if (cors != null) 'cors': TfArg.literal(cors.encode()),
           ...?localResponseCache?.argMap,
           if (quota != null) 'quota': TfArg.literal(quota.encode()),
           if (sso != null) 'sso': TfArg.literal(sso.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudGateway>`.
  RefTo<AzurermSpringCloudGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `application_performance_monitoring_ids` attribute.
  TfRef<List<String>> get applicationPerformanceMonitoringIds =>
      TfRef.attribute<List<String>>(
        this,
        'application_performance_monitoring_ids',
      );

  /// Reference to `application_performance_monitoring_types` attribute.
  TfRef<List<String>> get applicationPerformanceMonitoringTypes =>
      TfRef.attribute<List<String>>(
        this,
        'application_performance_monitoring_types',
      );

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `sensitive_environment_variables` attribute.
  TfRef<Map<String, String>> get sensitiveEnvironmentVariables =>
      TfRef.attribute<Map<String, String>>(
        this,
        'sensitive_environment_variables',
      );

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}
