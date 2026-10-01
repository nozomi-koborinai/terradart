// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_email_routing_rule`.
const Set<String> _cloudflareEmailRoutingRuleSensitive = <String>{};

/// Email Routing Rule enum for `source`.
enum EmailRoutingRuleSource implements TerraformEnum {
  api('api'),
  wrangler('wrangler');

  const EmailRoutingRuleSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions` block of
/// `cloudflare_email_routing_rule` (derived from provider schema).
@immutable
final class EmailRoutingRuleActions {
  const EmailRoutingRuleActions({required this.type, this.value});

  final TfArg<EmailRoutingRuleActionsType> type;

  final TfArg<List<String>>? value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum EmailRoutingRuleActionsType implements TerraformEnum {
  drop('drop'),
  forward('forward'),
  worker('worker');

  const EmailRoutingRuleActionsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `matchers` block of
/// `cloudflare_email_routing_rule` (derived from provider schema).
@immutable
final class EmailRoutingRuleMatchers {
  const EmailRoutingRuleMatchers({this.field, required this.type, this.value});

  final TfArg<EmailRoutingRuleField>? field;

  final TfArg<EmailRoutingRuleMatchersType> type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'field': ?field?.toTfJson(),
    'type': type.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `field` — derived from the provider schema description.
enum EmailRoutingRuleField implements TerraformEnum {
  to('to');

  const EmailRoutingRuleField(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum EmailRoutingRuleMatchersType implements TerraformEnum {
  all('all'),
  literal('literal');

  const EmailRoutingRuleMatchersType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_email_routing_rule`.
///
/// Accepted Permissions
///
/// - `Email Routing Rules Read` - `Email Routing Rules Write`
final class CloudflareEmailRoutingRule extends Resource {
  static const String tfType = 'cloudflare_email_routing_rule';

  CloudflareEmailRoutingRule({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<String>? name,
    TfArg<String>? ownerWorkerTag,
    TfArg<num>? priority,
    TfArg<EmailRoutingRuleSource>? source,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `owner_worker_tag` attribute.
  TfRef<String> get ownerWorkerTagRef =>
      TfRef.attribute<String>(this, 'owner_worker_tag');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `source` attribute.
  TfRef<String> get sourceRef => TfRef.attribute<String>(this, 'source');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
