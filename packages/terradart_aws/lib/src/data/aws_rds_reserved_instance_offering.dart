// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_reserved_instance_offering`.
const Set<String> _awsRdsReservedInstanceOfferingSensitive = <String>{};

/// Factory wrapper for `aws_rds_reserved_instance_offering`.
final class DataAwsRdsReservedInstanceOffering extends Data {
  static const String tfType = 'aws_rds_reserved_instance_offering';

  DataAwsRdsReservedInstanceOffering({
    required super.localName,
    required TfArg<String> dbInstanceClass,
    required TfArg<num> duration,
    required TfArg<bool> multiAz,
    required TfArg<String> offeringType,
    required TfArg<String> productDescription,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_instance_class': dbInstanceClass,
           'duration': duration,
           'multi_az': multiAz,
           'offering_type': offeringType,
           'product_description': productDescription,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsReservedInstanceOfferingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `currency_code` attribute.
  TfRef<String> get currencyCode =>
      TfRef.attribute<String>(this, 'currency_code');

  /// Reference to `fixed_price` attribute.
  TfRef<num> get fixedPrice => TfRef.attribute<num>(this, 'fixed_price');

  /// Reference to `offering_id` attribute.
  TfRef<String> get offeringId => TfRef.attribute<String>(this, 'offering_id');
}
