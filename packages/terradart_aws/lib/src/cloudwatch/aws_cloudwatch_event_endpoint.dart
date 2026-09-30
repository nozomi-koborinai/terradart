// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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

  final TfArg<CloudwatchEventEndpointReplicationConfigState>? state;

  Map<String, Object?> encode() => {'state': ?state?.toTfJson()};
}

/// `state` — derived from the provider schema description.
enum CloudwatchEventEndpointReplicationConfigState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const CloudwatchEventEndpointReplicationConfigState(this.terraformValue);
  @override
  final String terraformValue;
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

  Map<String, Object?> encode() => {'health_check': ?healthCheck?.toTfJson()};
}

/// Typed helper for the `routing_config.failover_config.secondary` block of
/// `aws_cloudwatch_event_endpoint` (derived from provider schema).
@immutable
final class CloudwatchEventEndpointRoutingConfigFailoverConfigSecondary {
  const CloudwatchEventEndpointRoutingConfigFailoverConfigSecondary({
    this.route,
  });

  final TfArg<String>? route;

  Map<String, Object?> encode() => {'route': ?route?.toTfJson()};
}

/// Factory wrapper for `aws_cloudwatch_event_endpoint`.
final class AwsCloudwatchEventEndpoint extends Resource {
  static const String tfType = 'aws_cloudwatch_event_endpoint';

  AwsCloudwatchEventEndpoint({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
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
           'description': ?description,
           'name': name,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'event_bus': TfArg.literal([for (final e in eventBus) e.encode()]),
           if (replicationConfig != null)
             'replication_config': TfArg.literal(replicationConfig.encode()),
           'routing_config': TfArg.literal(routingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchEventEndpoint>`.
  RefTo<AwsCloudwatchEventEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint_url` attribute.
  TfRef<String> get endpointUrl =>
      TfRef.attribute<String>(this, 'endpoint_url');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');
}
