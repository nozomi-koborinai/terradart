// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_nat_gateway_eip_association`.
const Set<String> _awsNatGatewayEipAssociationSensitive = <String>{};

/// Factory wrapper for `aws_nat_gateway_eip_association`.
final class AwsNatGatewayEipAssociation extends Resource {
  static const String tfType = 'aws_nat_gateway_eip_association';

  AwsNatGatewayEipAssociation({
    required super.localName,
    required TfArg<String> allocationId,
    required TfArg<String> natGatewayId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocation_id': allocationId,
           'nat_gateway_id': natGatewayId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNatGatewayEipAssociationSensitive;

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');
}
