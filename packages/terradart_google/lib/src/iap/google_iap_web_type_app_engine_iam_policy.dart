// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_type_app_engine_iam_policy`.
const Set<String> _googleIapWebTypeAppEngineIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_web_type_app_engine_iam_policy`.
///
/// Authoritative IAM policy for IAP App Engine at project scope.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapWebTypeAppEngineIamMember] for single-principal grants.
final class GoogleIapWebTypeAppEngineIamPolicy extends Resource {
  static const String tfType = 'google_iap_web_type_app_engine_iam_policy';

  GoogleIapWebTypeAppEngineIamPolicy({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebTypeAppEngineIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebTypeAppEngineIamPolicy>`.
  RefTo<GoogleIapWebTypeAppEngineIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
