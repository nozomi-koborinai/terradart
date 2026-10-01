// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_email_routing_rule`.
const Set<String> _cloudflareEmailRoutingRuleSensitive = <String>{};

/// Email Routing Rule enum for `source`.
extension type const EmailRoutingRuleSource._(TfArg<String> _)
    implements TfArg<String> {
  EmailRoutingRuleSource.variable(String name) : this._(TfArg.variable(name));
  EmailRoutingRuleSource.expression(String template)
    : this._(TfArg.expression(template));
  const EmailRoutingRuleSource.arg(TfArg<String> arg) : this._(arg);

  static const api = EmailRoutingRuleSource._(TfArgLiteral('api'));
  static const wrangler = EmailRoutingRuleSource._(TfArgLiteral('wrangler'));

  static const List<EmailRoutingRuleSource> values = [api, wrangler];
}

/// Typed helper for the `actions` block of
/// `cloudflare_email_routing_rule` (derived from provider schema).
@immutable
final class EmailRoutingRuleActions {
  const EmailRoutingRuleActions({required this.type, this.value});

  final EmailRoutingRuleActionsType type;

  final TfArg<List<String>>? value;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const EmailRoutingRuleActionsType._(TfArg<String> _)
    implements TfArg<String> {
  EmailRoutingRuleActionsType.variable(String name)
    : this._(TfArg.variable(name));
  EmailRoutingRuleActionsType.expression(String template)
    : this._(TfArg.expression(template));
  const EmailRoutingRuleActionsType.arg(TfArg<String> arg) : this._(arg);

  static const drop = EmailRoutingRuleActionsType._(TfArgLiteral('drop'));
  static const forward = EmailRoutingRuleActionsType._(TfArgLiteral('forward'));
  static const worker = EmailRoutingRuleActionsType._(TfArgLiteral('worker'));

  static const List<EmailRoutingRuleActionsType> values = [
    drop,
    forward,
    worker,
  ];
}

/// Typed helper for the `matchers` block of
/// `cloudflare_email_routing_rule` (derived from provider schema).
@immutable
final class EmailRoutingRuleMatchers {
  const EmailRoutingRuleMatchers({this.field, required this.type, this.value});

  final EmailRoutingRuleField? field;

  final EmailRoutingRuleMatchersType type;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'field': ?field?.toTfJson(),
    'type': type.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `field` — derived from the provider schema description.
extension type const EmailRoutingRuleField._(TfArg<String> _)
    implements TfArg<String> {
  EmailRoutingRuleField.variable(String name) : this._(TfArg.variable(name));
  EmailRoutingRuleField.expression(String template)
    : this._(TfArg.expression(template));
  const EmailRoutingRuleField.arg(TfArg<String> arg) : this._(arg);

  static const to = EmailRoutingRuleField._(TfArgLiteral('to'));

  static const List<EmailRoutingRuleField> values = [to];
}

/// `type` — derived from the provider schema description.
extension type const EmailRoutingRuleMatchersType._(TfArg<String> _)
    implements TfArg<String> {
  EmailRoutingRuleMatchersType.variable(String name)
    : this._(TfArg.variable(name));
  EmailRoutingRuleMatchersType.expression(String template)
    : this._(TfArg.expression(template));
  const EmailRoutingRuleMatchersType.arg(TfArg<String> arg) : this._(arg);

  static const all = EmailRoutingRuleMatchersType._(TfArgLiteral('all'));
  static const literal = EmailRoutingRuleMatchersType._(
    TfArgLiteral('literal'),
  );

  static const List<EmailRoutingRuleMatchersType> values = [all, literal];
}

/// Factory wrapper for `cloudflare_email_routing_rule`.
///
/// Accepted Permissions
///
/// - `Email Routing Rules Read` - `Email Routing Rules Write`
final class CloudflareEmailRoutingRule extends Resource {
  static const String tfType = 'cloudflare_email_routing_rule';

  CloudflareEmailRoutingRule(
    super.localName, {
    TfArg<bool>? enabled,
    TfArg<String>? name,
    TfArg<String>? ownerWorkerTag,
    TfArg<num>? priority,
    EmailRoutingRuleSource? source,
    required RefTo<CloudflareZone> zoneId,
    required List<EmailRoutingRuleActions> actions,
    required List<EmailRoutingRuleMatchers> matchers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'name': ?name,
           'owner_worker_tag': ?ownerWorkerTag,
           'priority': ?priority,
           'source': ?source,
           'zone_id': zoneId.encodeAs('id'),
           'actions': TfArg.literal([for (final e in actions) e.encode()]),
           'matchers': TfArg.literal([for (final e in matchers) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailRoutingRule>`.
  RefTo<CloudflareEmailRoutingRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `owner_worker_tag` attribute.
  TfRef<String> get ownerWorkerTag =>
      TfRef.attribute<String>(this, 'owner_worker_tag');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
