// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_service_account_iam_policy`.
const Set<String> _googleServiceAccountIamPolicySensitive = <String>{};

/// Factory wrapper for `google_service_account_iam_policy`.
///
/// Authoritative IAM policy for a service account resource.
///
/// `policy_data` replaces the entire SA IAM policy. Prefer
/// [GoogleServiceAccountIamMember] for single-principal grants.
final class GoogleServiceAccountIamPolicy extends Resource {
  static const String tfType = 'google_service_account_iam_policy';

  GoogleServiceAccountIamPolicy({
    required super.localName,
    required RefTo<GoogleServiceAccount> serviceAccount,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_account_id': serviceAccount.encodeAs('name'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceAccountIamPolicy>`.
  RefTo<GoogleServiceAccountIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `service_account_id` attribute.
  TfRef<String> get serviceAccountIdRef =>
      TfRef.attribute<String>(this, 'service_account_id');
}
