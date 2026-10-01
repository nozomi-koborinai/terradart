// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_block_sender`.
const Set<String> _cloudflareEmailSecurityBlockSenderSensitive = <String>{};

/// Email Security Block Sender Pattern enum for `pattern_type`.
extension type const EmailSecurityBlockSenderPatternType._(TfArg<String> _)
    implements TfArg<String> {
  EmailSecurityBlockSenderPatternType.variable(String name)
    : this._(TfArg.variable(name));
  EmailSecurityBlockSenderPatternType.expression(String template)
    : this._(TfArg.expression(template));
  const EmailSecurityBlockSenderPatternType.arg(TfArg<String> arg)
    : this._(arg);

  static const email = EmailSecurityBlockSenderPatternType._(
    TfArgLiteral('EMAIL'),
  );
  static const domain = EmailSecurityBlockSenderPatternType._(
    TfArgLiteral('DOMAIN'),
  );
  static const ip = EmailSecurityBlockSenderPatternType._(TfArgLiteral('IP'));
  static const unknown = EmailSecurityBlockSenderPatternType._(
    TfArgLiteral('UNKNOWN'),
  );

  static const List<EmailSecurityBlockSenderPatternType> values = [
    email,
    domain,
    ip,
    unknown,
  ];
}

/// Factory wrapper for `cloudflare_email_security_block_sender`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class CloudflareEmailSecurityBlockSender extends Resource {
  static const String tfType = 'cloudflare_email_security_block_sender';

  CloudflareEmailSecurityBlockSender(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? comments,
    required TfArg<bool> isRegex,
    required TfArg<String> pattern,
    required EmailSecurityBlockSenderPatternType patternType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'comments': ?comments,
           'is_regex': isRegex,
           'pattern': pattern,
           'pattern_type': patternType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityBlockSenderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailSecurityBlockSender>`.
  RefTo<CloudflareEmailSecurityBlockSender> get ref => RefTo.of(this);

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
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `comments` attribute.
  TfRef<String> get comments => TfRef.attribute<String>(this, 'comments');

  /// Reference to `is_regex` attribute.
  TfRef<bool> get isRegex => TfRef.attribute<bool>(this, 'is_regex');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `pattern_type` attribute.
  TfRef<String> get patternType =>
      TfRef.attribute<String>(this, 'pattern_type');
}
