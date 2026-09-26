// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_public_virtual_interface`.
const Set<String> _awsDxPublicVirtualInterfaceSensitive = <String>{};

/// Factory wrapper for `aws_dx_public_virtual_interface`.
final class AwsDxPublicVirtualInterface extends Resource {
  static const String tfType = 'aws_dx_public_virtual_interface';

  AwsDxPublicVirtualInterface({
    required super.localName,
    required TfArg<String> addressFamily,
    TfArg<String>? amazonAddress,
    required TfArg<num> bgpAsn,
    TfArg<String>? bgpAuthKey,
    required TfArg<String> connectionId,
    TfArg<String>? customerAddress,
    required TfArg<String> name,
    TfArg<String>? rateLimit,
    TfArg<String>? region,
    required TfArg<List<String>> routeFilterPrefixes,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> vlan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_family': addressFamily,
           if (amazonAddress != null) 'amazon_address': amazonAddress,
           'bgp_asn': bgpAsn,
           if (bgpAuthKey != null) 'bgp_auth_key': bgpAuthKey,
           'connection_id': connectionId,
           if (customerAddress != null) 'customer_address': customerAddress,
           'name': name,
           if (rateLimit != null) 'rate_limit': rateLimit,
           if (region != null) 'region': region,
           'route_filter_prefixes': routeFilterPrefixes,
           if (tags != null) 'tags': tags,
           'vlan': vlan,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxPublicVirtualInterfaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `amazon_side_asn` attribute.
  TfRef<String> get amazonSideAsn =>
      TfRef.attribute<String>(this, 'amazon_side_asn');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_device` attribute.
  TfRef<String> get awsDevice => TfRef.attribute<String>(this, 'aws_device');
}
