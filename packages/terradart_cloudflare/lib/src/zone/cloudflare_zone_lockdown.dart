// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_lockdown`.
const Set<String> _cloudflareZoneLockdownSensitive = <String>{};

/// Typed helper for the `configurations` block of
/// `cloudflare_zone_lockdown` (derived from provider schema).
@immutable
final class ZoneLockdownConfigurations {
  const ZoneLockdownConfigurations({this.target, this.value});

  final TfArg<String>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (target != null) 'target': target!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zone_lockdown`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class CloudflareZoneLockdown extends Resource {
  static const String tfType = 'cloudflare_zone_lockdown';

  CloudflareZoneLockdown({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? paused,
    TfArg<num>? priority,
    required TfArg<List<String>> urls,
    required TfArg<String> zoneId,
    required List<ZoneLockdownConfigurations> configurations,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (paused != null) 'paused': paused,
           if (priority != null) 'priority': priority,
           'urls': urls,
           'zone_id': zoneId,
           'configurations': TfArg.literal([
             for (final e in configurations) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneLockdownSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
