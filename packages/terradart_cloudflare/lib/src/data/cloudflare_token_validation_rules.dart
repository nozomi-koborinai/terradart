// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_token_validation_rules`.
const Set<String> _cloudflareTokenValidationRulesSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_token_validation_rules` (derived from provider schema).
@immutable
final class DataTokenValidationRulesFilter {
  const DataTokenValidationRulesFilter({
    this.action,
    this.enabled,
    this.host,
    this.hostname,
    this.id,
    this.tokenConfiguration,
  });

  final TfArg<String>? action;

  final TfArg<bool>? enabled;

  final TfArg<String>? host;

  final TfArg<String>? hostname;

  final TfArg<String>? id;

  final TfArg<List<Object?>>? tokenConfiguration;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (host != null) 'host': host!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (tokenConfiguration != null)
      'token_configuration': tokenConfiguration!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_token_validation_rules`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareTokenValidationRules extends Data {
  static const String tfType = 'cloudflare_token_validation_rules';

  DataCloudflareTokenValidationRules({
    required super.localName,
    TfArg<String>? ruleId,
    TfArg<String>? zoneId,
    DataTokenValidationRulesFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (ruleId != null) 'rule_id': ruleId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTokenValidationRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expression` attribute.
  TfRef<String> get expression => TfRef.attribute<String>(this, 'expression');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');
}
