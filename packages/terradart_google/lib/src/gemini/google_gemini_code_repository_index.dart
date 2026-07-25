// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_code_repository_index`.
const Set<String> _googleGeminiCodeRepositoryIndexSensitive = <String>{};

/// Factory wrapper for `google_gemini_code_repository_index`.
///
/// The resource for managing Code Repository Index for Gemini Code Assist.
///
/// Gemini Code Assist **code repository index** — indexes connected source
/// repositories for repository-aware Code Assist.
///
/// **Cost / apply:** gcp-cost: Duet AI `719A-983F-202D` Gemini Code Assist
/// subscription SKU `7743-4D2E-8A79` **$19/mo** (monthly `902A-4EC8-AB87`
/// **$22.8/mo**; Enterprise `78B4-81D7-89D8` **$45/mo**; Enterprise monthly
/// `B0A0-018B-6B14` **$54/mo`). billing-behavior: repository indexing sits on
/// the Code Assist subscription / entitlement path (seat fees while
/// subscribed). Not applyable on `terradart-validate`. **Never** wire into
/// apply-smoke.
///
/// Enable `cloudaicompanion.googleapis.com` before apply.
final class GoogleGeminiCodeRepositoryIndex extends Resource {
  static const String tfType = 'google_gemini_code_repository_index';

  GoogleGeminiCodeRepositoryIndex({
    required super.localName,
    required TfArg<String> codeRepositoryIndexId,
    required TfArg<String> location,
    TfArg<String>? kmsKey,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? forceDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'code_repository_index_id': codeRepositoryIndexId,
           'location': location,
           if (kmsKey != null) 'kms_key': kmsKey,
           if (labels != null) 'labels': labels,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGeminiCodeRepositoryIndexSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
