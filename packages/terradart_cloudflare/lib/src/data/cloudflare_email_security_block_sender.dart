// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_security_block_sender.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  final DataEmailSecurityBlockSenderDirection? direction;

  final DataEmailSecurityBlockSenderOrder? order;

  final TfArg<String>? pattern;

  final DataEmailSecurityBlockSenderFilterPatternType? patternType;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
    'pattern_type': ?patternType?.toTfJson(),
    'search': ?search?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataEmailSecurityBlockSenderDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityBlockSenderDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityBlockSenderDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityBlockSenderDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataEmailSecurityBlockSenderDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataEmailSecurityBlockSenderDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataEmailSecurityBlockSenderDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataEmailSecurityBlockSenderOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityBlockSenderOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityBlockSenderOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityBlockSenderOrder.arg(TfArg<String> arg) : this._(arg);

  static const pattern = DataEmailSecurityBlockSenderOrder._(
    TfArgLiteral('pattern'),
  );
  static const createdAt = DataEmailSecurityBlockSenderOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataEmailSecurityBlockSenderOrder> values = [
    pattern,
    createdAt,
  ];
}

/// `pattern_type` — derived from the provider schema description.
extension type const DataEmailSecurityBlockSenderFilterPatternType._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityBlockSenderFilterPatternType.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityBlockSenderFilterPatternType.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityBlockSenderFilterPatternType.arg(TfArg<String> arg)
    : this._(arg);

  static const email = DataEmailSecurityBlockSenderFilterPatternType._(
    TfArgLiteral('EMAIL'),
  );
  static const domain = DataEmailSecurityBlockSenderFilterPatternType._(
    TfArgLiteral('DOMAIN'),
  );
  static const ip = DataEmailSecurityBlockSenderFilterPatternType._(
    TfArgLiteral('IP'),
  );
  static const unknown = DataEmailSecurityBlockSenderFilterPatternType._(
    TfArgLiteral('UNKNOWN'),
  );

  static const List<DataEmailSecurityBlockSenderFilterPatternType> values = [
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
final class DataCloudflareEmailSecurityBlockSender extends Data {
  static const String tfType = 'cloudflare_email_security_block_sender';

  DataCloudflareEmailSecurityBlockSender(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? patternId,
    DataEmailSecurityBlockSenderFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'pattern_id': ?patternId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityBlockSenderSensitive;

  /// A reference to the `cloudflare_email_security_block_sender` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailSecurityBlockSender>`.
  RefTo<CloudflareEmailSecurityBlockSender> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `pattern_id` attribute.
  TfRef<String> get patternId => TfRef.attribute<String>(this, 'pattern_id');
}
