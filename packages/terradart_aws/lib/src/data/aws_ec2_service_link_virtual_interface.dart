// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_service_link_virtual_interface`.
const Set<String> _awsEc2ServiceLinkVirtualInterfaceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_service_link_virtual_interface` (derived from provider schema).
@immutable
final class DataEc2ServiceLinkVirtualInterfaceFilter {
  const DataEc2ServiceLinkVirtualInterfaceFilter({
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

/// Factory wrapper for `aws_ec2_service_link_virtual_interface`.
final class DataAwsEc2ServiceLinkVirtualInterface extends Data {
  static const String tfType = 'aws_ec2_service_link_virtual_interface';

  DataAwsEc2ServiceLinkVirtualInterface({
    required super.localName,
    TfArg<String>? region,
    List<DataEc2ServiceLinkVirtualInterfaceFilter>? filter,
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
      _awsEc2ServiceLinkVirtualInterfaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configuration_state` attribute.
  TfRef<String> get configurationState =>
      TfRef.attribute<String>(this, 'configuration_state');

  /// Reference to `local_address` attribute.
  TfRef<String> get localAddress =>
      TfRef.attribute<String>(this, 'local_address');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `outpost_id` attribute.
  TfRef<String> get outpostId => TfRef.attribute<String>(this, 'outpost_id');

  /// Reference to `outpost_lag_id` attribute.
  TfRef<String> get outpostLagId =>
      TfRef.attribute<String>(this, 'outpost_lag_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `peer_address` attribute.
  TfRef<String> get peerAddress =>
      TfRef.attribute<String>(this, 'peer_address');

  /// Reference to `peer_bgp_asn` attribute.
  TfRef<num> get peerBgpAsn => TfRef.attribute<num>(this, 'peer_bgp_asn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vlan` attribute.
  TfRef<num> get vlan => TfRef.attribute<num>(this, 'vlan');
}
