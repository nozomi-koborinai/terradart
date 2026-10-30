// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_allow_policies`.
const Set<String> _cloudflareEmailSecurityAllowPoliciesSensitive = <String>{};

/// Data Email Security Allow Policies enum for `direction`.
extension type const DataEmailSecurityAllowPoliciesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityAllowPoliciesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityAllowPoliciesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityAllowPoliciesDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataEmailSecurityAllowPoliciesDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataEmailSecurityAllowPoliciesDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataEmailSecurityAllowPoliciesDirection> values = [
    asc,
    desc,
  ];
}

/// Data Email Security Allow Policies enum for `order`.
extension type const DataEmailSecurityAllowPoliciesOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityAllowPoliciesOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityAllowPoliciesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityAllowPoliciesOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const pattern = DataEmailSecurityAllowPoliciesOrder._(
    TfArgLiteral('pattern'),
  );
  static const createdAt = DataEmailSecurityAllowPoliciesOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataEmailSecurityAllowPoliciesOrder> values = [
    pattern,
    createdAt,
  ];
}

/// Data Email Security Allow Policies Pattern enum for `pattern_type`.
extension type const DataEmailSecurityAllowPoliciesPatternType._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityAllowPoliciesPatternType.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityAllowPoliciesPatternType.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityAllowPoliciesPatternType.arg(TfArg<String> arg)
    : this._(arg);

  static const email = DataEmailSecurityAllowPoliciesPatternType._(
    TfArgLiteral('EMAIL'),
  );
  static const domain = DataEmailSecurityAllowPoliciesPatternType._(
    TfArgLiteral('DOMAIN'),
  );
  static const ip = DataEmailSecurityAllowPoliciesPatternType._(
    TfArgLiteral('IP'),
  );
  static const unknown = DataEmailSecurityAllowPoliciesPatternType._(
    TfArgLiteral('UNKNOWN'),
  );

  static const List<DataEmailSecurityAllowPoliciesPatternType> values = [
    email,
    domain,
    ip,
    unknown,
  ];
}

/// Factory wrapper for `cloudflare_email_security_allow_policies`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityAllowPolicies extends Data {
  static const String tfType = 'cloudflare_email_security_allow_policies';

  DataCloudflareEmailSecurityAllowPolicies(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataEmailSecurityAllowPoliciesDirection? direction,
    TfArg<bool>? isAcceptableSender,
    TfArg<bool>? isExemptRecipient,
    TfArg<bool>? isTrustedSender,
    TfArg<num>? maxItems,
    DataEmailSecurityAllowPoliciesOrder? order,
    TfArg<String>? pattern,
    DataEmailSecurityAllowPoliciesPatternType? patternType,
    TfArg<String>? search,
    TfArg<bool>? verifySender,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'is_acceptable_sender': ?isAcceptableSender,
           'is_exempt_recipient': ?isExemptRecipient,
           'is_trusted_sender': ?isTrustedSender,
           'max_items': ?maxItems,
           'order': ?order,
           'pattern': ?pattern,
           'pattern_type': ?patternType,
           'search': ?search,
           'verify_sender': ?verifySender,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityAllowPoliciesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `is_acceptable_sender` attribute.
  TfRef<bool> get isAcceptableSender =>
      TfRef.attribute<bool>(this, 'is_acceptable_sender');

  /// Reference to `is_exempt_recipient` attribute.
  TfRef<bool> get isExemptRecipient =>
      TfRef.attribute<bool>(this, 'is_exempt_recipient');

  /// Reference to `is_trusted_sender` attribute.
  TfRef<bool> get isTrustedSender =>
      TfRef.attribute<bool>(this, 'is_trusted_sender');

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

  /// Reference to `verify_sender` attribute.
  TfRef<bool> get verifySender => TfRef.attribute<bool>(this, 'verify_sender');
}
