// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_total_tls`.
const Set<String> _cloudflareTotalTlsSensitive = <String>{};

/// Factory wrapper for `cloudflare_total_tls`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareTotalTls extends Resource {
  static const String tfType = 'cloudflare_total_tls';

  CloudflareTotalTls({
    required super.localName,
    TfArg<String>? certificateAuthority,
    required TfArg<bool> enabled,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (certificateAuthority != null)
             'certificate_authority': certificateAuthority,
           'enabled': enabled,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTotalTlsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `validity_period` attribute.
  TfRef<num> get validityPeriod =>
      TfRef.attribute<num>(this, 'validity_period');
}
