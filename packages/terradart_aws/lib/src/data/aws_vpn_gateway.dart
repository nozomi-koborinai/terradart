// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpn_gateway`.
const Set<String> _awsVpnGatewaySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpn_gateway` (derived from provider schema).
@immutable
final class DataVpnGatewayFilter {
  const DataVpnGatewayFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpn_gateway`.
final class DataAwsVpnGateway extends Data {
  static const String tfType = 'aws_vpn_gateway';

  DataAwsVpnGateway({
    required super.localName,
    TfArg<String>? amazonSideAsn,
    TfArg<String>? attachedVpcId,
    TfArg<String>? availabilityZone,
    TfArg<String>? region,
    TfArg<String>? state,
    TfArg<Map<String, String>>? tags,
    List<DataVpnGatewayFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (amazonSideAsn != null) 'amazon_side_asn': amazonSideAsn,
           if (attachedVpcId != null) 'attached_vpc_id': attachedVpcId,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
