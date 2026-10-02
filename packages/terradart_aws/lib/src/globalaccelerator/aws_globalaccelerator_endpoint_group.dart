// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_globalaccelerator_endpoint_group`.
const Set<String> _awsGlobalacceleratorEndpointGroupSensitive = <String>{};

/// Globalaccelerator Endpoint Group Health Check enum for `health_check_protocol`.
extension type const GlobalacceleratorEndpointGroupHealthCheckProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  GlobalacceleratorEndpointGroupHealthCheckProtocol.variable(String name)
    : this._(TfArg.variable(name));
  GlobalacceleratorEndpointGroupHealthCheckProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const GlobalacceleratorEndpointGroupHealthCheckProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const tcp = GlobalacceleratorEndpointGroupHealthCheckProtocol._(
    TfArgLiteral('TCP'),
  );
  static const http = GlobalacceleratorEndpointGroupHealthCheckProtocol._(
    TfArgLiteral('HTTP'),
  );
  static const https = GlobalacceleratorEndpointGroupHealthCheckProtocol._(
    TfArgLiteral('HTTPS'),
  );

  static const List<GlobalacceleratorEndpointGroupHealthCheckProtocol> values =
      [tcp, http, https];
}

/// Typed helper for the `endpoint_configuration` block of
/// `aws_globalaccelerator_endpoint_group` (derived from provider schema).
@immutable
final class GlobalacceleratorEndpointGroupEndpointConfiguration {
  const GlobalacceleratorEndpointGroupEndpointConfiguration({
    this.attachmentArn,
    this.clientIpPreservationEnabled,
    this.endpointId,
    this.weight,
  });

  final TfArg<String>? attachmentArn;

  final TfArg<bool>? clientIpPreservationEnabled;

  final TfArg<String>? endpointId;

  final TfArg<num>? weight;

  @internal
  Map<String, Object?> encode() => {
    'attachment_arn': ?attachmentArn?.toTfJson(),
    'client_ip_preservation_enabled': ?clientIpPreservationEnabled?.toTfJson(),
    'endpoint_id': ?endpointId?.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `port_override` block of
/// `aws_globalaccelerator_endpoint_group` (derived from provider schema).
@immutable
final class GlobalacceleratorEndpointGroupPortOverride {
  const GlobalacceleratorEndpointGroupPortOverride({
    required this.endpointPort,
    required this.listenerPort,
  });

  final TfArg<num> endpointPort;

  final TfArg<num> listenerPort;

  @internal
  Map<String, Object?> encode() => {
    'endpoint_port': endpointPort.toTfJson(),
    'listener_port': listenerPort.toTfJson(),
  };
}

/// Factory wrapper for `aws_globalaccelerator_endpoint_group`.
final class AwsGlobalacceleratorEndpointGroup extends Resource {
  static const String tfType = 'aws_globalaccelerator_endpoint_group';

  AwsGlobalacceleratorEndpointGroup(
    super.localName, {
    TfArg<String>? endpointGroupRegion,
    TfArg<num>? healthCheckIntervalSeconds,
    TfArg<String>? healthCheckPath,
    TfArg<num>? healthCheckPort,
    GlobalacceleratorEndpointGroupHealthCheckProtocol? healthCheckProtocol,
    required TfArg<String> listenerArn,
    TfArg<num>? thresholdCount,
    TfArg<num>? trafficDialPercentage,
    List<GlobalacceleratorEndpointGroupEndpointConfiguration>?
    endpointConfiguration,
    List<GlobalacceleratorEndpointGroupPortOverride>? portOverride,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_group_region': ?endpointGroupRegion,
           'health_check_interval_seconds': ?healthCheckIntervalSeconds,
           'health_check_path': ?healthCheckPath,
           'health_check_port': ?healthCheckPort,
           'health_check_protocol': ?healthCheckProtocol,
           'listener_arn': listenerArn,
           'threshold_count': ?thresholdCount,
           'traffic_dial_percentage': ?trafficDialPercentage,
           if (endpointConfiguration != null)
             'endpoint_configuration': TfArg.literal([
               for (final e in endpointConfiguration) e.encode(),
             ]),
           if (portOverride != null)
             'port_override': TfArg.literal([
               for (final e in portOverride) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGlobalacceleratorEndpointGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlobalacceleratorEndpointGroup>`.
  RefTo<AwsGlobalacceleratorEndpointGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint_group_region` attribute.
  TfRef<String> get endpointGroupRegion =>
      TfRef.attribute<String>(this, 'endpoint_group_region');

  /// Reference to `health_check_interval_seconds` attribute.
  TfRef<num> get healthCheckIntervalSeconds =>
      TfRef.attribute<num>(this, 'health_check_interval_seconds');

  /// Reference to `health_check_path` attribute.
  TfRef<String> get healthCheckPath =>
      TfRef.attribute<String>(this, 'health_check_path');

  /// Reference to `health_check_port` attribute.
  TfRef<num> get healthCheckPort =>
      TfRef.attribute<num>(this, 'health_check_port');

  /// Reference to `health_check_protocol` attribute.
  TfRef<String> get healthCheckProtocol =>
      TfRef.attribute<String>(this, 'health_check_protocol');

  /// Reference to `listener_arn` attribute.
  TfRef<String> get listenerArn =>
      TfRef.attribute<String>(this, 'listener_arn');

  /// Reference to `threshold_count` attribute.
  TfRef<num> get thresholdCount =>
      TfRef.attribute<num>(this, 'threshold_count');

  /// Reference to `traffic_dial_percentage` attribute.
  TfRef<num> get trafficDialPercentage =>
      TfRef.attribute<num>(this, 'traffic_dial_percentage');
}
