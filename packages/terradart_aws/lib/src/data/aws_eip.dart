// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_eip.dart';

/// Sensitive field paths for `aws_eip`.
const Set<String> _awsEipSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_eip` (derived from provider schema).
@immutable
final class DataEipFilter {
  const DataEipFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_eip`.
final class DataAwsEip extends Data {
  static const String tfType = 'aws_eip';

  DataAwsEip(
    super.localName, {
    TfArg<String>? publicIp,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEipFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'public_ip': ?publicIp,
           'region': ?region,
           'tags': ?tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEipSensitive;

  /// A reference to the `aws_eip` this data source reads, for
  /// arguments typed `RefTo<AwsEip>`.
  RefTo<AwsEip> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');

  /// Reference to `carrier_ip` attribute.
  TfRef<String> get carrierIp => TfRef.attribute<String>(this, 'carrier_ip');

  /// Reference to `customer_owned_ip` attribute.
  TfRef<String> get customerOwnedIp =>
      TfRef.attribute<String>(this, 'customer_owned_ip');

  /// Reference to `customer_owned_ipv4_pool` attribute.
  TfRef<String> get customerOwnedIpv4Pool =>
      TfRef.attribute<String>(this, 'customer_owned_ipv4_pool');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `ipam_pool_id` attribute.
  TfRef<String> get ipamPoolId => TfRef.attribute<String>(this, 'ipam_pool_id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `network_interface_owner_id` attribute.
  TfRef<String> get networkInterfaceOwnerId =>
      TfRef.attribute<String>(this, 'network_interface_owner_id');

  /// Reference to `private_dns` attribute.
  TfRef<String> get privateDns => TfRef.attribute<String>(this, 'private_dns');

  /// Reference to `private_ip` attribute.
  TfRef<String> get privateIp => TfRef.attribute<String>(this, 'private_ip');

  /// Reference to `ptr_record` attribute.
  TfRef<String> get ptrRecord => TfRef.attribute<String>(this, 'ptr_record');

  /// Reference to `public_dns` attribute.
  TfRef<String> get publicDns => TfRef.attribute<String>(this, 'public_dns');

  /// Reference to `public_ipv4_pool` attribute.
  TfRef<String> get publicIpv4Pool =>
      TfRef.attribute<String>(this, 'public_ipv4_pool');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIp => TfRef.attribute<String>(this, 'public_ip');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
