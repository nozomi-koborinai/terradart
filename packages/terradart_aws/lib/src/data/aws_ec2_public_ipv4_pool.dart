// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_public_ipv4_pool`.
const Set<String> _awsEc2PublicIpv4PoolSensitive = <String>{};

/// Factory wrapper for `aws_ec2_public_ipv4_pool`.
final class DataAwsEc2PublicIpv4Pool extends Data {
  static const String tfType = 'aws_ec2_public_ipv4_pool';

  DataAwsEc2PublicIpv4Pool({
    required super.localName,
    required TfArg<String> poolId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pool_id': poolId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2PublicIpv4PoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network_border_group` attribute.
  TfRef<String> get networkBorderGroup =>
      TfRef.attribute<String>(this, 'network_border_group');

  /// Reference to `pool_address_ranges` attribute.
  TfRef<List<Map<String, Object?>>> get poolAddressRanges =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'pool_address_ranges');

  /// Reference to `total_address_count` attribute.
  TfRef<num> get totalAddressCount =>
      TfRef.attribute<num>(this, 'total_address_count');

  /// Reference to `total_available_address_count` attribute.
  TfRef<num> get totalAvailableAddressCount =>
      TfRef.attribute<num>(this, 'total_available_address_count');
}
