// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_dx_gateway_attachment`.
const Set<String> _awsEc2TransitGatewayDxGatewayAttachmentSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_dx_gateway_attachment` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayDxGatewayAttachmentFilter {
  const DataEc2TransitGatewayDxGatewayAttachmentFilter({
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

/// Factory wrapper for `aws_ec2_transit_gateway_dx_gateway_attachment`.
final class DataAwsEc2TransitGatewayDxGatewayAttachment extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_dx_gateway_attachment';

  DataAwsEc2TransitGatewayDxGatewayAttachment({
    required super.localName,
    TfArg<String>? dxGatewayId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayId,
    List<DataEc2TransitGatewayDxGatewayAttachmentFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dxGatewayId != null) 'dx_gateway_id': dxGatewayId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (transitGatewayId != null) 'transit_gateway_id': transitGatewayId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayDxGatewayAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
