// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_monetization_rules`.
const Set<String> _cloudflareMonetizationRulesSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_monetization_rules` (derived from provider schema).
@immutable
final class MonetizationRules {
  const MonetizationRules({
    required this.address,
    this.description,
    this.enabled,
    required this.expression,
    this.id,
    this.price,
    required this.scheme,
  });

  final TfArg<String> address;

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> expression;

  final TfArg<String>? id;

  final TfArg<String>? price;

  final MonetizationRulesScheme scheme;

  @internal
  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expression': expression.toTfJson(),
    'id': ?id?.toTfJson(),
    'price': ?price?.toTfJson(),
    'scheme': scheme.toTfJson(),
  };
}

/// `scheme` — derived from the provider schema description.
extension type const MonetizationRulesScheme._(TfArg<String> _)
    implements TfArg<String> {
  MonetizationRulesScheme.variable(String name) : this._(TfArg.variable(name));
  MonetizationRulesScheme.expression(String template)
    : this._(TfArg.expression(template));
  const MonetizationRulesScheme.arg(TfArg<String> arg) : this._(arg);

  static const exact = MonetizationRulesScheme._(TfArgLiteral('exact'));
  static const upto = MonetizationRulesScheme._(TfArgLiteral('upto'));
  static const originControlled = MonetizationRulesScheme._(
    TfArgLiteral('origin_controlled'),
  );

  static const List<MonetizationRulesScheme> values = [
    exact,
    upto,
    originControlled,
  ];
}

/// Factory wrapper for `cloudflare_monetization_rules`.
final class CloudflareMonetizationRules extends Resource {
  static const String tfType = 'cloudflare_monetization_rules';

  CloudflareMonetizationRules(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    required List<MonetizationRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMonetizationRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMonetizationRules>`.
  RefTo<CloudflareMonetizationRules> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
