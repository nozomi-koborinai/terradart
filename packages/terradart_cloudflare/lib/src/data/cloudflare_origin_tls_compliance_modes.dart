// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_origin_tls_compliance_modes.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_origin_tls_compliance_modes`.
const Set<String> _cloudflareOriginTlsComplianceModesSensitive = <String>{};

/// Factory wrapper for `cloudflare_origin_tls_compliance_modes`.
final class DataCloudflareOriginTlsComplianceModes extends Data {
  static const String tfType = 'cloudflare_origin_tls_compliance_modes';

  DataCloudflareOriginTlsComplianceModes({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId.encodeAs('id')});

  @override
  Set<String> get sensitiveFields =>
      _cloudflareOriginTlsComplianceModesSensitive;

  /// A reference to the `cloudflare_origin_tls_compliance_modes` this data source reads, for
  /// arguments typed `RefTo<CloudflareOriginTlsComplianceModes>`.
  RefTo<CloudflareOriginTlsComplianceModes> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `value` attribute.
  TfRef<List<String>> get value => TfRef.attribute<List<String>>(this, 'value');
}
