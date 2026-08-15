// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_billing_account_iam_policy`.
const Set<String> _googleBillingAccountIamPolicySensitive = <String>{};

/// Factory wrapper for `google_billing_account_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBillingAccountIamPolicy extends Data {
  static const String tfType = 'google_billing_account_iam_policy';

  DataGoogleBillingAccountIamPolicy({
    required super.localName,
    required TfArg<String> billingAccountId,
  }) : super(
         terraformType: tfType,
         argMap: {'billing_account_id': billingAccountId},
       );

  @override
  Set<String> get sensitiveFields => _googleBillingAccountIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
