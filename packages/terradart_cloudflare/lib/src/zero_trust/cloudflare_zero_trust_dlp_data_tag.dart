// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_data_tag`.
const Set<String> _cloudflareZeroTrustDlpDataTagSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_data_tag`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpDataTag extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_data_tag';

  CloudflareZeroTrustDlpDataTag(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> categoryId,
    TfArg<String>? description,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'category_id': categoryId,
           'description': ?description,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpDataTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDlpDataTag>`.
  RefTo<CloudflareZeroTrustDlpDataTag> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `category_id` attribute.
  TfRef<String> get categoryId => TfRef.attribute<String>(this, 'category_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
