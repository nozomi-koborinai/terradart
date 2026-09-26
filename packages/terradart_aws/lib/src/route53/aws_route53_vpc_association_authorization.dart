// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_vpc_association_authorization`.
const Set<String> _awsRoute53VpcAssociationAuthorizationSensitive = <String>{};

/// Factory wrapper for `aws_route53_vpc_association_authorization`.
final class AwsRoute53VpcAssociationAuthorization extends Resource {
  static const String tfType = 'aws_route53_vpc_association_authorization';

  AwsRoute53VpcAssociationAuthorization({
    required super.localName,
    required TfArg<String> vpcId,
    TfArg<String>? vpcRegion,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'vpc_id': vpcId,
           if (vpcRegion != null) 'vpc_region': vpcRegion,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53VpcAssociationAuthorizationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
