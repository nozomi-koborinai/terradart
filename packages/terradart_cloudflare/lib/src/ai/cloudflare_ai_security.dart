// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_ai_security`.
const Set<String> _cloudflareAiSecuritySensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_security`.
final class CloudflareAiSecurity extends Resource {
  static const String tfType = 'cloudflare_ai_security';

  CloudflareAiSecurity(
    super.localName, {
    TfArg<bool>? enabled,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'enabled': ?enabled, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSecuritySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAiSecurity>`.
  RefTo<CloudflareAiSecurity> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
