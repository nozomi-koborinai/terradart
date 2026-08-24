// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_origin_tls_compliance_modes`.
const Set<String> _cloudflareOriginTlsComplianceModesSensitive = <String>{};

/// Factory wrapper for `cloudflare_origin_tls_compliance_modes`.
final class DataCloudflareOriginTlsComplianceModes extends Data {
  static const String tfType = 'cloudflare_origin_tls_compliance_modes';

  DataCloudflareOriginTlsComplianceModes({
    required super.localName,
    required TfArg<String> zoneId,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId});

  @override
  Set<String> get sensitiveFields =>
      _cloudflareOriginTlsComplianceModesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `value` attribute.
  TfRef<List<String>> get value => TfRef.attribute<List<String>>(this, 'value');
}
