// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_security_block_sender`.
const Set<String> _cloudflareEmailSecurityBlockSenderSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_security_block_sender`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class CloudflareEmailSecurityBlockSender extends Resource {
  static const String tfType = 'cloudflare_email_security_block_sender';

  CloudflareEmailSecurityBlockSender({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? comments,
    required TfArg<bool> isRegex,
    required TfArg<String> pattern,
    required TfArg<String> patternType,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (comments != null) 'comments': comments,
           'is_regex': isRegex,
           'pattern': pattern,
           'pattern_type': patternType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityBlockSenderSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
