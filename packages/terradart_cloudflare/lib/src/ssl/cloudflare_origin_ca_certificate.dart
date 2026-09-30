// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_origin_ca_certificate`.
const Set<String> _cloudflareOriginCaCertificateSensitive = <String>{};

/// Origin Ca Certificate Request enum for `request_type`.
enum OriginCaCertificateRequestType implements TerraformEnum {
  originRsa('origin-rsa'),
  originEcc('origin-ecc'),
  keylessCertificate('keyless-certificate');

  const OriginCaCertificateRequestType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_origin_ca_certificate`.
final class CloudflareOriginCaCertificate extends Resource {
  static const String tfType = 'cloudflare_origin_ca_certificate';

  CloudflareOriginCaCertificate({
    required super.localName,
    required TfArg<String> csr,
    required TfArg<List<String>> hostnames,
    required TfArg<OriginCaCertificateRequestType> requestType,
    TfArg<num>? requestedValidity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'csr': csr,
           'hostnames': hostnames,
           'request_type': requestType,
           'requested_validity': ?requestedValidity,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOriginCaCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareOriginCaCertificate>`.
  RefTo<CloudflareOriginCaCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `csr` attribute.
  TfRef<String> get csrRef => TfRef.attribute<String>(this, 'csr');

  /// Reference to `hostnames` attribute.
  TfRef<List<String>> get hostnamesRef =>
      TfRef.attribute<List<String>>(this, 'hostnames');

  /// Reference to `request_type` attribute.
  TfRef<String> get requestTypeRef =>
      TfRef.attribute<String>(this, 'request_type');

  /// Reference to `requested_validity` attribute.
  TfRef<num> get requestedValidityRef =>
      TfRef.attribute<num>(this, 'requested_validity');
}
