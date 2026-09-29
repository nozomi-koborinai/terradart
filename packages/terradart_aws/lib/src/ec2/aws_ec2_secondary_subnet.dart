// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_secondary_subnet`.
const Set<String> _awsEc2SecondarySubnetSensitive = <String>{};

/// At most one of `availability_zone`, `availability_zone_id` on `aws_ec2_secondary_subnet`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.availabilityZone(...)`.
sealed class Ec2SecondarySubnetAvailabilityZone {
  const Ec2SecondarySubnetAvailabilityZone();

  /// Sets `availability_zone`.
  const factory Ec2SecondarySubnetAvailabilityZone.availabilityZone(
    TfArg<String> availabilityZone,
  ) = Ec2SecondarySubnetAvailabilityZoneAvailabilityZone;

  /// Sets `availability_zone_id`.
  const factory Ec2SecondarySubnetAvailabilityZone.availabilityZoneId(
    TfArg<String> availabilityZoneId,
  ) = Ec2SecondarySubnetAvailabilityZoneAvailabilityZoneId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Ec2SecondarySubnetAvailabilityZone.availabilityZone] choice: sets `availability_zone`.
final class Ec2SecondarySubnetAvailabilityZoneAvailabilityZone
    extends Ec2SecondarySubnetAvailabilityZone {
  const Ec2SecondarySubnetAvailabilityZoneAvailabilityZone(
    this.availabilityZone,
  );

  final TfArg<String> availabilityZone;

  @override
  String get blockKey => 'availability_zone';

  @override
  Map<String, Object?> encode() => {
    'availability_zone': availabilityZone.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'availability_zone': availabilityZone,
  };
}

/// The [Ec2SecondarySubnetAvailabilityZone.availabilityZoneId] choice: sets `availability_zone_id`.
final class Ec2SecondarySubnetAvailabilityZoneAvailabilityZoneId
    extends Ec2SecondarySubnetAvailabilityZone {
  const Ec2SecondarySubnetAvailabilityZoneAvailabilityZoneId(
    this.availabilityZoneId,
  );

  final TfArg<String> availabilityZoneId;

  @override
  String get blockKey => 'availability_zone_id';

  @override
  Map<String, Object?> encode() => {
    'availability_zone_id': availabilityZoneId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'availability_zone_id': availabilityZoneId,
  };
}

/// Factory wrapper for `aws_ec2_secondary_subnet`.
final class AwsEc2SecondarySubnet extends Resource {
  static const String tfType = 'aws_ec2_secondary_subnet';

  AwsEc2SecondarySubnet({
    required super.localName,
    Ec2SecondarySubnetAvailabilityZone? availabilityZone,
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
           ...?availabilityZone?.argMap,
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
