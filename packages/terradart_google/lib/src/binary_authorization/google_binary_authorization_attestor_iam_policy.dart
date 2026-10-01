// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../binary_authorization/google_binary_authorization_attestor.dart'
    show GoogleBinaryAuthorizationAttestor;

/// Sensitive field paths for `google_binary_authorization_attestor_iam_policy`.
const Set<String> _googleBinaryAuthorizationAttestorIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_binary_authorization_attestor_iam_policy`.
///
/// Authoritative IAM policy for a Binary Authorization attestor.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBinaryAuthorizationAttestorIamMember] for single-principal grants.
final class GoogleBinaryAuthorizationAttestorIamPolicy extends Resource {
  static const String tfType =
      'google_binary_authorization_attestor_iam_policy';

  GoogleBinaryAuthorizationAttestorIamPolicy({
    required super.localName,
    required RefTo<GoogleBinaryAuthorizationAttestor> attestor,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attestor': attestor.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? attestor.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBinaryAuthorizationAttestorIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBinaryAuthorizationAttestorIamPolicy>`.
  RefTo<GoogleBinaryAuthorizationAttestorIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `attestor` attribute.
  TfRef<String> get attestor => TfRef.attribute<String>(this, 'attestor');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
