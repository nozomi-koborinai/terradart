// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pricing_product`.
const Set<String> _awsPricingProductSensitive = <String>{};

/// Typed helper for the `filters` block of
/// `aws_pricing_product` (derived from provider schema).
@immutable
final class DataPricingProductFilters {
  const DataPricingProductFilters({required this.field, required this.value});

  final TfArg<String> field;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'field': field.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_pricing_product`.
final class DataAwsPricingProduct extends Data {
  static const String tfType = 'aws_pricing_product';

  DataAwsPricingProduct({
    required super.localName,
    required TfArg<String> serviceCode,
    required List<DataPricingProductFilters> filters,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_code': serviceCode,
           'filters': TfArg.literal([for (final e in filters) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPricingProductSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `result` attribute.
  TfRef<String> get result => TfRef.attribute<String>(this, 'result');
}
