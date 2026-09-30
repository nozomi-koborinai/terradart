// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_code_repository_index.dart'
    show GoogleGeminiCodeRepositoryIndex;
import '../gemini/google_gemini_repository_group.dart'
    show GoogleGeminiRepositoryGroup;

/// Sensitive field paths for `google_gemini_repository_group_iam_policy`.
const Set<String> _googleGeminiRepositoryGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_gemini_repository_group_iam_policy`.
///
/// Authoritative IAM policy for a Gemini Code Assist repository group.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleGeminiRepositoryGroupIamMember] for single-principal grants.
final class GoogleGeminiRepositoryGroupIamPolicy extends Resource {
  static const String tfType = 'google_gemini_repository_group_iam_policy';

  GoogleGeminiRepositoryGroupIamPolicy({
    required super.localName,
    required RefTo<GoogleGeminiRepositoryGroup> repositoryGroupId,
    required RefTo<GoogleGeminiCodeRepositoryIndex> codeRepositoryIndex,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_group_id': repositoryGroupId.encodeAs(
             'repository_group_id',
           ),
           'code_repository_index': codeRepositoryIndex.encodeAs(
             'code_repository_index_id',
           ),
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiRepositoryGroupIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiRepositoryGroupIamPolicy>`.
  RefTo<GoogleGeminiRepositoryGroupIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `code_repository_index` attribute.
  TfRef<String> get codeRepositoryIndexRef =>
      TfRef.attribute<String>(this, 'code_repository_index');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_group_id` attribute.
  TfRef<String> get repositoryGroupIdRef =>
      TfRef.attribute<String>(this, 'repository_group_id');
}
