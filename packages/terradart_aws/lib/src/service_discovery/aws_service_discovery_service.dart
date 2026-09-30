// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service_discovery_service`.
const Set<String> _awsServiceDiscoveryServiceSensitive = <String>{};

/// Service Discovery Service enum for `type`.
enum ServiceDiscoveryServiceType implements TerraformEnum {
  http('HTTP');

  const ServiceDiscoveryServiceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `dns_config` block of
/// `aws_service_discovery_service` (derived from provider schema).
@immutable
final class ServiceDiscoveryServiceDnsConfig {
  const ServiceDiscoveryServiceDnsConfig({
    required this.namespaceId,
    this.routingPolicy,
    required this.dnsRecords,
  });

  final TfArg<String> namespaceId;

  final TfArg<ServiceDiscoveryServiceRoutingPolicy>? routingPolicy;

  final List<ServiceDiscoveryServiceDnsRecords> dnsRecords;

  Map<String, Object?> encode() => {
    'namespace_id': namespaceId.toTfJson(),
    'routing_policy': ?routingPolicy?.toTfJson(),
    'dns_records': [for (final e in dnsRecords) e.encode()],
  };
}

/// `routing_policy` — derived from the provider schema description.
enum ServiceDiscoveryServiceRoutingPolicy implements TerraformEnum {
  multivalue('MULTIVALUE'),
  weighted('WEIGHTED');

  const ServiceDiscoveryServiceRoutingPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `dns_config.dns_records` block of
/// `aws_service_discovery_service` (derived from provider schema).
@immutable
final class ServiceDiscoveryServiceDnsRecords {
  const ServiceDiscoveryServiceDnsRecords({
    required this.ttl,
    required this.type,
  });

  final TfArg<num> ttl;

  final TfArg<ServiceDiscoveryServiceDnsRecordsType> type;

  Map<String, Object?> encode() => {
    'ttl': ttl.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ServiceDiscoveryServiceDnsRecordsType implements TerraformEnum {
  srv('SRV'),
  a('A'),
  aaaa('AAAA'),
  cname('CNAME');

  const ServiceDiscoveryServiceDnsRecordsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `health_check_config` block of
/// `aws_service_discovery_service` (derived from provider schema).
@immutable
final class ServiceDiscoveryServiceHealthCheckConfig {
  const ServiceDiscoveryServiceHealthCheckConfig({
    this.failureThreshold,
    this.resourcePath,
    this.type,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<String>? resourcePath;

  final TfArg<ServiceDiscoveryServiceHealthCheckConfigType>? type;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'resource_path': ?resourcePath?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ServiceDiscoveryServiceHealthCheckConfigType implements TerraformEnum {
  http('HTTP'),
  https('HTTPS'),
  tcp('TCP');

  const ServiceDiscoveryServiceHealthCheckConfigType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `health_check_custom_config` block of
/// `aws_service_discovery_service` (derived from provider schema).
@immutable
final class ServiceDiscoveryServiceHealthCheckCustomConfig {
  const ServiceDiscoveryServiceHealthCheckCustomConfig({this.failureThreshold});

  final TfArg<num>? failureThreshold;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
  };
}

/// Factory wrapper for `aws_service_discovery_service`.
final class AwsServiceDiscoveryService extends Resource {
  static const String tfType = 'aws_service_discovery_service';

  AwsServiceDiscoveryService({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? forceDestroy,
    required TfArg<String> name,
    TfArg<String>? namespaceId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<ServiceDiscoveryServiceType>? type,
    ServiceDiscoveryServiceDnsConfig? dnsConfig,
    ServiceDiscoveryServiceHealthCheckConfig? healthCheckConfig,
    ServiceDiscoveryServiceHealthCheckCustomConfig? healthCheckCustomConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'force_destroy': ?forceDestroy,
           'name': name,
           'namespace_id': ?namespaceId,
           'region': ?region,
           'tags': ?tags,
           'type': ?type,
           if (dnsConfig != null)
             'dns_config': TfArg.literal(dnsConfig.encode()),
           if (healthCheckConfig != null)
             'health_check_config': TfArg.literal(healthCheckConfig.encode()),
           if (healthCheckCustomConfig != null)
             'health_check_custom_config': TfArg.literal(
               healthCheckCustomConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServiceDiscoveryServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServiceDiscoveryService>`.
  RefTo<AwsServiceDiscoveryService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceIdRef =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
