// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_billing_subaccount`.
const Set<String> _googleBillingSubaccountSensitive = <String>{};

/// Factory wrapper for `google_billing_subaccount`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleBillingSubaccount extends Resource {
  static const String tfType = 'google_billing_subaccount';

  GoogleBillingSubaccount({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required TfArg<String> masterBillingAccount,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           'master_billing_account': masterBillingAccount,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBillingSubaccountSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `billing_account_id` attribute.
  TfRef<String> get billingAccountId =>
      TfRef.attribute<String>(this, 'billing_account_id');

  /// Reference to `open` attribute.
  TfRef<bool> get open => TfRef.attribute<bool>(this, 'open');
}
