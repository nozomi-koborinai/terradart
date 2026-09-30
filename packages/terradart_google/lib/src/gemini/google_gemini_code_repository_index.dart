// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

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
    RefTo<GoogleKmsCryptoKey>? kmsKey,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? forceDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'code_repository_index_id': codeRepositoryIndexId,
           'location': location,
           'kms_key': ?kmsKey?.encodeAs('id'),
           'labels': ?labels,
           'force_destroy': ?forceDestroy,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGeminiCodeRepositoryIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiCodeRepositoryIndex>`.
  RefTo<GoogleGeminiCodeRepositoryIndex> get ref => RefTo.of(this);

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

  /// Reference to `code_repository_index_id` attribute.
  TfRef<String> get codeRepositoryIndexIdRef =>
      TfRef.attribute<String>(this, 'code_repository_index_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKeyRef => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
