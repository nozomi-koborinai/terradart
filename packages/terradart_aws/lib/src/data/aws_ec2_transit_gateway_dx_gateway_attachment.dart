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

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_transit_gateway_dx_gateway_attachment`.
final class DataAwsEc2TransitGatewayDxGatewayAttachment extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_dx_gateway_attachment';

  DataAwsEc2TransitGatewayDxGatewayAttachment(
    super.localName, {
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
           'dx_gateway_id': ?dxGatewayId,
           'region': ?region,
           'tags': ?tags,
           'transit_gateway_id': ?transitGatewayId,
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

  /// Reference to `dx_gateway_id` attribute.
  TfRef<String> get dxGatewayId =>
      TfRef.attribute<String>(this, 'dx_gateway_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');
}
