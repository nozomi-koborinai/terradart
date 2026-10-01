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

  AwsNetworkmanagerCustomerGatewayAssociation(
    super.localName, {
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
           'link_id': ?linkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerCustomerGatewayAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerCustomerGatewayAssociation>`.
  RefTo<AwsNetworkmanagerCustomerGatewayAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customer_gateway_arn` attribute.
  TfRef<String> get customerGatewayArn =>
      TfRef.attribute<String>(this, 'customer_gateway_arn');

  /// Reference to `device_id` attribute.
  TfRef<String> get deviceId => TfRef.attribute<String>(this, 'device_id');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkId =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `link_id` attribute.
  TfRef<String> get linkId => TfRef.attribute<String>(this, 'link_id');
}
