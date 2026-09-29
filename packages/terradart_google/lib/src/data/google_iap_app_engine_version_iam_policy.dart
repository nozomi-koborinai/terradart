// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iap/google_iap_app_engine_version_iam_policy.dart';

/// Sensitive field paths for `google_iap_app_engine_version_iam_policy`.
const Set<String> _googleIapAppEngineVersionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_app_engine_version_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIapAppEngineVersionIamPolicy extends Data {
  static const String tfType = 'google_iap_app_engine_version_iam_policy';

  DataGoogleIapAppEngineVersionIamPolicy({
    required super.localName,
    required TfArg<String> appId,
    TfArg<String>? project,
    required TfArg<String> service,
    required TfArg<String> versionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           if (project != null) 'project': project,
           'service': service,
           'version_id': versionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAppEngineVersionIamPolicySensitive;

  /// A reference to the `google_iap_app_engine_version_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleIapAppEngineVersionIamPolicy>`.
  // ignore: invalid_use_of_internal_member
  RefTo<GoogleIapAppEngineVersionIamPolicy> get ref => RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
