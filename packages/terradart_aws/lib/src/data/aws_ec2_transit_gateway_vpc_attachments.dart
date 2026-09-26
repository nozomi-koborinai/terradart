// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_vpc_attachments`.
const Set<String> _awsEc2TransitGatewayVpcAttachmentsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_vpc_attachments` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayVpcAttachmentsFilter {
  const DataEc2TransitGatewayVpcAttachmentsFilter({
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

/// Factory wrapper for `aws_ec2_transit_gateway_vpc_attachments`.
final class DataAwsEc2TransitGatewayVpcAttachments extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_vpc_attachments';

  DataAwsEc2TransitGatewayVpcAttachments({
    required super.localName,
    TfArg<String>? region,
    List<DataEc2TransitGatewayVpcAttachmentsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayVpcAttachmentsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
