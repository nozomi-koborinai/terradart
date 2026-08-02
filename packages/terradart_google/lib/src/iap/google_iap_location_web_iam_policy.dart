// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_location_web_iam_policy`.
const Set<String> _googleIapLocationWebIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_location_web_iam_policy`.
///
/// Authoritative IAM policy for IAP **web resources** at a regional
/// location.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapLocationWebIamMember] for single-principal grants.
final class GoogleIapLocationWebIamPolicy extends Resource {
  static const String tfType = 'google_iap_location_web_iam_policy';

  GoogleIapLocationWebIamPolicy({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapLocationWebIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
