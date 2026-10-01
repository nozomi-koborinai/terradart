// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_token_validation_rules`.
const Set<String> _cloudflareTokenValidationRulesSensitive = <String>{};

/// Token Validation Rules enum for `action`.
extension type const TokenValidationRulesAction._(TfArg<String> _)
    implements TfArg<String> {
  TokenValidationRulesAction.variable(String name)
    : this._(TfArg.variable(name));
  TokenValidationRulesAction.expression(String template)
    : this._(TfArg.expression(template));
  const TokenValidationRulesAction.arg(TfArg<String> arg) : this._(arg);

  static const log = TokenValidationRulesAction._(TfArgLiteral('log'));
  static const block = TokenValidationRulesAction._(TfArgLiteral('block'));

  static const List<TokenValidationRulesAction> values = [log, block];
}

/// Typed helper for the `position` block of
/// `cloudflare_token_validation_rules` (derived from provider schema).
@immutable
final class TokenValidationRulesPosition {
  const TokenValidationRulesPosition({this.after, this.before, this.index});

  final TfArg<String>? after;

  final TfArg<String>? before;

  final TfArg<num>? index;

  Map<String, Object?> encode() => {
    'after': ?after?.toTfJson(),
    'before': ?before?.toTfJson(),
    'index': ?index?.toTfJson(),
  };
}

/// Typed helper for the `selector` block of
/// `cloudflare_token_validation_rules` (derived from provider schema).
@immutable
final class TokenValidationRulesSelector {
  const TokenValidationRulesSelector({this.exclude, this.include});

  final List<TokenValidationRulesExclude>? exclude;

  final List<TokenValidationRulesInclude>? include;

  Map<String, Object?> encode() => {
    if (exclude != null) 'exclude': [for (final e in exclude!) e.encode()],
    if (include != null) 'include': [for (final e in include!) e.encode()],
  };
}

/// Typed helper for the `selector.exclude` block of
/// `cloudflare_token_validation_rules` (derived from provider schema).
@immutable
final class TokenValidationRulesExclude {
  const TokenValidationRulesExclude({this.operationIds});

  final TfArg<List<String>>? operationIds;

  Map<String, Object?> encode() => {'operation_ids': ?operationIds?.toTfJson()};
}

/// Typed helper for the `selector.include` block of
/// `cloudflare_token_validation_rules` (derived from provider schema).
@immutable
final class TokenValidationRulesInclude {
  const TokenValidationRulesInclude({this.host});

  final TfArg<List<String>>? host;

  Map<String, Object?> encode() => {'host': ?host?.toTfJson()};
}

/// Factory wrapper for `cloudflare_token_validation_rules`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareTokenValidationRules extends Resource {
  static const String tfType = 'cloudflare_token_validation_rules';

  CloudflareTokenValidationRules(
    super.localName, {
    required TokenValidationRulesAction action,
    required TfArg<String> description,
    required TfArg<bool> enabled,
    required TfArg<String> expression,
    required TfArg<String> title,
    required RefTo<CloudflareZone> zoneId,
    TokenValidationRulesPosition? position,
    required TokenValidationRulesSelector selector,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'description': description,
           'enabled': enabled,
           'expression': expression,
           'title': title,
           'zone_id': zoneId.encodeAs('id'),
           if (position != null) 'position': TfArg.literal(position.encode()),
           'selector': TfArg.literal(selector.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTokenValidationRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareTokenValidationRules>`.
  RefTo<CloudflareTokenValidationRules> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expression` attribute.
  TfRef<String> get expression => TfRef.attribute<String>(this, 'expression');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
