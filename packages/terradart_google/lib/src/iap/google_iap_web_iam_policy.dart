// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_iam_policy`.
const Set<String> _googleIapWebIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_web_iam_policy`.
///
/// Authoritative IAM policy for IAP-protected HTTPS resources at
/// **project scope** (`iap.web`).
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebIamMember] for single-principal grants.
final class GoogleIapWebIamPolicy extends Resource {
  static const String tfType = 'google_iap_web_iam_policy';

  GoogleIapWebIamPolicy({
    required super.localName,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'policy_data': policyData, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleIapWebIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebIamPolicy>`.
  RefTo<GoogleIapWebIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
