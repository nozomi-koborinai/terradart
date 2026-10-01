// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_waiting_room_rules`.
const Set<String> _cloudflareWaitingRoomRulesSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_waiting_room_rules` (derived from provider schema).
@immutable
final class WaitingRoomRules {
  const WaitingRoomRules({
    required this.action,
    this.description,
    this.enabled,
    required this.expression,
  });

  final TfArg<WaitingRoomRulesAction> action;

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> expression;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expression': expression.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum WaitingRoomRulesAction implements TerraformEnum {
  bypassWaitingRoom('bypass_waiting_room');

  const WaitingRoomRulesAction(this.terraformValue);
  @override
  final String terraformValue;
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
    required RefTo<CloudflareZone> zoneId,
    required List<WaitingRoomRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'waiting_room_id': waitingRoomId,
           'zone_id': zoneId.encodeAs('id'),
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWaitingRoomRules>`.
  RefTo<CloudflareWaitingRoomRules> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `waiting_room_id` attribute.
  TfRef<String> get waitingRoomId =>
      TfRef.attribute<String>(this, 'waiting_room_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
