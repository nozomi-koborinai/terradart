// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_vpc_attachment`.
const Set<String> _awsEc2TransitGatewayVpcAttachmentSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_vpc_attachment` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayVpcAttachmentFilter {
  const DataEc2TransitGatewayVpcAttachmentFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_transit_gateway_vpc_attachment`.
final class DataAwsEc2TransitGatewayVpcAttachment extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_vpc_attachment';

  DataAwsEc2TransitGatewayVpcAttachment({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2TransitGatewayVpcAttachmentFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayVpcAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `appliance_mode_support` attribute.
  TfRef<String> get applianceModeSupport =>
      TfRef.attribute<String>(this, 'appliance_mode_support');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_support` attribute.
  TfRef<String> get dnsSupport => TfRef.attribute<String>(this, 'dns_support');

  /// Reference to `ipv6_support` attribute.
  TfRef<String> get ipv6Support =>
      TfRef.attribute<String>(this, 'ipv6_support');

  /// Reference to `security_group_referencing_support` attribute.
  TfRef<String> get securityGroupReferencingSupport =>
      TfRef.attribute<String>(this, 'security_group_referencing_support');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `vpc_owner_id` attribute.
  TfRef<String> get vpcOwnerId => TfRef.attribute<String>(this, 'vpc_owner_id');
}
