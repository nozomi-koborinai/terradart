// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_trusted_domains`.
const Set<String> _cloudflareEmailSecurityTrustedDomainsSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_security_trusted_domains`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class CloudflareEmailSecurityTrustedDomains extends Resource {
  static const String tfType = 'cloudflare_email_security_trusted_domains';

  CloudflareEmailSecurityTrustedDomains({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? comments,
    TfArg<bool>? isRecent,
    TfArg<bool>? isRegex,
    TfArg<bool>? isSimilarity,
    required TfArg<String> pattern,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'comments': ?comments,
           'is_recent': ?isRecent,
           'is_regex': ?isRegex,
           'is_similarity': ?isSimilarity,
           'pattern': pattern,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityTrustedDomainsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailSecurityTrustedDomains>`.
  RefTo<CloudflareEmailSecurityTrustedDomains> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `comments` attribute.
  TfRef<String> get commentsRef => TfRef.attribute<String>(this, 'comments');

  /// Reference to `is_recent` attribute.
  TfRef<bool> get isRecentRef => TfRef.attribute<bool>(this, 'is_recent');

  /// Reference to `is_regex` attribute.
  TfRef<bool> get isRegexRef => TfRef.attribute<bool>(this, 'is_regex');

  /// Reference to `is_similarity` attribute.
  TfRef<bool> get isSimilarityRef =>
      TfRef.attribute<bool>(this, 'is_similarity');

  /// Reference to `pattern` attribute.
  TfRef<String> get patternRef => TfRef.attribute<String>(this, 'pattern');
}
