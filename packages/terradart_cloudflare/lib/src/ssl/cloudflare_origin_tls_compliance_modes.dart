// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_origin_tls_compliance_modes`.
const Set<String> _cloudflareOriginTlsComplianceModesSensitive = <String>{};

/// Factory wrapper for `cloudflare_origin_tls_compliance_modes`.
final class CloudflareOriginTlsComplianceModes extends Resource {
  static const String tfType = 'cloudflare_origin_tls_compliance_modes';

  CloudflareOriginTlsComplianceModes({
    required super.localName,
    required TfArg<List<String>> value,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'value': value, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareOriginTlsComplianceModesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareOriginTlsComplianceModes>`.
  RefTo<CloudflareOriginTlsComplianceModes> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
