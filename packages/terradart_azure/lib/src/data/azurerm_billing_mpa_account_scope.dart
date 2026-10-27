// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_billing_mpa_account_scope`.
const Set<String> _azurermBillingMpaAccountScopeSensitive = <String>{};

/// Factory wrapper for `azurerm_billing_mpa_account_scope`.
final class DataAzurermBillingMpaAccountScope extends Data {
  static const String tfType = 'azurerm_billing_mpa_account_scope';

  DataAzurermBillingMpaAccountScope(
    super.localName, {
    required TfArg<String> billingAccountName,
    required TfArg<String> customerName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account_name': billingAccountName,
           'customer_name': customerName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBillingMpaAccountScopeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `billing_account_name` attribute.
  TfRef<String> get billingAccountName =>
      TfRef.attribute<String>(this, 'billing_account_name');

  /// Reference to `customer_name` attribute.
  TfRef<String> get customerName =>
      TfRef.attribute<String>(this, 'customer_name');
}
