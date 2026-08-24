// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_data_tag_category`.
const Set<String> _cloudflareZeroTrustDlpDataTagCategorySensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_data_tag_category`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpDataTagCategory extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_data_tag_category';

  DataCloudflareZeroTrustDlpDataTagCategory({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> categoryId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'category_id': categoryId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpDataTagCategorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `template_id` attribute.
  TfRef<String> get templateId => TfRef.attribute<String>(this, 'template_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
