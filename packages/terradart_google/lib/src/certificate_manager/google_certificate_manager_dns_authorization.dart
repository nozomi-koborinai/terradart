// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_certificate_manager_dns_authorization`.
const Set<String> _googleCertificateManagerDnsAuthorizationSensitive =
    <String>{};

/// `type` — DNS authorization record strategy. When unset the API
/// picks `FIXED_RECORD` for global resources.
enum CertificateManagerDnsAuthorizationType implements TerraformEnum {
  fixedRecord('FIXED_RECORD'),
  perProjectRecord('PER_PROJECT_RECORD');

  const CertificateManagerDnsAuthorizationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_certificate_manager_dns_authorization`.
///
/// DnsAuthorization represents a HTTP-reachable backend for a DnsAuthorization.
///
/// DNS authorization for a Google-managed Certificate Manager certificate.
///
/// Proves domain control via a DNS-01 challenge. After apply, read
/// [dnsResourceRecord] and publish the returned CNAME/TXT at your DNS
/// host before the linked [GoogleCertificateManagerCertificate] can
/// provision.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: authorization ID (`[a-zA-Z][a-zA-Z0-9_-]*`).
/// - [domain]: apex or wildcard domain (e.g. `app.example.com` or
///   `*.example.com`).
///
/// Example:
/// ```dart
/// final dnsAuth = GoogleCertificateManagerDnsAuthorization(
///   localName: 'app_dns',
///   name: TfArg.literal('app-dns'),
///   domain: TfArg.literal('app.example.com'),
/// );
/// ```
final class GoogleCertificateManagerDnsAuthorization extends Resource {
  static const String tfType = 'google_certificate_manager_dns_authorization';

  GoogleCertificateManagerDnsAuthorization({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> domain,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'domain': domain,
           if (description != null) 'description': description,
           if (location != null) 'location': location,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCertificateManagerDnsAuthorizationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_resource_record` attribute.
  TfRef<List<Map<String, Object?>>> get dnsResourceRecord =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_resource_record');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
