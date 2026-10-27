// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_billing_mca_account_scope`.
const Set<String> _azurermBillingMcaAccountScopeSensitive = <String>{};

/// Factory wrapper for `azurerm_billing_mca_account_scope`.
final class DataAzurermBillingMcaAccountScope extends Data {
  static const String tfType = 'azurerm_billing_mca_account_scope';

  DataAzurermBillingMcaAccountScope(
    super.localName, {
    required TfArg<String> billingAccountName,
    required TfArg<String> billingProfileName,
    required TfArg<String> invoiceSectionName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account_name': billingAccountName,
           'billing_profile_name': billingProfileName,
           'invoice_section_name': invoiceSectionName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBillingMcaAccountScopeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `billing_account_name` attribute.
  TfRef<String> get billingAccountName =>
      TfRef.attribute<String>(this, 'billing_account_name');

  /// Reference to `billing_profile_name` attribute.
  TfRef<String> get billingProfileName =>
      TfRef.attribute<String>(this, 'billing_profile_name');

  /// Reference to `invoice_section_name` attribute.
  TfRef<String> get invoiceSectionName =>
      TfRef.attribute<String>(this, 'invoice_section_name');
}
