// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_firewall_rule`.
const Set<String> _cloudflareFirewallRuleSensitive = <String>{};

/// Typed helper for the `action` block of
/// `cloudflare_firewall_rule` (derived from provider schema).
@immutable
final class FirewallRuleAction {
  const FirewallRuleAction({this.mode, this.timeout, this.response});

  final TfArg<String>? mode;

  final TfArg<num>? timeout;

  final FirewallRuleActionResponse? response;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
    if (response != null) 'response': response!.encode(),
  };
}

/// Typed helper for the `action.response` block of
/// `cloudflare_firewall_rule` (derived from provider schema).
@immutable
final class FirewallRuleActionResponse {
  const FirewallRuleActionResponse({this.body, this.contentType});

  final TfArg<String>? body;

  final TfArg<String>? contentType;

  Map<String, Object?> encode() => {
    if (body != null) 'body': body!.toTfJson(),
    if (contentType != null) 'content_type': contentType!.toTfJson(),
  };
}

/// Typed helper for the `filter` block of
/// `cloudflare_firewall_rule` (derived from provider schema).
@immutable
final class FirewallRuleFilter {
  const FirewallRuleFilter({
    this.description,
    this.expression,
    this.paused,
    this.ref,
  });

  final TfArg<String>? description;

  final TfArg<String>? expression;

  final TfArg<bool>? paused;

  final TfArg<String>? ref;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (paused != null) 'paused': paused!.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_firewall_rule`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class CloudflareFirewallRule extends Resource {
  static const String tfType = 'cloudflare_firewall_rule';

  CloudflareFirewallRule({
    required super.localName,
    required TfArg<String> zoneId,
    required FirewallRuleAction action,
    required FirewallRuleFilter filter,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           'action': TfArg.literal(action.encode()),
           'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFirewallRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `products` attribute.
  TfRef<List<String>> get products =>
      TfRef.attribute<List<String>>(this, 'products');

  /// Reference to `ref` attribute.
  TfRef<String> get ref => TfRef.attribute<String>(this, 'ref');
}
