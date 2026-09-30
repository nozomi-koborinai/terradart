// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_app_engine_version_iam_policy`.
const Set<String> _googleIapAppEngineVersionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_app_engine_version_iam_policy`.
///
/// Authoritative IAM policy for an IAP App Engine version.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapAppEngineVersionIamMember] for single-principal grants.
final class GoogleIapAppEngineVersionIamPolicy extends Resource {
  static const String tfType = 'google_iap_app_engine_version_iam_policy';

  GoogleIapAppEngineVersionIamPolicy({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> service,
    required TfArg<String> versionId,
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
           'version_id': versionId,
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAppEngineVersionIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAppEngineVersionIamPolicy>`.
  RefTo<GoogleIapAppEngineVersionIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `app_id` attribute.
  TfRef<String> get appIdRef => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get serviceRef => TfRef.attribute<String>(this, 'service');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionIdRef => TfRef.attribute<String>(this, 'version_id');
}
