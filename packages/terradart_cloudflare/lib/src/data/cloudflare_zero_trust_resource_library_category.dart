// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_resource_library_category`.
const Set<String> _cloudflareZeroTrustResourceLibraryCategorySensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_resource_library_category`.
final class DataCloudflareZeroTrustResourceLibraryCategory extends Data {
  static const String tfType =
      'cloudflare_zero_trust_resource_library_category';

  DataCloudflareZeroTrustResourceLibraryCategory({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> id,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'id': id},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustResourceLibraryCategorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
