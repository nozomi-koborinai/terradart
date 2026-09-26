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

  final TfArg<List<Object?>> values;

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
           if (currencies != null) 'currencies': currencies,
           if (descriptions != null) 'descriptions': descriptions,
           if (durations != null) 'durations': durations,
           if (offeringIds != null) 'offering_ids': offeringIds,
           if (operations != null) 'operations': operations,
           if (paymentOptions != null) 'payment_options': paymentOptions,
           if (planTypes != null) 'plan_types': planTypes,
           if (productType != null) 'product_type': productType,
           if (serviceCodes != null) 'service_codes': serviceCodes,
           if (usageTypes != null) 'usage_types': usageTypes,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSavingsplansOfferingsSensitive;

  /// Reference to `offerings` attribute.
  TfRef<List<Map<String, Object?>>> get offerings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'offerings');
}
