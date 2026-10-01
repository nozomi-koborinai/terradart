// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_block_senders`.
const Set<String> _cloudflareEmailSecurityBlockSendersSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_security_block_senders`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityBlockSenders extends Data {
  static const String tfType = 'cloudflare_email_security_block_senders';

  DataCloudflareEmailSecurityBlockSenders(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? pattern,
    TfArg<String>? patternType,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'pattern': ?pattern,
           'pattern_type': ?patternType,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityBlockSendersSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `pattern_type` attribute.
  TfRef<String> get patternType =>
      TfRef.attribute<String>(this, 'pattern_type');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
