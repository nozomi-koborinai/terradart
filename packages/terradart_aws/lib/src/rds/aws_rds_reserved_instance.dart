// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_reserved_instance`.
const Set<String> _awsRdsReservedInstanceSensitive = <String>{};

/// Factory wrapper for `aws_rds_reserved_instance`.
final class AwsRdsReservedInstance extends Resource {
  static const String tfType = 'aws_rds_reserved_instance';

  AwsRdsReservedInstance({
    required super.localName,
    TfArg<num>? instanceCount,
    required TfArg<String> offeringId,
    TfArg<String>? region,
    TfArg<String>? reservationId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (instanceCount != null) 'instance_count': instanceCount,
           'offering_id': offeringId,
           if (region != null) 'region': region,
           if (reservationId != null) 'reservation_id': reservationId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsReservedInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `currency_code` attribute.
  TfRef<String> get currencyCode =>
      TfRef.attribute<String>(this, 'currency_code');

  /// Reference to `db_instance_class` attribute.
  TfRef<String> get dbInstanceClass =>
      TfRef.attribute<String>(this, 'db_instance_class');

  /// Reference to `duration` attribute.
  TfRef<num> get duration => TfRef.attribute<num>(this, 'duration');

  /// Reference to `fixed_price` attribute.
  TfRef<num> get fixedPrice => TfRef.attribute<num>(this, 'fixed_price');

  /// Reference to `lease_id` attribute.
  TfRef<String> get leaseId => TfRef.attribute<String>(this, 'lease_id');

  /// Reference to `multi_az` attribute.
  TfRef<bool> get multiAz => TfRef.attribute<bool>(this, 'multi_az');

  /// Reference to `offering_type` attribute.
  TfRef<String> get offeringType =>
      TfRef.attribute<String>(this, 'offering_type');

  /// Reference to `product_description` attribute.
  TfRef<String> get productDescription =>
      TfRef.attribute<String>(this, 'product_description');

  /// Reference to `recurring_charges` attribute.
  TfRef<List<Map<String, Object?>>> get recurringCharges =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'recurring_charges');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `usage_price` attribute.
  TfRef<num> get usagePrice => TfRef.attribute<num>(this, 'usage_price');
}
