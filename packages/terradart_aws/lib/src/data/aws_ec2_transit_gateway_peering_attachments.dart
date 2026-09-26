// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_peering_attachments`.
const Set<String> _awsEc2TransitGatewayPeeringAttachmentsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_peering_attachments` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayPeeringAttachmentsFilter {
  const DataEc2TransitGatewayPeeringAttachmentsFilter({
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

/// Factory wrapper for `aws_ec2_transit_gateway_peering_attachments`.
final class DataAwsEc2TransitGatewayPeeringAttachments extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_peering_attachments';

  DataAwsEc2TransitGatewayPeeringAttachments({
    required super.localName,
    TfArg<String>? region,
    List<DataEc2TransitGatewayPeeringAttachmentsFilter>? filter,
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
      _awsEc2TransitGatewayPeeringAttachmentsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
