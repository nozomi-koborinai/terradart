// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_transit_gateway_registration`.
const Set<String> _awsNetworkmanagerTransitGatewayRegistrationSensitive =
    <String>{};

/// Factory wrapper for `aws_networkmanager_transit_gateway_registration`.
final class AwsNetworkmanagerTransitGatewayRegistration extends Resource {
  static const String tfType =
      'aws_networkmanager_transit_gateway_registration';

  AwsNetworkmanagerTransitGatewayRegistration({
    required super.localName,
    required TfArg<String> globalNetworkId,
    required TfArg<String> transitGatewayArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'global_network_id': globalNetworkId,
           'transit_gateway_arn': transitGatewayArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerTransitGatewayRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerTransitGatewayRegistration>`.
  RefTo<AwsNetworkmanagerTransitGatewayRegistration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkIdRef =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `transit_gateway_arn` attribute.
  TfRef<String> get transitGatewayArnRef =>
      TfRef.attribute<String>(this, 'transit_gateway_arn');
}
