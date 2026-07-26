// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_ekm_connection`.
const Set<String> _googleKmsEkmConnectionSensitive = <String>{};

/// Kms Ekm Connection Key Management enum for `key_management_mode`.
enum KmsEkmConnectionKeyManagementMode implements TerraformEnum {
  manual('MANUAL'),
  cloudKms('CLOUD_KMS');

  const KmsEkmConnectionKeyManagementMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `service_resolvers` block of
/// `google_kms_ekm_connection` (derived from provider schema).
@immutable
final class KmsEkmConnectionServiceResolvers {
  const KmsEkmConnectionServiceResolvers({
    this.endpointFilter,
    required this.hostname,
    required this.serviceDirectoryService,
    required this.serverCertificates,
  });

  final TfArg<String>? endpointFilter;

  final TfArg<String> hostname;

  final TfArg<String> serviceDirectoryService;

  final List<KmsEkmConnectionServiceResolversServerCertificates>
  serverCertificates;

  Map<String, Object?> encode() => {
    if (endpointFilter != null) 'endpoint_filter': endpointFilter!.toTfJson(),
    'hostname': hostname.toTfJson(),
    'service_directory_service': serviceDirectoryService.toTfJson(),
    'server_certificates': [for (final e in serverCertificates) e.encode()],
  };
}

/// Typed helper for the `service_resolvers.server_certificates` block of
/// `google_kms_ekm_connection` (derived from provider schema).
@immutable
final class KmsEkmConnectionServiceResolversServerCertificates {
  const KmsEkmConnectionServiceResolversServerCertificates({
    required this.rawDer,
    this.subjectAlternativeDnsNames,
  });

  final TfArg<String> rawDer;

  final TfArg<List<Object?>>? subjectAlternativeDnsNames;

  Map<String, Object?> encode() => {
    'raw_der': rawDer.toTfJson(),
    if (subjectAlternativeDnsNames != null)
      'subject_alternative_dns_names': subjectAlternativeDnsNames!.toTfJson(),
  };
}

/// Factory wrapper for `google_kms_ekm_connection`.
///
/// `Ekm Connections` are used to control the connection settings for an
/// `EXTERNAL_VPC` CryptoKey. It is used to connect customer's external key
/// manager to Google Cloud EKM.
///
/// ~> **Note:** Ekm Connections cannot be deleted from Google Cloud Platform.
///
/// Cloud KMS **EKM connection** — links an external key manager (EKM /
/// EXTERNAL_VPC) into a project location for externally managed keys.
///
/// **Cost / apply:** gcp-cost: Cloud KMS `EE2F-D110-890C` Active external
/// symmetric key versions SKU `E0AA-8721-5338` **$3/mo** (asymmetric
/// `D57A-D245-5FDB` **$3/mo**; Active HSM symmetric `46B1-C76A-0B7D`
/// **$1/mo**). billing-behavior: connections enable externally managed /
/// HSM key versions that bill while active; MM `exclude_delete: true`
/// (Terraform cannot destroy the connection — GCP policy). Requires a
/// reachable external EKM absent on `terradart-validate`. **Never**
/// wire into apply-smoke.
final class GoogleKmsEkmConnection extends Resource {
  static const String tfType = 'google_kms_ekm_connection';

  GoogleKmsEkmConnection({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required List<KmsEkmConnectionServiceResolvers> serviceResolvers,
    TfArg<KmsEkmConnectionKeyManagementMode>? keyManagementMode,
    TfArg<String>? cryptoSpacePath,
    TfArg<String>? etag,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'service_resolvers': TfArg.literal([
             for (final e in serviceResolvers) e.encode(),
           ]),
           if (keyManagementMode != null)
             'key_management_mode': keyManagementMode,
           if (cryptoSpacePath != null) 'crypto_space_path': cryptoSpacePath,
           if (etag != null) 'etag': etag,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsEkmConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
