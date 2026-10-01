// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_total_tls`.
const Set<String> _cloudflareTotalTlsSensitive = <String>{};

/// Total Tls Certificate enum for `certificate_authority`.
enum TotalTlsCertificateAuthority implements TerraformEnum {
  google('google'),
  letsEncrypt('lets_encrypt'),
  sslCom('ssl_com');

  const TotalTlsCertificateAuthority(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_total_tls`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareTotalTls extends Resource {
  static const String tfType = 'cloudflare_total_tls';

  CloudflareTotalTls(
    super.localName, {
    TfArg<TotalTlsCertificateAuthority>? certificateAuthority,
    required TfArg<bool> enabled,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_authority': ?certificateAuthority,
           'enabled': enabled,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTotalTlsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareTotalTls>`.
  RefTo<CloudflareTotalTls> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `validity_period` attribute.
  TfRef<num> get validityPeriod =>
      TfRef.attribute<num>(this, 'validity_period');

  /// Reference to `certificate_authority` attribute.
  TfRef<String> get certificateAuthority =>
      TfRef.attribute<String>(this, 'certificate_authority');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
