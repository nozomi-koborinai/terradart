// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_vpn_gateway.dart';

/// Sensitive field paths for `aws_vpn_gateway`.
const Set<String> _awsVpnGatewaySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpn_gateway` (derived from provider schema).
@immutable
final class DataVpnGatewayFilter {
  const DataVpnGatewayFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

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
           'amazon_side_asn': ?amazonSideAsn,
           'attached_vpc_id': ?attachedVpcId,
           'availability_zone': ?availabilityZone,
           'region': ?region,
           'state': ?state,
           'tags': ?tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnGatewaySensitive;

  /// A reference to the `aws_vpn_gateway` this data source reads, for
  /// arguments typed `RefTo<AwsVpnGateway>`.
  RefTo<AwsVpnGateway> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `amazon_side_asn` attribute.
  TfRef<String> get amazonSideAsnRef =>
      TfRef.attribute<String>(this, 'amazon_side_asn');

  /// Reference to `attached_vpc_id` attribute.
  TfRef<String> get attachedVpcIdRef =>
      TfRef.attribute<String>(this, 'attached_vpc_id');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZoneRef =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
