// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_resource_library_category`.
const Set<String> _cloudflareZeroTrustResourceLibraryCategorySensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_resource_library_category`.
final class DataCloudflareZeroTrustResourceLibraryCategory extends Data {
  static const String tfType =
      'cloudflare_zero_trust_resource_library_category';

  DataCloudflareZeroTrustResourceLibraryCategory({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<num> id,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId.encodeAs('id'), 'id': id},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustResourceLibraryCategorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
