// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_customer_gateway_association`.
const Set<String> _awsNetworkmanagerCustomerGatewayAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_networkmanager_customer_gateway_association`.
final class AwsNetworkmanagerCustomerGatewayAssociation extends Resource {
  static const String tfType =
      'aws_networkmanager_customer_gateway_association';

  AwsNetworkmanagerCustomerGatewayAssociation({
    required super.localName,
    required TfArg<String> customerGatewayArn,
    required TfArg<String> deviceId,
    required TfArg<String> globalNetworkId,
    TfArg<String>? linkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer_gateway_arn': customerGatewayArn,
           'device_id': deviceId,
           'global_network_id': globalNetworkId,
           if (linkId != null) 'link_id': linkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerCustomerGatewayAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
