// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_data_class`.
const Set<String> _cloudflareZeroTrustDlpDataClassSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_data_class`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpDataClass extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_data_class';

  DataCloudflareZeroTrustDlpDataClass({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> dataClassId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'data_class_id': dataClassId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpDataClassSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `data_tags` attribute.
  TfRef<List<String>> get dataTags =>
      TfRef.attribute<List<String>>(this, 'data_tags');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expression` attribute.
  TfRef<String> get expression => TfRef.attribute<String>(this, 'expression');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
