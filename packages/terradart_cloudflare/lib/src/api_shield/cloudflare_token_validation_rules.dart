// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_token_validation_rules`.
const Set<String> _cloudflareTokenValidationRulesSensitive = <String>{};

/// Typed helper for the `position` block of
/// `cloudflare_token_validation_rules` (derived from provider schema).
@immutable
final class TokenValidationRulesPosition {
  const TokenValidationRulesPosition({this.after, this.before, this.index});

  final TfArg<String>? after;

  final TfArg<String>? before;

  final TfArg<num>? index;

  Map<String, Object?> encode() => {
    if (after != null) 'after': after!.toTfJson(),
    if (before != null) 'before': before!.toTfJson(),
    if (index != null) 'index': index!.toTfJson(),
  };
}

/// Typed helper for the `selector` block of
/// `cloudflare_token_validation_rules` (derived from provider schema).
@immutable
final class TokenValidationRulesSelector {
  const TokenValidationRulesSelector({this.exclude, this.include});

  final List<TokenValidationRulesSelectorExclude>? exclude;

  final List<TokenValidationRulesSelectorInclude>? include;

  Map<String, Object?> encode() => {
    if (exclude != null) 'exclude': [for (final e in exclude!) e.encode()],
    if (include != null) 'include': [for (final e in include!) e.encode()],
  };
}

/// Typed helper for the `selector.exclude` block of
/// `cloudflare_token_validation_rules` (derived from provider schema).
@immutable
final class TokenValidationRulesSelectorExclude {
  const TokenValidationRulesSelectorExclude({this.operationIds});

  final TfArg<List<Object?>>? operationIds;

  Map<String, Object?> encode() => {
    if (operationIds != null) 'operation_ids': operationIds!.toTfJson(),
  };
}

/// Typed helper for the `selector.include` block of
/// `cloudflare_token_validation_rules` (derived from provider schema).
@immutable
final class TokenValidationRulesSelectorInclude {
  const TokenValidationRulesSelectorInclude({this.host});

  final TfArg<List<Object?>>? host;

  Map<String, Object?> encode() => {if (host != null) 'host': host!.toTfJson()};
}

/// Factory wrapper for `cloudflare_token_validation_rules`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareTokenValidationRules extends Resource {
  static const String tfType = 'cloudflare_token_validation_rules';

  CloudflareTokenValidationRules({
    required super.localName,
    required TfArg<String> action,
    required TfArg<String> description,
    required TfArg<bool> enabled,
    required TfArg<String> expression,
    required TfArg<String> title,
    required TfArg<String> zoneId,
    TokenValidationRulesPosition? position,
    required TokenValidationRulesSelector selector,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'description': description,
           'enabled': enabled,
           'expression': expression,
           'title': title,
           'zone_id': zoneId,
           if (position != null) 'position': TfArg.literal(position.encode()),
           'selector': TfArg.literal(selector.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTokenValidationRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');
}
