// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_lockdown`.
const Set<String> _cloudflareZoneLockdownSensitive = <String>{};

/// Typed helper for the `configurations` block of
/// `cloudflare_zone_lockdown` (derived from provider schema).
@immutable
final class ZoneLockdownConfigurations {
  const ZoneLockdownConfigurations({this.target, this.value});

  final TfArg<ZoneLockdownTarget>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
enum ZoneLockdownTarget implements TerraformEnum {
  ip('ip'),
  ipRange('ip_range');

  const ZoneLockdownTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zone_lockdown`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class CloudflareZoneLockdown extends Resource {
  static const String tfType = 'cloudflare_zone_lockdown';

  CloudflareZoneLockdown(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? paused,
    TfArg<num>? priority,
    required TfArg<List<String>> urls,
    required RefTo<CloudflareZone> zoneId,
    required List<ZoneLockdownConfigurations> configurations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'paused': ?paused,
           'priority': ?priority,
           'urls': urls,
           'zone_id': zoneId.encodeAs('id'),
           'configurations': TfArg.literal([
             for (final e in configurations) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneLockdownSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZoneLockdown>`.
  RefTo<CloudflareZoneLockdown> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `urls` attribute.
  TfRef<List<String>> get urls => TfRef.attribute<List<String>>(this, 'urls');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
