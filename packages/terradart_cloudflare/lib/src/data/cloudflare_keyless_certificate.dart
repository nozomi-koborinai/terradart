// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_keyless_certificate`.
const Set<String> _cloudflareKeylessCertificateSensitive = <String>{};

/// Factory wrapper for `cloudflare_keyless_certificate`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Revoke` -
/// `Access: Apps and Policies Write` - `Access: Mutual TLS Certificates Write`
/// - `Access: Organizations, Identity Providers, and Groups Write` - `Analytics
/// Read` - `Apps Write` - `Cache Purge` - `DNS Read` - `DNS Write` - `Firewall
/// Services Read` - `Firewall Services Write` - `Load Balancers Read` - `Load
/// Balancers Write` - `Logs Read` - `Logs Write` - `Page Rules Read` - `Page
/// Rules Write` - `SSL and Certificates Read` - `SSL and Certificates Write` -
/// `Stream Read` - `Stream Write` - `Trust and Safety Read` - `Trust and Safety
/// Write` - `Workers Routes Read` - `Workers Routes Write` - `Workers Scripts
/// Read` - `Workers Scripts Write` - `Zaraz Admin` - `Zaraz Edit` - `Zaraz
/// Read` - `Zero Trust: PII Read` - `Zone Read` - `Zone Settings Read` - `Zone
/// Settings Write` - `Zone Write`
final class DataCloudflareKeylessCertificate extends Data {
  static const String tfType = 'cloudflare_keyless_certificate';

  DataCloudflareKeylessCertificate({
    required super.localName,
    required TfArg<String> keylessCertificateId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'keyless_certificate_id': keylessCertificateId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareKeylessCertificateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
