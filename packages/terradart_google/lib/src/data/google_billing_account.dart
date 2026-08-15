// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_billing_account`.
const Set<String> _googleBillingAccountSensitive = <String>{};

/// Factory wrapper for `google_billing_account`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBillingAccount extends Data {
  static const String tfType = 'google_billing_account';

  DataGoogleBillingAccount({
    required super.localName,
    TfArg<String>? billingAccount,
    TfArg<String>? displayName,
    TfArg<bool>? lookupProjects,
    TfArg<bool>? open,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (billingAccount != null) 'billing_account': billingAccount,
           if (displayName != null) 'display_name': displayName,
           if (lookupProjects != null) 'lookup_projects': lookupProjects,
           if (open != null) 'open': open,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBillingAccountSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `currency_code` attribute.
  TfRef<String> get currencyCode =>
      TfRef.attribute<String>(this, 'currency_code');

  /// Reference to `project_ids` attribute.
  TfRef<List<String>> get projectIds =>
      TfRef.attribute<List<String>>(this, 'project_ids');
}
