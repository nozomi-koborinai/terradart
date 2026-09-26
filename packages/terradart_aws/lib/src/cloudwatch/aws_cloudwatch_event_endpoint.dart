// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_endpoint`.
const Set<String> _awsCloudwatchEventEndpointSensitive = <String>{};

/// Typed helper for the `event_bus` block of
/// `aws_cloudwatch_event_endpoint` (derived from provider schema).
@immutable
final class CloudwatchEventEndpointEventBus {
  const CloudwatchEventEndpointEventBus({required this.eventBusArn});

  final TfArg<String> eventBusArn;

  Map<String, Object?> encode() => {'event_bus_arn': eventBusArn.toTfJson()};
}

/// Typed helper for the `replication_config` block of
/// `aws_cloudwatch_event_endpoint` (derived from provider schema).
@immutable
final class CloudwatchEventEndpointReplicationConfig {
  const CloudwatchEventEndpointReplicationConfig({this.state});

  final TfArg<String>? state;

  Map<String, Object?> encode() => {
    if (state != null) 'state': state!.toTfJson(),
  };
}

/// Typed helper for the `routing_config` block of
/// `aws_cloudwatch_event_endpoint` (derived from provider schema).
@immutable
final class CloudwatchEventEndpointRoutingConfig {
  const CloudwatchEventEndpointRoutingConfig({required this.failoverConfig});

  final CloudwatchEventEndpointRoutingConfigFailoverConfig failoverConfig;

  Map<String, Object?> encode() => {'failover_config': failoverConfig.encode()};
}

/// Typed helper for the `routing_config.failover_config` block of
/// `aws_cloudwatch_event_endpoint` (derived from provider schema).
@immutable
final class CloudwatchEventEndpointRoutingConfigFailoverConfig {
  const CloudwatchEventEndpointRoutingConfigFailoverConfig({
    required this.primary,
    required this.secondary,
  });

  final CloudwatchEventEndpointRoutingConfigFailoverConfigPrimary primary;

  final CloudwatchEventEndpointRoutingConfigFailoverConfigSecondary secondary;

  Map<String, Object?> encode() => {
    'primary': primary.encode(),
    'secondary': secondary.encode(),
  };
}

/// Typed helper for the `routing_config.failover_config.primary` block of
/// `aws_cloudwatch_event_endpoint` (derived from provider schema).
@immutable
final class CloudwatchEventEndpointRoutingConfigFailoverConfigPrimary {
  const CloudwatchEventEndpointRoutingConfigFailoverConfigPrimary({
    this.healthCheck,
  });

  final TfArg<String>? healthCheck;

  Map<String, Object?> encode() => {
    if (healthCheck != null) 'health_check': healthCheck!.toTfJson(),
  };
}

/// Typed helper for the `routing_config.failover_config.secondary` block of
/// `aws_cloudwatch_event_endpoint` (derived from provider schema).
@immutable
final class CloudwatchEventEndpointRoutingConfigFailoverConfigSecondary {
  const CloudwatchEventEndpointRoutingConfigFailoverConfigSecondary({
    this.route,
  });

  final TfArg<String>? route;

  Map<String, Object?> encode() => {
    if (route != null) 'route': route!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_event_endpoint`.
final class AwsCloudwatchEventEndpoint extends Resource {
  static const String tfType = 'aws_cloudwatch_event_endpoint';

  AwsCloudwatchEventEndpoint({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    required List<CloudwatchEventEndpointEventBus> eventBus,
    CloudwatchEventEndpointReplicationConfig? replicationConfig,
    required CloudwatchEventEndpointRoutingConfig routingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           'event_bus': TfArg.literal([for (final e in eventBus) e.encode()]),
           if (replicationConfig != null)
             'replication_config': TfArg.literal(replicationConfig.encode()),
           'routing_config': TfArg.literal(routingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventEndpointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint_url` attribute.
  TfRef<String> get endpointUrl =>
      TfRef.attribute<String>(this, 'endpoint_url');
}
