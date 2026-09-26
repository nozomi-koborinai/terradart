// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_subnet_cidr_reservation`.
const Set<String> _awsEc2SubnetCidrReservationSensitive = <String>{};

/// Factory wrapper for `aws_ec2_subnet_cidr_reservation`.
final class AwsEc2SubnetCidrReservation extends Resource {
  static const String tfType = 'aws_ec2_subnet_cidr_reservation';

  AwsEc2SubnetCidrReservation({
    required super.localName,
    required TfArg<String> cidrBlock,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<String> reservationType,
    required TfArg<String> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr_block': cidrBlock,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           'reservation_type': reservationType,
           'subnet_id': subnetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2SubnetCidrReservationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
