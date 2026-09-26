// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_secondary_subnet`.
const Set<String> _awsEc2SecondarySubnetSensitive = <String>{};

/// Factory wrapper for `aws_ec2_secondary_subnet`.
final class AwsEc2SecondarySubnet extends Resource {
  static const String tfType = 'aws_ec2_secondary_subnet';

  AwsEc2SecondarySubnet({
    required super.localName,
    TfArg<String>? availabilityZone,
    TfArg<String>? availabilityZoneId,
    required TfArg<String> ipv4CidrBlock,
    TfArg<String>? region,
    required TfArg<String> secondaryNetworkId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (availabilityZoneId != null)
             'availability_zone_id': availabilityZoneId,
           'ipv4_cidr_block': ipv4CidrBlock,
           if (region != null) 'region': region,
           'secondary_network_id': secondaryNetworkId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2SecondarySubnetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ipv4_cidr_block_associations` attribute.
  TfRef<List<Map<String, Object?>>> get ipv4CidrBlockAssociations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ipv4_cidr_block_associations',
      );

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `secondary_network_type` attribute.
  TfRef<String> get secondaryNetworkType =>
      TfRef.attribute<String>(this, 'secondary_network_type');

  /// Reference to `secondary_subnet_id` attribute.
  TfRef<String> get secondarySubnetId =>
      TfRef.attribute<String>(this, 'secondary_subnet_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
