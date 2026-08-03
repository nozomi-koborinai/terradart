// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_iam_policy`.
const Set<String> _googleProjectIamPolicySensitive = <String>{};

/// Factory wrapper for `google_project_iam_policy`.
///
/// Authoritative IAM policy for a GCP project.
///
/// `policy_data` replaces the entire project IAM policy. Prefer
/// [GoogleProjectIamMember] for single-principal grants.
final class GoogleProjectIamPolicy extends Resource {
  static const String tfType = 'google_project_iam_policy';

  GoogleProjectIamPolicy({
    required super.localName,
    required TfArg<String> project,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'project': project, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleProjectIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
