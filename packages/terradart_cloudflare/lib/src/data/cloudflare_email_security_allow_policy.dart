// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_security_allow_policy`.
const Set<String> _cloudflareEmailSecurityAllowPolicySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_security_allow_policy` (derived from provider schema).
@immutable
final class DataEmailSecurityAllowPolicyFilter {
  const DataEmailSecurityAllowPolicyFilter({
    this.direction,
    this.isAcceptableSender,
    this.isExemptRecipient,
    this.isTrustedSender,
    this.order,
    this.pattern,
    this.patternType,
    this.search,
    this.verifySender,
  });

  final TfArg<String>? direction;

  final TfArg<bool>? isAcceptableSender;

  final TfArg<bool>? isExemptRecipient;

  final TfArg<bool>? isTrustedSender;

  final TfArg<String>? order;

  final TfArg<String>? pattern;

  final TfArg<String>? patternType;

  final TfArg<String>? search;

  final TfArg<bool>? verifySender;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (isAcceptableSender != null)
      'is_acceptable_sender': isAcceptableSender!.toTfJson(),
    if (isExemptRecipient != null)
      'is_exempt_recipient': isExemptRecipient!.toTfJson(),
    if (isTrustedSender != null)
      'is_trusted_sender': isTrustedSender!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (pattern != null) 'pattern': pattern!.toTfJson(),
    if (patternType != null) 'pattern_type': patternType!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
    if (verifySender != null) 'verify_sender': verifySender!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_email_security_allow_policy`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityAllowPolicy extends Data {
  static const String tfType = 'cloudflare_email_security_allow_policy';

  DataCloudflareEmailSecurityAllowPolicy({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? policyId,
    DataEmailSecurityAllowPolicyFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (policyId != null) 'policy_id': policyId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityAllowPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comments` attribute.
  TfRef<String> get comments => TfRef.attribute<String>(this, 'comments');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

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

  /// Reference to `verify_sender` attribute.
  TfRef<bool> get verifySender => TfRef.attribute<bool>(this, 'verify_sender');
}
