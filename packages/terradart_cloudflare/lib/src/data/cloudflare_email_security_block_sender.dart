// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_security_block_sender`.
const Set<String> _cloudflareEmailSecurityBlockSenderSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_security_block_sender` (derived from provider schema).
@immutable
final class DataEmailSecurityBlockSenderFilter {
  const DataEmailSecurityBlockSenderFilter({
    this.direction,
    this.order,
    this.pattern,
    this.patternType,
    this.search,
  });

  final TfArg<String>? direction;

  final TfArg<String>? order;

  final TfArg<String>? pattern;

  final TfArg<String>? patternType;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (pattern != null) 'pattern': pattern!.toTfJson(),
    if (patternType != null) 'pattern_type': patternType!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_email_security_block_sender`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityBlockSender extends Data {
  static const String tfType = 'cloudflare_email_security_block_sender';

  DataCloudflareEmailSecurityBlockSender({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? patternId,
    DataEmailSecurityBlockSenderFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (patternId != null) 'pattern_id': patternId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityBlockSenderSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comments` attribute.
  TfRef<String> get comments => TfRef.attribute<String>(this, 'comments');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `is_regex` attribute.
  TfRef<bool> get isRegex => TfRef.attribute<bool>(this, 'is_regex');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `pattern_type` attribute.
  TfRef<String> get patternType =>
      TfRef.attribute<String>(this, 'pattern_type');
}
