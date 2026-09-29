// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_ec2_subnet_cidr_reservation`.
const Set<String> _awsEc2SubnetCidrReservationSensitive = <String>{};

/// Ec2 Subnet Cidr Reservation Reservation enum for `reservation_type`.
enum Ec2SubnetCidrReservationReservationType implements TerraformEnum {
  prefix('prefix'),
  explicit('explicit');

  const Ec2SubnetCidrReservationReservationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_subnet_cidr_reservation`.
final class AwsEc2SubnetCidrReservation extends Resource {
  static const String tfType = 'aws_ec2_subnet_cidr_reservation';

  AwsEc2SubnetCidrReservation({
    required super.localName,
    required TfArg<String> cidrBlock,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<Ec2SubnetCidrReservationReservationType> reservationType,
    required RefTo<AwsSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr_block': cidrBlock,
           'description': ?description,
           'region': ?region,
           'reservation_type': reservationType,
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2SubnetCidrReservationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2SubnetCidrReservation>`.
  RefTo<AwsEc2SubnetCidrReservation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
