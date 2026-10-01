// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eip`.
const Set<String> _awsEipSensitive = <String>{};

/// Eip enum for `domain`.
enum EipDomain implements TerraformEnum {
  vpc('vpc'),
  standard('standard');

  const EipDomain(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_eip`.
final class AwsEip extends Resource {
  static const String tfType = 'aws_eip';

  AwsEip({
    required super.localName,
    TfArg<String>? address,
    TfArg<String>? associateWithPrivateIp,
    TfArg<String>? customerOwnedIpv4Pool,
    TfArg<EipDomain>? domain,
    TfArg<String>? instance,
    TfArg<String>? ipamPoolId,
    TfArg<String>? networkBorderGroup,
    TfArg<String>? networkInterface,
    TfArg<String>? publicIpv4Pool,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address': ?address,
           'associate_with_private_ip': ?associateWithPrivateIp,
           'customer_owned_ipv4_pool': ?customerOwnedIpv4Pool,
           'domain': ?domain,
           'instance': ?instance,
           'ipam_pool_id': ?ipamPoolId,
           'network_border_group': ?networkBorderGroup,
           'network_interface': ?networkInterface,
           'public_ipv4_pool': ?publicIpv4Pool,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEip>`.
  RefTo<AwsEip> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocation_id` attribute.
  TfRef<String> get allocationId =>
      TfRef.attribute<String>(this, 'allocation_id');

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

  /// Reference to `private_dns` attribute.
  TfRef<String> get privateDns => TfRef.attribute<String>(this, 'private_dns');

  /// Reference to `private_ip` attribute.
  TfRef<String> get privateIp => TfRef.attribute<String>(this, 'private_ip');

  /// Reference to `ptr_record` attribute.
  TfRef<String> get ptrRecord => TfRef.attribute<String>(this, 'ptr_record');

  /// Reference to `public_dns` attribute.
  TfRef<String> get publicDns => TfRef.attribute<String>(this, 'public_dns');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIp => TfRef.attribute<String>(this, 'public_ip');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `associate_with_private_ip` attribute.
  TfRef<String> get associateWithPrivateIp =>
      TfRef.attribute<String>(this, 'associate_with_private_ip');

  /// Reference to `customer_owned_ipv4_pool` attribute.
  TfRef<String> get customerOwnedIpv4Pool =>
      TfRef.attribute<String>(this, 'customer_owned_ipv4_pool');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `ipam_pool_id` attribute.
  TfRef<String> get ipamPoolId => TfRef.attribute<String>(this, 'ipam_pool_id');

  /// Reference to `network_border_group` attribute.
  TfRef<String> get networkBorderGroup =>
      TfRef.attribute<String>(this, 'network_border_group');

  /// Reference to `network_interface` attribute.
  TfRef<String> get networkInterface =>
      TfRef.attribute<String>(this, 'network_interface');

  /// Reference to `public_ipv4_pool` attribute.
  TfRef<String> get publicIpv4Pool =>
      TfRef.attribute<String>(this, 'public_ipv4_pool');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
