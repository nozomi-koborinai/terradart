// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_security_block_sender.dart';

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

  final TfArg<DataEmailSecurityBlockSenderFilterDirection>? direction;

  final TfArg<DataEmailSecurityBlockSenderFilterOrder>? order;

  final TfArg<String>? pattern;

  final TfArg<DataEmailSecurityBlockSenderFilterPatternType>? patternType;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (pattern != null) 'pattern': pattern!.toTfJson(),
    if (patternType != null) 'pattern_type': patternType!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataEmailSecurityBlockSenderFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataEmailSecurityBlockSenderFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataEmailSecurityBlockSenderFilterOrder implements TerraformEnum {
  pattern('pattern'),
  createdAt('created_at');

  const DataEmailSecurityBlockSenderFilterOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// `pattern_type` — derived from the provider schema description.
enum DataEmailSecurityBlockSenderFilterPatternType implements TerraformEnum {
  email('EMAIL'),
  domain('DOMAIN'),
  ip('IP'),
  unknown('UNKNOWN');

  const DataEmailSecurityBlockSenderFilterPatternType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_email_security_block_sender`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityBlockSender extends Data {
  static const String tfType = 'cloudflare_email_security_block_sender';

  DataCloudflareEmailSecurityBlockSender({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? patternId,
    DataEmailSecurityBlockSenderFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (patternId != null) 'pattern_id': patternId,
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
}
