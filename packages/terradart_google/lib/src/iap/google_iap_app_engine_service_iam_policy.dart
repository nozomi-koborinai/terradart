// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_app_engine_service_iam_policy`.
const Set<String> _googleIapAppEngineServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_app_engine_service_iam_policy`.
///
/// Authoritative IAM policy for an IAP App Engine service.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapAppEngineServiceIamMember] for single-principal grants.
final class GoogleIapAppEngineServiceIamPolicy extends Resource {
  static const String tfType = 'google_iap_app_engine_service_iam_policy';

  GoogleIapAppEngineServiceIamPolicy(
    super.localName, {
    required TfArg<String> appId,
    required TfArg<String> service,
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
           'service': service,
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAppEngineServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAppEngineServiceIamPolicy>`.
  RefTo<GoogleIapAppEngineServiceIamPolicy> get ref => RefTo.of(this);

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

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
