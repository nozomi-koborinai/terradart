// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_backend`.
const Set<String> _azurermApiManagementBackendSensitive = <String>{
  'proxy.password',
};

/// Api Management Backend enum for `protocol`.
extension type const ApiManagementBackendProtocol._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementBackendProtocol.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementBackendProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementBackendProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = ApiManagementBackendProtocol._(TfArgLiteral('http'));
  static const soap = ApiManagementBackendProtocol._(TfArgLiteral('soap'));

  static const List<ApiManagementBackendProtocol> values = [http, soap];
}

/// Typed helper for the `circuit_breaker_rule` block of
/// `azurerm_api_management_backend` (derived from provider schema).
@immutable
final class ApiManagementBackendCircuitBreakerRule {
  const ApiManagementBackendCircuitBreakerRule({
    this.acceptRetryAfterEnabled,
    required this.name,
    required this.tripDuration,
    required this.failureCondition,
  });

  final TfArg<bool>? acceptRetryAfterEnabled;

  final TfArg<String> name;

  final TfArg<String> tripDuration;

  final ApiManagementBackendFailureCondition failureCondition;

  @internal
  Map<String, Object?> encode() => {
    'accept_retry_after_enabled': ?acceptRetryAfterEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'trip_duration': tripDuration.toTfJson(),
    'failure_condition': failureCondition.encode(),
  };
}

/// Typed helper for the `circuit_breaker_rule.failure_condition` block of
/// `azurerm_api_management_backend` (derived from provider schema).
@immutable
final class ApiManagementBackendFailureCondition {
  const ApiManagementBackendFailureCondition({
    required this.threshold,
    this.errorReasons,
    required this.intervalDuration,
    this.statusCodeRange,
  });

  final ApiManagementBackendThreshold threshold;

  final TfArg<List<String>>? errorReasons;

  final TfArg<String> intervalDuration;

  final List<ApiManagementBackendStatusCodeRange>? statusCodeRange;

  @internal
  Map<String, Object?> encode() => {
    ...threshold.encode(),
    'error_reasons': ?errorReasons?.toTfJson(),
    'interval_duration': intervalDuration.toTfJson(),
    if (statusCodeRange != null)
      'status_code_range': [for (final e in statusCodeRange!) e.encode()],
  };
}

/// Exactly one of `count`, `percentage` on the `circuit_breaker_rule.failure_condition` block of `azurerm_api_management_backend`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.count(...)`.
sealed class ApiManagementBackendThreshold {
  const ApiManagementBackendThreshold();

  /// Sets `count`.
  const factory ApiManagementBackendThreshold.count(TfArg<num> count) =
      ApiManagementBackendThresholdCount;

  /// Sets `percentage`.
  const factory ApiManagementBackendThreshold.percentage(
    TfArg<num> percentage,
  ) = ApiManagementBackendThresholdPercentage;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ApiManagementBackendThreshold.count] choice: sets `count`.
final class ApiManagementBackendThresholdCount
    extends ApiManagementBackendThreshold {
  const ApiManagementBackendThresholdCount(this.count);

  final TfArg<num> count;

  @internal
  @override
  String get blockKey => 'count';

  @internal
  @override
  Map<String, Object?> encode() => {'count': count.toTfJson()};
}

/// The [ApiManagementBackendThreshold.percentage] choice: sets `percentage`.
final class ApiManagementBackendThresholdPercentage
    extends ApiManagementBackendThreshold {
  const ApiManagementBackendThresholdPercentage(this.percentage);

  final TfArg<num> percentage;

  @internal
  @override
  String get blockKey => 'percentage';

  @internal
  @override
  Map<String, Object?> encode() => {'percentage': percentage.toTfJson()};
}

/// Typed helper for the `circuit_breaker_rule.failure_condition.status_code_range` block of
/// `azurerm_api_management_backend` (derived from provider schema).
@immutable
final class ApiManagementBackendStatusCodeRange {
  const ApiManagementBackendStatusCodeRange({
    required this.max,
    required this.min,
  });

  final TfArg<num> max;

  final TfArg<num> min;

  @internal
  Map<String, Object?> encode() => {
    'max': max.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `credentials` block of
/// `azurerm_api_management_backend` (derived from provider schema).
@immutable
final class ApiManagementBackendCredentials {
  const ApiManagementBackendCredentials({
    this.certificate,
    this.header,
    this.query,
    this.authorization,
  });

  final TfArg<List<String>>? certificate;

  final TfArg<Map<String, String>>? header;

  final TfArg<Map<String, String>>? query;

  final ApiManagementBackendAuthorization? authorization;

  @internal
  Map<String, Object?> encode() => {
    'certificate': ?certificate?.toTfJson(),
    'header': ?header?.toTfJson(),
    'query': ?query?.toTfJson(),
    'authorization': ?authorization?.encode(),
  };
}

/// Typed helper for the `credentials.authorization` block of
/// `azurerm_api_management_backend` (derived from provider schema).
@immutable
final class ApiManagementBackendAuthorization {
  const ApiManagementBackendAuthorization({this.parameter, this.scheme});

  final TfArg<String>? parameter;

  final TfArg<String>? scheme;

  @internal
  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'scheme': ?scheme?.toTfJson(),
  };
}

/// Typed helper for the `proxy` block of
/// `azurerm_api_management_backend` (derived from provider schema).
@immutable
final class ApiManagementBackendProxy {
  const ApiManagementBackendProxy({
    this.password,
    required this.url,
    this.username,
  });

  final Sensitive<String>? password;

  final TfArg<String> url;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'url': url.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `service_fabric_cluster` block of
/// `azurerm_api_management_backend` (derived from provider schema).
@immutable
final class ApiManagementBackendServiceFabricCluster {
  const ApiManagementBackendServiceFabricCluster({
    this.clientCertificateId,
    this.clientCertificateThumbprint,
    required this.managementEndpoints,
    required this.maxPartitionResolutionRetries,
    this.server,
  });

  final TfArg<String>? clientCertificateId;

  final TfArg<String>? clientCertificateThumbprint;

  final TfArg<List<String>> managementEndpoints;

  final TfArg<num> maxPartitionResolutionRetries;

  final ApiManagementBackendServer? server;

  @internal
  Map<String, Object?> encode() => {
    'client_certificate_id': ?clientCertificateId?.toTfJson(),
    'client_certificate_thumbprint': ?clientCertificateThumbprint?.toTfJson(),
    'management_endpoints': managementEndpoints.toTfJson(),
    'max_partition_resolution_retries': maxPartitionResolutionRetries
        .toTfJson(),
    ...?server?.encode(),
  };
}

/// At most one of `server_certificate_thumbprints`, `server_x509_name` on the `service_fabric_cluster` block of `azurerm_api_management_backend`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.serverCertificateThumbprints(...)`.
sealed class ApiManagementBackendServer {
  const ApiManagementBackendServer();

  /// Sets `server_certificate_thumbprints`.
  const factory ApiManagementBackendServer.serverCertificateThumbprints(
    TfArg<List<String>> serverCertificateThumbprints,
  ) = ApiManagementBackendServerCertificateThumbprints;

  /// Sets `server_x509_name`.
  const factory ApiManagementBackendServer.serverX509Name(
    List<ApiManagementBackendServerX509Name> serverX509Name,
  ) = ApiManagementBackendServerX509NameChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ApiManagementBackendServer.serverCertificateThumbprints] choice: sets `server_certificate_thumbprints`.
final class ApiManagementBackendServerCertificateThumbprints
    extends ApiManagementBackendServer {
  const ApiManagementBackendServerCertificateThumbprints(
    this.serverCertificateThumbprints,
  );

  final TfArg<List<String>> serverCertificateThumbprints;

  @internal
  @override
  String get blockKey => 'server_certificate_thumbprints';

  @internal
  @override
  Map<String, Object?> encode() => {
    'server_certificate_thumbprints': serverCertificateThumbprints.toTfJson(),
  };
}

/// The [ApiManagementBackendServer.serverX509Name] choice: sets `server_x509_name`.
final class ApiManagementBackendServerX509NameChoice
    extends ApiManagementBackendServer {
  const ApiManagementBackendServerX509NameChoice(this.serverX509Name);

  final List<ApiManagementBackendServerX509Name> serverX509Name;

  @internal
  @override
  String get blockKey => 'server_x509_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'server_x509_name': [for (final e in serverX509Name) e.encode()],
  };
}

/// Typed helper for the `service_fabric_cluster.server_x509_name` block of
/// `azurerm_api_management_backend` (derived from provider schema).
@immutable
final class ApiManagementBackendServerX509Name {
  const ApiManagementBackendServerX509Name({
    required this.issuerCertificateThumbprint,
    required this.name,
  });

  final TfArg<String> issuerCertificateThumbprint;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'issuer_certificate_thumbprint': issuerCertificateThumbprint.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `tls` block of
/// `azurerm_api_management_backend` (derived from provider schema).
@immutable
final class ApiManagementBackendTls {
  const ApiManagementBackendTls({
    this.validateCertificateChain,
    this.validateCertificateName,
  });

  final TfArg<bool>? validateCertificateChain;

  final TfArg<bool>? validateCertificateName;

  @internal
  Map<String, Object?> encode() => {
    'validate_certificate_chain': ?validateCertificateChain?.toTfJson(),
    'validate_certificate_name': ?validateCertificateName?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_api_management_backend`.
final class AzurermApiManagementBackend extends Resource {
  static const String tfType = 'azurerm_api_management_backend';

  AzurermApiManagementBackend(
    super.localName, {
    required TfArg<String> apiManagementName,
    TfArg<String>? description,
    required TfArg<String> name,
    required ApiManagementBackendProtocol protocol,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? resourceId,
    TfArg<String>? title,
    required TfArg<String> url,
    ApiManagementBackendCircuitBreakerRule? circuitBreakerRule,
    ApiManagementBackendCredentials? credentials,
    ApiManagementBackendProxy? proxy,
    ApiManagementBackendServiceFabricCluster? serviceFabricCluster,
    ApiManagementBackendTls? tls,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'description': ?description,
           'name': name,
           'protocol': protocol,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'resource_id': ?resourceId,
           'title': ?title,
           'url': url,
           if (circuitBreakerRule != null)
             'circuit_breaker_rule': TfArg.literal(circuitBreakerRule.encode()),
           if (credentials != null)
             'credentials': TfArg.literal(credentials.encode()),
           if (proxy != null) 'proxy': TfArg.literal(proxy.encode()),
           if (serviceFabricCluster != null)
             'service_fabric_cluster': TfArg.literal(
               serviceFabricCluster.encode(),
             ),
           if (tls != null) 'tls': TfArg.literal(tls.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementBackendSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementBackend>`.
  RefTo<AzurermApiManagementBackend> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
