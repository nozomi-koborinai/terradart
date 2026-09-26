// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_connect`.
const Set<String> _awsEc2TransitGatewayConnectSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_connect` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayConnectFilter {
  const DataEc2TransitGatewayConnectFilter({
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

/// Factory wrapper for `aws_ec2_transit_gateway_connect`.
final class DataAwsEc2TransitGatewayConnect extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_connect';

  DataAwsEc2TransitGatewayConnect({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayConnectId,
    List<DataEc2TransitGatewayConnectFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (transitGatewayConnectId != null)
             'transit_gateway_connect_id': transitGatewayConnectId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayConnectSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `transport_attachment_id` attribute.
  TfRef<String> get transportAttachmentId =>
      TfRef.attribute<String>(this, 'transport_attachment_id');
}
