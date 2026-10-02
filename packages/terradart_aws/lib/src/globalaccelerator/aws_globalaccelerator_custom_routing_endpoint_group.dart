// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_globalaccelerator_custom_routing_endpoint_group`.
const Set<String> _awsGlobalacceleratorCustomRoutingEndpointGroupSensitive =
    <String>{};

/// Typed helper for the `destination_configuration` block of
/// `aws_globalaccelerator_custom_routing_endpoint_group` (derived from provider schema).
@immutable
final class GlobalacceleratorCustomRoutingEndpointGroupDestinationConfiguration {
  const GlobalacceleratorCustomRoutingEndpointGroupDestinationConfiguration({
    required this.fromPort,
    required this.protocols,
    required this.toPort,
  });

  final TfArg<num> fromPort;

  final List<GlobalacceleratorCustomRoutingEndpointGroupProtocols> protocols;

  final TfArg<num> toPort;

  @internal
  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'protocols': [for (final e in protocols) e.toTfJson()],
    'to_port': toPort.toTfJson(),
  };
}

/// `protocols` — derived from the provider schema description.
extension type const GlobalacceleratorCustomRoutingEndpointGroupProtocols._(
  TfArg<String> _
) implements TfArg<String> {
  GlobalacceleratorCustomRoutingEndpointGroupProtocols.variable(String name)
    : this._(TfArg.variable(name));
  GlobalacceleratorCustomRoutingEndpointGroupProtocols.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GlobalacceleratorCustomRoutingEndpointGroupProtocols.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const tcp = GlobalacceleratorCustomRoutingEndpointGroupProtocols._(
    TfArgLiteral('TCP'),
  );
  static const udp = GlobalacceleratorCustomRoutingEndpointGroupProtocols._(
    TfArgLiteral('UDP'),
  );

  static const List<GlobalacceleratorCustomRoutingEndpointGroupProtocols>
  values = [tcp, udp];
}

/// Typed helper for the `endpoint_configuration` block of
/// `aws_globalaccelerator_custom_routing_endpoint_group` (derived from provider schema).
@immutable
final class GlobalacceleratorCustomRoutingEndpointGroupEndpointConfiguration {
  const GlobalacceleratorCustomRoutingEndpointGroupEndpointConfiguration({
    this.endpointId,
  });

  final TfArg<String>? endpointId;

  @internal
  Map<String, Object?> encode() => {'endpoint_id': ?endpointId?.toTfJson()};
}

/// Factory wrapper for `aws_globalaccelerator_custom_routing_endpoint_group`.
final class AwsGlobalacceleratorCustomRoutingEndpointGroup extends Resource {
  static const String tfType =
      'aws_globalaccelerator_custom_routing_endpoint_group';

  AwsGlobalacceleratorCustomRoutingEndpointGroup(
    super.localName, {
    TfArg<String>? endpointGroupRegion,
    required TfArg<String> listenerArn,
    required List<
      GlobalacceleratorCustomRoutingEndpointGroupDestinationConfiguration
    >
    destinationConfiguration,
    List<GlobalacceleratorCustomRoutingEndpointGroupEndpointConfiguration>?
    endpointConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_group_region': ?endpointGroupRegion,
           'listener_arn': listenerArn,
           'destination_configuration': TfArg.literal([
             for (final e in destinationConfiguration) e.encode(),
           ]),
           if (endpointConfiguration != null)
             'endpoint_configuration': TfArg.literal([
               for (final e in endpointConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGlobalacceleratorCustomRoutingEndpointGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlobalacceleratorCustomRoutingEndpointGroup>`.
  RefTo<AwsGlobalacceleratorCustomRoutingEndpointGroup> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint_group_region` attribute.
  TfRef<String> get endpointGroupRegion =>
      TfRef.attribute<String>(this, 'endpoint_group_region');

  /// Reference to `listener_arn` attribute.
  TfRef<String> get listenerArn =>
      TfRef.attribute<String>(this, 'listener_arn');
}
