// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_billing_enrollment_account_scope`.
const Set<String> _azurermBillingEnrollmentAccountScopeSensitive = <String>{};

/// Factory wrapper for `azurerm_billing_enrollment_account_scope`.
final class DataAzurermBillingEnrollmentAccountScope extends Data {
  static const String tfType = 'azurerm_billing_enrollment_account_scope';

  DataAzurermBillingEnrollmentAccountScope(
    super.localName, {
    required TfArg<String> billingAccountName,
    required TfArg<String> enrollmentAccountName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account_name': billingAccountName,
           'enrollment_account_name': enrollmentAccountName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermBillingEnrollmentAccountScopeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `billing_account_name` attribute.
  TfRef<String> get billingAccountName =>
      TfRef.attribute<String>(this, 'billing_account_name');

  /// Reference to `enrollment_account_name` attribute.
  TfRef<String> get enrollmentAccountName =>
      TfRef.attribute<String>(this, 'enrollment_account_name');
}
