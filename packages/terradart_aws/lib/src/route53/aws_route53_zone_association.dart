// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_zone_association`.
const Set<String> _awsRoute53ZoneAssociationSensitive = <String>{};

/// Factory wrapper for `aws_route53_zone_association`.
final class AwsRoute53ZoneAssociation extends Resource {
  static const String tfType = 'aws_route53_zone_association';

  AwsRoute53ZoneAssociation({
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
  Set<String> get sensitiveFields => _awsRoute53ZoneAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owning_account` attribute.
  TfRef<String> get owningAccount =>
      TfRef.attribute<String>(this, 'owning_account');
}
