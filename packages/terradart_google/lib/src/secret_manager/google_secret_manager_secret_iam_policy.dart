// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../secret_manager/google_secret_manager_secret.dart'
    show GoogleSecretManagerSecret;

/// Sensitive field paths for `google_secret_manager_secret_iam_policy`.
const Set<String> _googleSecretManagerSecretIamPolicySensitive = <String>{};

/// Factory wrapper for `google_secret_manager_secret_iam_policy`.
///
/// Authoritative IAM policy for a Secret Manager secret.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleSecretManagerSecretIamMember] for single-principal grants.
final class GoogleSecretManagerSecretIamPolicy extends Resource {
  static const String tfType = 'google_secret_manager_secret_iam_policy';

  GoogleSecretManagerSecretIamPolicy(
    super.localName, {
    required RefTo<GoogleSecretManagerSecret> secret,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret_id': secret.encodeAs('secret_id'),
           'policy_data': policyData,
           'project': ?(project ?? secret.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerSecretIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerSecretIamPolicy>`.
  RefTo<GoogleSecretManagerSecretIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');
}
