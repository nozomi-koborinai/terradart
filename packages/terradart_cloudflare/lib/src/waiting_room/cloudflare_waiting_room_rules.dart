// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_waiting_room_rules`.
const Set<String> _cloudflareWaitingRoomRulesSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_waiting_room_rules` (derived from provider schema).
@immutable
final class WaitingRoomRulesRules {
  const WaitingRoomRulesRules({
    required this.action,
    this.description,
    this.enabled,
    required this.expression,
  });

  final TfArg<String> action;

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> expression;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'expression': expression.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_waiting_room_rules`.
///
/// Accepted Permissions
///
/// - `Waiting Rooms Read` - `Waiting Rooms Write`
final class CloudflareWaitingRoomRules extends Resource {
  static const String tfType = 'cloudflare_waiting_room_rules';

  CloudflareWaitingRoomRules({
    required super.localName,
    required TfArg<String> waitingRoomId,
    required TfArg<String> zoneId,
    required List<WaitingRoomRulesRules> rules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'waiting_room_id': waitingRoomId,
           'zone_id': zoneId,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
