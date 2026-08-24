// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_ssl`.
const Set<String> _cloudflareCustomSslSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_custom_ssl` (derived from provider schema).
@immutable
final class DataCustomSslFilter {
  const DataCustomSslFilter({this.match, this.status});

  final TfArg<String>? match;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (match != null) 'match': match!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_custom_ssl`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write` - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomSsl extends Data {
  static const String tfType = 'cloudflare_custom_ssl';

  DataCloudflareCustomSsl({
    required super.localName,
    TfArg<String>? customCertificateId,
    TfArg<String>? zoneId,
    DataCustomSslFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customCertificateId != null)
             'custom_certificate_id': customCertificateId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomSslSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bundle_method` attribute.
  TfRef<String> get bundleMethod =>
      TfRef.attribute<String>(this, 'bundle_method');

  /// Reference to `custom_csr_id` attribute.
  TfRef<String> get customCsrId =>
      TfRef.attribute<String>(this, 'custom_csr_id');

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
