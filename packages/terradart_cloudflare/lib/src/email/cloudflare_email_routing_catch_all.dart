// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_email_routing_catch_all`.
const Set<String> _cloudflareEmailRoutingCatchAllSensitive = <String>{};

/// Email Routing Catch All enum for `source`.
enum EmailRoutingCatchAllSource implements TerraformEnum {
  api('api'),
  wrangler('wrangler');

  const EmailRoutingCatchAllSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions` block of
/// `cloudflare_email_routing_catch_all` (derived from provider schema).
@immutable
final class EmailRoutingCatchAllActions {
  const EmailRoutingCatchAllActions({required this.type, this.value});

  final TfArg<EmailRoutingCatchAllActionsType> type;

  final TfArg<List<String>>? value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum EmailRoutingCatchAllActionsType implements TerraformEnum {
  drop('drop'),
  forward('forward'),
  worker('worker');

  const EmailRoutingCatchAllActionsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `matchers` block of
/// `cloudflare_email_routing_catch_all` (derived from provider schema).
@immutable
final class EmailRoutingCatchAllMatchers {
  const EmailRoutingCatchAllMatchers({required this.type});

  final TfArg<EmailRoutingCatchAllMatchersType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum EmailRoutingCatchAllMatchersType implements TerraformEnum {
  all('all');

  const EmailRoutingCatchAllMatchersType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_email_routing_catch_all`.
///
/// Accepted Permissions
///
/// - `Email Routing Rules Read` - `Email Routing Rules Write`
final class CloudflareEmailRoutingCatchAll extends Resource {
  static const String tfType = 'cloudflare_email_routing_catch_all';

  CloudflareEmailRoutingCatchAll(
    super.localName, {
    TfArg<bool>? enabled,
    TfArg<String>? name,
    TfArg<String>? ownerWorkerTag,
    TfArg<EmailRoutingCatchAllSource>? source,
    required RefTo<CloudflareZone> zoneId,
    required List<EmailRoutingCatchAllActions> actions,
    required List<EmailRoutingCatchAllMatchers> matchers,
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
           'source': ?source,
           'zone_id': zoneId.encodeAs('id'),
           'actions': TfArg.literal([for (final e in actions) e.encode()]),
           'matchers': TfArg.literal([for (final e in matchers) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingCatchAllSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailRoutingCatchAll>`.
  RefTo<CloudflareEmailRoutingCatchAll> get ref => RefTo.of(this);

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

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
