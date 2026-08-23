// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_origin_ca_certificate`.
const Set<String> _cloudflareOriginCaCertificateSensitive = <String>{};

/// Factory wrapper for `cloudflare_origin_ca_certificate`.
final class CloudflareOriginCaCertificate extends Resource {
  static const String tfType = 'cloudflare_origin_ca_certificate';

  CloudflareOriginCaCertificate({
    required super.localName,
    required TfArg<String> csr,
    required TfArg<List<String>> hostnames,
    required TfArg<String> requestType,
    TfArg<num>? requestedValidity,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'csr': csr,
           'hostnames': hostnames,
           'request_type': requestType,
           if (requestedValidity != null)
             'requested_validity': requestedValidity,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOriginCaCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');
}
