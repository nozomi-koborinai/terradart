// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_security_allow_policy.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  final DataEmailSecurityAllowPolicyDirection? direction;

  final TfArg<bool>? isAcceptableSender;

  final TfArg<bool>? isExemptRecipient;

  final TfArg<bool>? isTrustedSender;

  final DataEmailSecurityAllowPolicyOrder? order;

  final TfArg<String>? pattern;

  final DataEmailSecurityAllowPolicyFilterPatternType? patternType;

  final TfArg<String>? search;

  final TfArg<bool>? verifySender;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'is_acceptable_sender': ?isAcceptableSender?.toTfJson(),
    'is_exempt_recipient': ?isExemptRecipient?.toTfJson(),
    'is_trusted_sender': ?isTrustedSender?.toTfJson(),
    'order': ?order?.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
    'pattern_type': ?patternType?.toTfJson(),
    'search': ?search?.toTfJson(),
    'verify_sender': ?verifySender?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataEmailSecurityAllowPolicyDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityAllowPolicyDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityAllowPolicyDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityAllowPolicyDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataEmailSecurityAllowPolicyDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataEmailSecurityAllowPolicyDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataEmailSecurityAllowPolicyDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataEmailSecurityAllowPolicyOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityAllowPolicyOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityAllowPolicyOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityAllowPolicyOrder.arg(TfArg<String> arg) : this._(arg);

  static const pattern = DataEmailSecurityAllowPolicyOrder._(
    TfArgLiteral('pattern'),
  );
  static const createdAt = DataEmailSecurityAllowPolicyOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataEmailSecurityAllowPolicyOrder> values = [
    pattern,
    createdAt,
  ];
}

/// `pattern_type` — derived from the provider schema description.
extension type const DataEmailSecurityAllowPolicyFilterPatternType._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityAllowPolicyFilterPatternType.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityAllowPolicyFilterPatternType.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityAllowPolicyFilterPatternType.arg(TfArg<String> arg)
    : this._(arg);

  static const email = DataEmailSecurityAllowPolicyFilterPatternType._(
    TfArgLiteral('EMAIL'),
  );
  static const domain = DataEmailSecurityAllowPolicyFilterPatternType._(
    TfArgLiteral('DOMAIN'),
  );
  static const ip = DataEmailSecurityAllowPolicyFilterPatternType._(
    TfArgLiteral('IP'),
  );
  static const unknown = DataEmailSecurityAllowPolicyFilterPatternType._(
    TfArgLiteral('UNKNOWN'),
  );

  static const List<DataEmailSecurityAllowPolicyFilterPatternType> values = [
    email,
    domain,
    ip,
    unknown,
  ];
}

/// Factory wrapper for `cloudflare_email_security_allow_policy`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityAllowPolicy extends Data {
  static const String tfType = 'cloudflare_email_security_allow_policy';

  DataCloudflareEmailSecurityAllowPolicy(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? policyId,
    DataEmailSecurityAllowPolicyFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'policy_id': ?policyId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityAllowPolicySensitive;

  /// A reference to the `cloudflare_email_security_allow_policy` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailSecurityAllowPolicy>`.
  RefTo<CloudflareEmailSecurityAllowPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
