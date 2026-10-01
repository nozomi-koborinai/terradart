// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service_discovery_service`.
const Set<String> _awsServiceDiscoveryServiceSensitive = <String>{};

/// Service Discovery Service enum for `type`.
extension type const ServiceDiscoveryServiceType._(TfArg<String> _)
    implements TfArg<String> {
  ServiceDiscoveryServiceType.variable(String name)
    : this._(TfArg.variable(name));
  ServiceDiscoveryServiceType.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceDiscoveryServiceType.arg(TfArg<String> arg) : this._(arg);

  static const http = ServiceDiscoveryServiceType._(TfArgLiteral('HTTP'));

  static const List<ServiceDiscoveryServiceType> values = [http];
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

  final ServiceDiscoveryServiceRoutingPolicy? routingPolicy;

  final List<ServiceDiscoveryServiceDnsRecords> dnsRecords;

  Map<String, Object?> encode() => {
    'namespace_id': namespaceId.toTfJson(),
    'routing_policy': ?routingPolicy?.toTfJson(),
    'dns_records': [for (final e in dnsRecords) e.encode()],
  };
}

/// `routing_policy` — derived from the provider schema description.
extension type const ServiceDiscoveryServiceRoutingPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ServiceDiscoveryServiceRoutingPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ServiceDiscoveryServiceRoutingPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceDiscoveryServiceRoutingPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const multivalue = ServiceDiscoveryServiceRoutingPolicy._(
    TfArgLiteral('MULTIVALUE'),
  );
  static const weighted = ServiceDiscoveryServiceRoutingPolicy._(
    TfArgLiteral('WEIGHTED'),
  );

  static const List<ServiceDiscoveryServiceRoutingPolicy> values = [
    multivalue,
    weighted,
  ];
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

  final ServiceDiscoveryServiceDnsRecordsType type;

  Map<String, Object?> encode() => {
    'ttl': ttl.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ServiceDiscoveryServiceDnsRecordsType._(TfArg<String> _)
    implements TfArg<String> {
  ServiceDiscoveryServiceDnsRecordsType.variable(String name)
    : this._(TfArg.variable(name));
  ServiceDiscoveryServiceDnsRecordsType.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceDiscoveryServiceDnsRecordsType.arg(TfArg<String> arg)
    : this._(arg);

  static const srv = ServiceDiscoveryServiceDnsRecordsType._(
    TfArgLiteral('SRV'),
  );
  static const a = ServiceDiscoveryServiceDnsRecordsType._(TfArgLiteral('A'));
  static const aaaa = ServiceDiscoveryServiceDnsRecordsType._(
    TfArgLiteral('AAAA'),
  );
  static const cname = ServiceDiscoveryServiceDnsRecordsType._(
    TfArgLiteral('CNAME'),
  );

  static const List<ServiceDiscoveryServiceDnsRecordsType> values = [
    srv,
    a,
    aaaa,
    cname,
  ];
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

  final ServiceDiscoveryServiceHealthCheckConfigType? type;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'resource_path': ?resourcePath?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ServiceDiscoveryServiceHealthCheckConfigType._(
  TfArg<String> _
) implements TfArg<String> {
  ServiceDiscoveryServiceHealthCheckConfigType.variable(String name)
    : this._(TfArg.variable(name));
  ServiceDiscoveryServiceHealthCheckConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceDiscoveryServiceHealthCheckConfigType.arg(TfArg<String> arg)
    : this._(arg);

  static const http = ServiceDiscoveryServiceHealthCheckConfigType._(
    TfArgLiteral('HTTP'),
  );
  static const https = ServiceDiscoveryServiceHealthCheckConfigType._(
    TfArgLiteral('HTTPS'),
  );
  static const tcp = ServiceDiscoveryServiceHealthCheckConfigType._(
    TfArgLiteral('TCP'),
  );

  static const List<ServiceDiscoveryServiceHealthCheckConfigType> values = [
    http,
    https,
    tcp,
  ];
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

  AwsServiceDiscoveryService(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? forceDestroy,
    required TfArg<String> name,
    TfArg<String>? namespaceId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ServiceDiscoveryServiceType? type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
