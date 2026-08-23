// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_routing_rule`.
const Set<String> _cloudflareEmailRoutingRuleSensitive = <String>{};

/// Typed helper for the `actions` block of
/// `cloudflare_email_routing_rule` (derived from provider schema).
@immutable
final class EmailRoutingRuleActions {
  const EmailRoutingRuleActions({required this.type, this.value});

  final TfArg<String> type;

  final TfArg<List<Object?>>? value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `matchers` block of
/// `cloudflare_email_routing_rule` (derived from provider schema).
@immutable
final class EmailRoutingRuleMatchers {
  const EmailRoutingRuleMatchers({this.field, required this.type, this.value});

  final TfArg<String>? field;

  final TfArg<String> type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (field != null) 'field': field!.toTfJson(),
    'type': type.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
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
    TfArg<String>? source,
    required TfArg<String> zoneId,
    required List<EmailRoutingRuleActions> actions,
    required List<EmailRoutingRuleMatchers> matchers,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           if (name != null) 'name': name,
           if (ownerWorkerTag != null) 'owner_worker_tag': ownerWorkerTag,
           if (priority != null) 'priority': priority,
           if (source != null) 'source': source,
           'zone_id': zoneId,
           'actions': TfArg.literal([for (final e in actions) e.encode()]),
           'matchers': TfArg.literal([for (final e in matchers) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');
}
