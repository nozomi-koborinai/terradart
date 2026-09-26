// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_capacity_block_offering`.
const Set<String> _awsEc2CapacityBlockOfferingSensitive = <String>{};

/// Factory wrapper for `aws_ec2_capacity_block_offering`.
final class DataAwsEc2CapacityBlockOffering extends Data {
  static const String tfType = 'aws_ec2_capacity_block_offering';

  DataAwsEc2CapacityBlockOffering({
    required super.localName,
    required TfArg<num> capacityDurationHours,
    TfArg<String>? endDateRange,
    required TfArg<num> instanceCount,
    required TfArg<String> instanceType,
    TfArg<String>? region,
    TfArg<String>? startDateRange,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity_duration_hours': capacityDurationHours,
           if (endDateRange != null) 'end_date_range': endDateRange,
           'instance_count': instanceCount,
           'instance_type': instanceType,
           if (region != null) 'region': region,
           if (startDateRange != null) 'start_date_range': startDateRange,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2CapacityBlockOfferingSensitive;

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `capacity_block_offering_id` attribute.
  TfRef<String> get capacityBlockOfferingId =>
      TfRef.attribute<String>(this, 'capacity_block_offering_id');

  /// Reference to `currency_code` attribute.
  TfRef<String> get currencyCode =>
      TfRef.attribute<String>(this, 'currency_code');

  /// Reference to `tenancy` attribute.
  TfRef<String> get tenancy => TfRef.attribute<String>(this, 'tenancy');

  /// Reference to `upfront_fee` attribute.
  TfRef<String> get upfrontFee => TfRef.attribute<String>(this, 'upfront_fee');
}
