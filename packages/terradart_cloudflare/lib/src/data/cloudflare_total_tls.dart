// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_total_tls.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_total_tls`.
const Set<String> _cloudflareTotalTlsSensitive = <String>{};

/// Factory wrapper for `cloudflare_total_tls`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareTotalTls extends Data {
  static const String tfType = 'cloudflare_total_tls';

  DataCloudflareTotalTls({
    required super.localName,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTotalTlsSensitive;

  /// A reference to the `cloudflare_total_tls` this data source reads, for
  /// arguments typed `RefTo<CloudflareTotalTls>`.
  RefTo<CloudflareTotalTls> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_authority` attribute.
  TfRef<String> get certificateAuthority =>
      TfRef.attribute<String>(this, 'certificate_authority');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `validity_period` attribute.
  TfRef<num> get validityPeriod =>
      TfRef.attribute<num>(this, 'validity_period');
}
