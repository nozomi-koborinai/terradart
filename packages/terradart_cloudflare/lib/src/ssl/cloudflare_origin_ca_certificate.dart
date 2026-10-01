// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_origin_ca_certificate`.
const Set<String> _cloudflareOriginCaCertificateSensitive = <String>{};

/// Origin Ca Certificate Request enum for `request_type`.
extension type const OriginCaCertificateRequestType._(TfArg<String> _)
    implements TfArg<String> {
  OriginCaCertificateRequestType.variable(String name)
    : this._(TfArg.variable(name));
  OriginCaCertificateRequestType.expression(String template)
    : this._(TfArg.expression(template));
  const OriginCaCertificateRequestType.arg(TfArg<String> arg) : this._(arg);

  static const originRsa = OriginCaCertificateRequestType._(
    TfArgLiteral('origin-rsa'),
  );
  static const originEcc = OriginCaCertificateRequestType._(
    TfArgLiteral('origin-ecc'),
  );
  static const keylessCertificate = OriginCaCertificateRequestType._(
    TfArgLiteral('keyless-certificate'),
  );

  static const List<OriginCaCertificateRequestType> values = [
    originRsa,
    originEcc,
    keylessCertificate,
  ];
}

/// Factory wrapper for `cloudflare_origin_ca_certificate`.
final class CloudflareOriginCaCertificate extends Resource {
  static const String tfType = 'cloudflare_origin_ca_certificate';

  CloudflareOriginCaCertificate(
    super.localName, {
    required TfArg<String> csr,
    required TfArg<List<String>> hostnames,
    required OriginCaCertificateRequestType requestType,
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
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');

  /// Reference to `hostnames` attribute.
  TfRef<List<String>> get hostnames =>
      TfRef.attribute<List<String>>(this, 'hostnames');

  /// Reference to `request_type` attribute.
  TfRef<String> get requestType =>
      TfRef.attribute<String>(this, 'request_type');

  /// Reference to `requested_validity` attribute.
  TfRef<num> get requestedValidity =>
      TfRef.attribute<num>(this, 'requested_validity');
}
