// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_ssl`.
const Set<String> _cloudflareCustomSslSensitive = <String>{'private_key'};

/// Typed helper for the `geo_restrictions` block of
/// `cloudflare_custom_ssl` (derived from provider schema).
@immutable
final class CustomSslGeoRestrictions {
  const CustomSslGeoRestrictions({this.label});

  final TfArg<String>? label;

  Map<String, Object?> encode() => {
    if (label != null) 'label': label!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_custom_ssl`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write` - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCustomSsl extends Resource {
  static const String tfType = 'cloudflare_custom_ssl';

  CloudflareCustomSsl({
    required super.localName,
    TfArg<String>? bundleMethod,
    required TfArg<String> certificate,
    TfArg<String>? customCsrId,
    TfArg<String>? deploy,
    TfArg<String>? policy,
    required TfArg<String> privateKey,
    TfArg<String>? type,
    required TfArg<String> zoneId,
    CustomSslGeoRestrictions? geoRestrictions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (bundleMethod != null) 'bundle_method': bundleMethod,
           'certificate': certificate,
           if (customCsrId != null) 'custom_csr_id': customCsrId,
           if (deploy != null) 'deploy': deploy,
           if (policy != null) 'policy': policy,
           'private_key': privateKey,
           if (type != null) 'type': type,
           'zone_id': zoneId,
           if (geoRestrictions != null)
             'geo_restrictions': TfArg.literal(geoRestrictions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomSslSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `hosts` attribute.
  TfRef<List<String>> get hosts => TfRef.attribute<List<String>>(this, 'hosts');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `policy_restrictions` attribute.
  TfRef<String> get policyRestrictions =>
      TfRef.attribute<String>(this, 'policy_restrictions');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `signature` attribute.
  TfRef<String> get signature => TfRef.attribute<String>(this, 'signature');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `uploaded_on` attribute.
  TfRef<String> get uploadedOn => TfRef.attribute<String>(this, 'uploaded_on');
}
