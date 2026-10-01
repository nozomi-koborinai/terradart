// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_connect`.
const Set<String> _awsEc2TransitGatewayConnectSensitive = <String>{};

/// Ec2 Transit Gateway Connect enum for `protocol`.
extension type const Ec2TransitGatewayConnectProtocol._(TfArg<String> _)
    implements TfArg<String> {
  Ec2TransitGatewayConnectProtocol.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TransitGatewayConnectProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TransitGatewayConnectProtocol.arg(TfArg<String> arg) : this._(arg);

  static const gre = Ec2TransitGatewayConnectProtocol._(TfArgLiteral('gre'));

  static const List<Ec2TransitGatewayConnectProtocol> values = [gre];
}

/// Factory wrapper for `aws_ec2_transit_gateway_connect`.
final class AwsEc2TransitGatewayConnect extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_connect';

  AwsEc2TransitGatewayConnect(
    super.localName, {
    Ec2TransitGatewayConnectProtocol? protocol,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? transitGatewayDefaultRouteTableAssociation,
    TfArg<bool>? transitGatewayDefaultRouteTablePropagation,
    required TfArg<String> transitGatewayId,
    required TfArg<String> transportAttachmentId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'protocol': ?protocol,
           'region': ?region,
           'tags': ?tags,
           'transit_gateway_default_route_table_association':
               ?transitGatewayDefaultRouteTableAssociation,
           'transit_gateway_default_route_table_propagation':
               ?transitGatewayDefaultRouteTablePropagation,
           'transit_gateway_id': transitGatewayId,
           'transport_attachment_id': transportAttachmentId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayConnectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayConnect>`.
  RefTo<AwsEc2TransitGatewayConnect> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_default_route_table_association` attribute.
  TfRef<bool> get transitGatewayDefaultRouteTableAssociation =>
      TfRef.attribute<bool>(
        this,
        'transit_gateway_default_route_table_association',
      );

  /// Reference to `transit_gateway_default_route_table_propagation` attribute.
  TfRef<bool> get transitGatewayDefaultRouteTablePropagation =>
      TfRef.attribute<bool>(
        this,
        'transit_gateway_default_route_table_propagation',
      );

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `transport_attachment_id` attribute.
  TfRef<String> get transportAttachmentId =>
      TfRef.attribute<String>(this, 'transport_attachment_id');
}
