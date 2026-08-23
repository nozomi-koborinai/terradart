// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_security_trusted_domains`.
const Set<String> _cloudflareEmailSecurityTrustedDomainsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_security_trusted_domains` (derived from provider schema).
@immutable
final class DataEmailSecurityTrustedDomainsFilter {
  const DataEmailSecurityTrustedDomainsFilter({
    this.direction,
    this.isRecent,
    this.isSimilarity,
    this.order,
    this.pattern,
    this.search,
  });

  final TfArg<String>? direction;

  final TfArg<bool>? isRecent;

  final TfArg<bool>? isSimilarity;

  final TfArg<String>? order;

  final TfArg<String>? pattern;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (isRecent != null) 'is_recent': isRecent!.toTfJson(),
    if (isSimilarity != null) 'is_similarity': isSimilarity!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (pattern != null) 'pattern': pattern!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_email_security_trusted_domains`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityTrustedDomains extends Data {
  static const String tfType = 'cloudflare_email_security_trusted_domains';

  DataCloudflareEmailSecurityTrustedDomains({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? trustedDomainId,
    DataEmailSecurityTrustedDomainsFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (trustedDomainId != null) 'trusted_domain_id': trustedDomainId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityTrustedDomainsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comments` attribute.
  TfRef<String> get comments => TfRef.attribute<String>(this, 'comments');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `is_recent` attribute.
  TfRef<bool> get isRecent => TfRef.attribute<bool>(this, 'is_recent');

  /// Reference to `is_regex` attribute.
  TfRef<bool> get isRegex => TfRef.attribute<bool>(this, 'is_regex');

  /// Reference to `is_similarity` attribute.
  TfRef<bool> get isSimilarity => TfRef.attribute<bool>(this, 'is_similarity');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');
}
