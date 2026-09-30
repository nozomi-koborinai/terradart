// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_savingsplans_offerings`.
const Set<String> _awsSavingsplansOfferingsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_savingsplans_offerings` (derived from provider schema).
@immutable
final class DataSavingsplansOfferingsFilter {
  const DataSavingsplansOfferingsFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_savingsplans_offerings`.
final class DataAwsSavingsplansOfferings extends Data {
  static const String tfType = 'aws_savingsplans_offerings';

  DataAwsSavingsplansOfferings({
    required super.localName,
    TfArg<List<String>>? currencies,
    TfArg<List<String>>? descriptions,
    TfArg<List<num>>? durations,
    TfArg<List<String>>? offeringIds,
    TfArg<List<String>>? operations,
    TfArg<List<String>>? paymentOptions,
    TfArg<List<String>>? planTypes,
    TfArg<String>? productType,
    TfArg<List<String>>? serviceCodes,
    TfArg<List<String>>? usageTypes,
    List<DataSavingsplansOfferingsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'currencies': ?currencies,
           'descriptions': ?descriptions,
           'durations': ?durations,
           'offering_ids': ?offeringIds,
           'operations': ?operations,
           'payment_options': ?paymentOptions,
           'plan_types': ?planTypes,
           'product_type': ?productType,
           'service_codes': ?serviceCodes,
           'usage_types': ?usageTypes,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSavingsplansOfferingsSensitive;

  /// Reference to `offerings` attribute.
  TfRef<List<Map<String, Object?>>> get offerings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'offerings');

  /// Reference to `currencies` attribute.
  TfRef<List<String>> get currenciesRef =>
      TfRef.attribute<List<String>>(this, 'currencies');

  /// Reference to `descriptions` attribute.
  TfRef<List<String>> get descriptionsRef =>
      TfRef.attribute<List<String>>(this, 'descriptions');

  /// Reference to `durations` attribute.
  TfRef<List<num>> get durationsRef =>
      TfRef.attribute<List<num>>(this, 'durations');

  /// Reference to `offering_ids` attribute.
  TfRef<List<String>> get offeringIdsRef =>
      TfRef.attribute<List<String>>(this, 'offering_ids');

  /// Reference to `operations` attribute.
  TfRef<List<String>> get operationsRef =>
      TfRef.attribute<List<String>>(this, 'operations');

  /// Reference to `payment_options` attribute.
  TfRef<List<String>> get paymentOptionsRef =>
      TfRef.attribute<List<String>>(this, 'payment_options');

  /// Reference to `plan_types` attribute.
  TfRef<List<String>> get planTypesRef =>
      TfRef.attribute<List<String>>(this, 'plan_types');

  /// Reference to `product_type` attribute.
  TfRef<String> get productTypeRef =>
      TfRef.attribute<String>(this, 'product_type');

  /// Reference to `service_codes` attribute.
  TfRef<List<String>> get serviceCodesRef =>
      TfRef.attribute<List<String>>(this, 'service_codes');

  /// Reference to `usage_types` attribute.
  TfRef<List<String>> get usageTypesRef =>
      TfRef.attribute<List<String>>(this, 'usage_types');
}
