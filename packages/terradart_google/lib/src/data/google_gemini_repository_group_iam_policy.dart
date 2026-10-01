// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../gemini/google_gemini_repository_group_iam_policy.dart';
import '../gemini/google_gemini_code_repository_index.dart'
    show GoogleGeminiCodeRepositoryIndex;
import '../gemini/google_gemini_repository_group.dart'
    show GoogleGeminiRepositoryGroup;

/// Sensitive field paths for `google_gemini_repository_group_iam_policy`.
const Set<String> _googleGeminiRepositoryGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_gemini_repository_group_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleGeminiRepositoryGroupIamPolicy extends Data {
  static const String tfType = 'google_gemini_repository_group_iam_policy';

  DataGoogleGeminiRepositoryGroupIamPolicy({
    required super.localName,
    required RefTo<GoogleGeminiCodeRepositoryIndex> codeRepositoryIndex,
    TfArg<String>? location,
    TfArg<String>? project,
    required RefTo<GoogleGeminiRepositoryGroup> repositoryGroupId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'code_repository_index': codeRepositoryIndex.encodeAs(
             'code_repository_index_id',
           ),
           'location': ?location,
           'project': ?project,
           'repository_group_id': repositoryGroupId.encodeAs(
             'repository_group_id',
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiRepositoryGroupIamPolicySensitive;

  /// A reference to the `google_gemini_repository_group_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleGeminiRepositoryGroupIamPolicy>`.
  RefTo<GoogleGeminiRepositoryGroupIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `code_repository_index` attribute.
  TfRef<String> get codeRepositoryIndex =>
      TfRef.attribute<String>(this, 'code_repository_index');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_group_id` attribute.
  TfRef<String> get repositoryGroupId =>
      TfRef.attribute<String>(this, 'repository_group_id');
}
