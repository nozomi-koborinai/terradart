// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service_discovery_service`.
const Set<String> _awsServiceDiscoveryServiceSensitive = <String>{};

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

  final TfArg<String>? routingPolicy;

  final List<ServiceDiscoveryServiceDnsConfigDnsRecords> dnsRecords;

  Map<String, Object?> encode() => {
    'namespace_id': namespaceId.toTfJson(),
    if (routingPolicy != null) 'routing_policy': routingPolicy!.toTfJson(),
    'dns_records': [for (final e in dnsRecords) e.encode()],
  };
}

/// Typed helper for the `dns_config.dns_records` block of
/// `aws_service_discovery_service` (derived from provider schema).
@immutable
final class ServiceDiscoveryServiceDnsConfigDnsRecords {
  const ServiceDiscoveryServiceDnsConfigDnsRecords({
    required this.ttl,
    required this.type,
  });

  final TfArg<num> ttl;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'ttl': ttl.toTfJson(),
    'type': type.toTfJson(),
  };
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

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (failureThreshold != null)
      'failure_threshold': failureThreshold!.toTfJson(),
    if (resourcePath != null) 'resource_path': resourcePath!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `health_check_custom_config` block of
/// `aws_service_discovery_service` (derived from provider schema).
@immutable
final class ServiceDiscoveryServiceHealthCheckCustomConfig {
  const ServiceDiscoveryServiceHealthCheckCustomConfig({this.failureThreshold});

  final TfArg<num>? failureThreshold;

  Map<String, Object?> encode() => {
    if (failureThreshold != null)
      'failure_threshold': failureThreshold!.toTfJson(),
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
    TfArg<String>? type,
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
           if (description != null) 'description': description,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'name': name,
           if (namespaceId != null) 'namespace_id': namespaceId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
