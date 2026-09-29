// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_allow_policy`.
const Set<String> _cloudflareEmailSecurityAllowPolicySensitive = <String>{};

/// Email Security Allow Policy Pattern enum for `pattern_type`.
enum EmailSecurityAllowPolicyPatternType implements TerraformEnum {
  email('EMAIL'),
  domain('DOMAIN'),
  ip('IP'),
  unknown('UNKNOWN');

  const EmailSecurityAllowPolicyPatternType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_email_security_allow_policy`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class CloudflareEmailSecurityAllowPolicy extends Resource {
  static const String tfType = 'cloudflare_email_security_allow_policy';

  CloudflareEmailSecurityAllowPolicy({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? comments,
    required TfArg<bool> isAcceptableSender,
    required TfArg<bool> isExemptRecipient,
    TfArg<bool>? isRecipient,
    required TfArg<bool> isRegex,
    TfArg<bool>? isSender,
    TfArg<bool>? isSpoof,
    required TfArg<bool> isTrustedSender,
    required TfArg<String> pattern,
    required TfArg<EmailSecurityAllowPolicyPatternType> patternType,
    required TfArg<bool> verifySender,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'comments': ?comments,
           'is_acceptable_sender': isAcceptableSender,
           'is_exempt_recipient': isExemptRecipient,
           'is_recipient': ?isRecipient,
           'is_regex': isRegex,
           'is_sender': ?isSender,
           'is_spoof': ?isSpoof,
           'is_trusted_sender': isTrustedSender,
           'pattern': pattern,
           'pattern_type': patternType,
           'verify_sender': verifySender,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityAllowPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailSecurityAllowPolicy>`.
  RefTo<CloudflareEmailSecurityAllowPolicy> get ref => RefTo.of(this);

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
