// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_block_senders`.
const Set<String> _cloudflareEmailSecurityBlockSendersSensitive = <String>{};

/// Data Email Security Block Senders enum for `direction`.
extension type const DataEmailSecurityBlockSendersDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityBlockSendersDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityBlockSendersDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityBlockSendersDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataEmailSecurityBlockSendersDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataEmailSecurityBlockSendersDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataEmailSecurityBlockSendersDirection> values = [
    asc,
    desc,
  ];
}

/// Data Email Security Block Senders enum for `order`.
extension type const DataEmailSecurityBlockSendersOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityBlockSendersOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityBlockSendersOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityBlockSendersOrder.arg(TfArg<String> arg) : this._(arg);

  static const pattern = DataEmailSecurityBlockSendersOrder._(
    TfArgLiteral('pattern'),
  );
  static const createdAt = DataEmailSecurityBlockSendersOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataEmailSecurityBlockSendersOrder> values = [
    pattern,
    createdAt,
  ];
}

/// Data Email Security Block Senders Pattern enum for `pattern_type`.
extension type const DataEmailSecurityBlockSendersPatternType._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityBlockSendersPatternType.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityBlockSendersPatternType.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityBlockSendersPatternType.arg(TfArg<String> arg)
    : this._(arg);

  static const email = DataEmailSecurityBlockSendersPatternType._(
    TfArgLiteral('EMAIL'),
  );
  static const domain = DataEmailSecurityBlockSendersPatternType._(
    TfArgLiteral('DOMAIN'),
  );
  static const ip = DataEmailSecurityBlockSendersPatternType._(
    TfArgLiteral('IP'),
  );
  static const unknown = DataEmailSecurityBlockSendersPatternType._(
    TfArgLiteral('UNKNOWN'),
  );

  static const List<DataEmailSecurityBlockSendersPatternType> values = [
    email,
    domain,
    ip,
    unknown,
  ];
}

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
    DataEmailSecurityBlockSendersDirection? direction,
    TfArg<num>? maxItems,
    DataEmailSecurityBlockSendersOrder? order,
    TfArg<String>? pattern,
    DataEmailSecurityBlockSendersPatternType? patternType,
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
