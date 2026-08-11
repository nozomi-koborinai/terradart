// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_billing_account_iam_policy`.
const Set<String> _googleBillingAccountIamPolicySensitive = <String>{};

/// Factory wrapper for `google_billing_account_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Billing account.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleBillingAccountIamMember] for single-principal grants.
final class GoogleBillingAccountIamPolicy extends Resource {
  static const String tfType = 'google_billing_account_iam_policy';

  GoogleBillingAccountIamPolicy({
    required super.localName,
    required TfArg<String> billingAccountId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account_id': billingAccountId,
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBillingAccountIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
