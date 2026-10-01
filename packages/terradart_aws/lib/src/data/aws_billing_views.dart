// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_billing_views`.
const Set<String> _awsBillingViewsSensitive = <String>{};

/// Factory wrapper for `aws_billing_views`.
final class DataAwsBillingViews extends Data {
  static const String tfType = 'aws_billing_views';

  DataAwsBillingViews(
    super.localName, {
    TfArg<List<String>>? billingViewTypes,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'billing_view_types': ?billingViewTypes},
       );

  @override
  Set<String> get sensitiveFields => _awsBillingViewsSensitive;

  /// Reference to `billing_view` attribute.
  TfRef<List<Map<String, Object?>>> get billingView =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'billing_view');

  /// Reference to `billing_view_types` attribute.
  TfRef<List<String>> get billingViewTypes =>
      TfRef.attribute<List<String>>(this, 'billing_view_types');
}
