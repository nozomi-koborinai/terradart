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
///
/// Email Security allow policy: exempts messages matching `pattern`
/// (an email address, domain or IP / CIDR, per `patternType`) from
/// detections.
///
/// `isTrustedSender` bypasses every detection for the sender,
/// `isAcceptableSender` only Spam / Spoof / Bulk, and `isExemptRecipient`
/// every detection for the recipient; `verifySender` honors the policy
/// only for mail that passes DMARC, SPF or DKIM. The deprecated
/// `is_sender`, `is_spoof` and `is_recipient` inputs (end of life
/// 2026-07-01) are not exposed.
final class CloudflareEmailSecurityAllowPolicy extends Resource {
  static const String tfType = 'cloudflare_email_security_allow_policy';

  CloudflareEmailSecurityAllowPolicy(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> pattern,
    required TfArg<EmailSecurityAllowPolicyPatternType> patternType,
    required TfArg<bool> isRegex,
    required TfArg<bool> isTrustedSender,
    required TfArg<bool> isAcceptableSender,
    required TfArg<bool> isExemptRecipient,
    required TfArg<bool> verifySender,
    TfArg<String>? comments,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'pattern': pattern,
           'pattern_type': patternType,
           'is_regex': isRegex,
           'is_trusted_sender': isTrustedSender,
           'is_acceptable_sender': isAcceptableSender,
           'is_exempt_recipient': isExemptRecipient,
           'verify_sender': verifySender,
           'comments': ?comments,
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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `comments` attribute.
  TfRef<String> get comments => TfRef.attribute<String>(this, 'comments');

  /// Reference to `is_acceptable_sender` attribute.
  TfRef<bool> get isAcceptableSender =>
      TfRef.attribute<bool>(this, 'is_acceptable_sender');

  /// Reference to `is_exempt_recipient` attribute.
  TfRef<bool> get isExemptRecipient =>
      TfRef.attribute<bool>(this, 'is_exempt_recipient');

  /// Reference to `is_recipient` attribute.
  TfRef<bool> get isRecipient => TfRef.attribute<bool>(this, 'is_recipient');

  /// Reference to `is_regex` attribute.
  TfRef<bool> get isRegex => TfRef.attribute<bool>(this, 'is_regex');

  /// Reference to `is_sender` attribute.
  TfRef<bool> get isSender => TfRef.attribute<bool>(this, 'is_sender');

  /// Reference to `is_spoof` attribute.
  TfRef<bool> get isSpoof => TfRef.attribute<bool>(this, 'is_spoof');

  /// Reference to `is_trusted_sender` attribute.
  TfRef<bool> get isTrustedSender =>
      TfRef.attribute<bool>(this, 'is_trusted_sender');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `pattern_type` attribute.
  TfRef<String> get patternType =>
      TfRef.attribute<String>(this, 'pattern_type');

  /// Reference to `verify_sender` attribute.
  TfRef<bool> get verifySender => TfRef.attribute<bool>(this, 'verify_sender');
}
