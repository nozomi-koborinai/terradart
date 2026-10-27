// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_custom_domain`.
const Set<String> _azurermApiManagementCustomDomainSensitive = <String>{
  'developer_portal.certificate',
  'developer_portal.certificate_password',
  'gateway.certificate',
  'gateway.certificate_password',
  'management.certificate',
  'management.certificate_password',
  'portal.certificate',
  'portal.certificate_password',
  'scm.certificate',
  'scm.certificate_password',
};

/// Typed helper for the `developer_portal` block of
/// `azurerm_api_management_custom_domain` (derived from provider schema).
@immutable
final class ApiManagementCustomDomainDeveloperPortal {
  const ApiManagementCustomDomainDeveloperPortal({
    this.certificate,
    this.certificatePassword,
    required this.hostName,
    this.keyVaultCertificateId,
    this.negotiateClientCertificate,
    this.sslKeyvaultIdentityClientId,
  });

  final Sensitive<String>? certificate;

  final Sensitive<String>? certificatePassword;

  final TfArg<String> hostName;

  final TfArg<String>? keyVaultCertificateId;

  final TfArg<bool>? negotiateClientCertificate;

  final TfArg<String>? sslKeyvaultIdentityClientId;

  @internal
  Map<String, Object?> encode() => {
    'certificate': ?certificate?.toTfJson(),
    'certificate_password': ?certificatePassword?.toTfJson(),
    'host_name': hostName.toTfJson(),
    'key_vault_certificate_id': ?keyVaultCertificateId?.toTfJson(),
    'negotiate_client_certificate': ?negotiateClientCertificate?.toTfJson(),
    'ssl_keyvault_identity_client_id': ?sslKeyvaultIdentityClientId?.toTfJson(),
  };
}

/// Typed helper for the `gateway` block of
/// `azurerm_api_management_custom_domain` (derived from provider schema).
@immutable
final class ApiManagementCustomDomainGateway {
  const ApiManagementCustomDomainGateway({
    this.certificate,
    this.certificatePassword,
    this.defaultSslBinding,
    required this.hostName,
    this.keyVaultCertificateId,
    this.negotiateClientCertificate,
    this.sslKeyvaultIdentityClientId,
  });

  final Sensitive<String>? certificate;

  final Sensitive<String>? certificatePassword;

  final TfArg<bool>? defaultSslBinding;

  final TfArg<String> hostName;

  final TfArg<String>? keyVaultCertificateId;

  final TfArg<bool>? negotiateClientCertificate;

  final TfArg<String>? sslKeyvaultIdentityClientId;

  @internal
  Map<String, Object?> encode() => {
    'certificate': ?certificate?.toTfJson(),
    'certificate_password': ?certificatePassword?.toTfJson(),
    'default_ssl_binding': ?defaultSslBinding?.toTfJson(),
    'host_name': hostName.toTfJson(),
    'key_vault_certificate_id': ?keyVaultCertificateId?.toTfJson(),
    'negotiate_client_certificate': ?negotiateClientCertificate?.toTfJson(),
    'ssl_keyvault_identity_client_id': ?sslKeyvaultIdentityClientId?.toTfJson(),
  };
}

/// Typed helper for the `management` block of
/// `azurerm_api_management_custom_domain` (derived from provider schema).
@immutable
final class ApiManagementCustomDomainManagement {
  const ApiManagementCustomDomainManagement({
    this.certificate,
    this.certificatePassword,
    required this.hostName,
    this.keyVaultCertificateId,
    this.negotiateClientCertificate,
    this.sslKeyvaultIdentityClientId,
  });

  final Sensitive<String>? certificate;

  final Sensitive<String>? certificatePassword;

  final TfArg<String> hostName;

  final TfArg<String>? keyVaultCertificateId;

  final TfArg<bool>? negotiateClientCertificate;

  final TfArg<String>? sslKeyvaultIdentityClientId;

  @internal
  Map<String, Object?> encode() => {
    'certificate': ?certificate?.toTfJson(),
    'certificate_password': ?certificatePassword?.toTfJson(),
    'host_name': hostName.toTfJson(),
    'key_vault_certificate_id': ?keyVaultCertificateId?.toTfJson(),
    'negotiate_client_certificate': ?negotiateClientCertificate?.toTfJson(),
    'ssl_keyvault_identity_client_id': ?sslKeyvaultIdentityClientId?.toTfJson(),
  };
}

/// Typed helper for the `portal` block of
/// `azurerm_api_management_custom_domain` (derived from provider schema).
@immutable
final class ApiManagementCustomDomainPortal {
  const ApiManagementCustomDomainPortal({
    this.certificate,
    this.certificatePassword,
    required this.hostName,
    this.keyVaultCertificateId,
    this.negotiateClientCertificate,
    this.sslKeyvaultIdentityClientId,
  });

  final Sensitive<String>? certificate;

  final Sensitive<String>? certificatePassword;

  final TfArg<String> hostName;

  final TfArg<String>? keyVaultCertificateId;

  final TfArg<bool>? negotiateClientCertificate;

  final TfArg<String>? sslKeyvaultIdentityClientId;

  @internal
  Map<String, Object?> encode() => {
    'certificate': ?certificate?.toTfJson(),
    'certificate_password': ?certificatePassword?.toTfJson(),
    'host_name': hostName.toTfJson(),
    'key_vault_certificate_id': ?keyVaultCertificateId?.toTfJson(),
    'negotiate_client_certificate': ?negotiateClientCertificate?.toTfJson(),
    'ssl_keyvault_identity_client_id': ?sslKeyvaultIdentityClientId?.toTfJson(),
  };
}

/// Typed helper for the `scm` block of
/// `azurerm_api_management_custom_domain` (derived from provider schema).
@immutable
final class ApiManagementCustomDomainScm {
  const ApiManagementCustomDomainScm({
    this.certificate,
    this.certificatePassword,
    required this.hostName,
    this.keyVaultCertificateId,
    this.negotiateClientCertificate,
    this.sslKeyvaultIdentityClientId,
  });

  final Sensitive<String>? certificate;

  final Sensitive<String>? certificatePassword;

  final TfArg<String> hostName;

  final TfArg<String>? keyVaultCertificateId;

  final TfArg<bool>? negotiateClientCertificate;

  final TfArg<String>? sslKeyvaultIdentityClientId;

  @internal
  Map<String, Object?> encode() => {
    'certificate': ?certificate?.toTfJson(),
    'certificate_password': ?certificatePassword?.toTfJson(),
    'host_name': hostName.toTfJson(),
    'key_vault_certificate_id': ?keyVaultCertificateId?.toTfJson(),
    'negotiate_client_certificate': ?negotiateClientCertificate?.toTfJson(),
    'ssl_keyvault_identity_client_id': ?sslKeyvaultIdentityClientId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_api_management_custom_domain`.
final class AzurermApiManagementCustomDomain extends Resource {
  static const String tfType = 'azurerm_api_management_custom_domain';

  AzurermApiManagementCustomDomain(
    super.localName, {
    required TfArg<String> apiManagementId,
    List<ApiManagementCustomDomainDeveloperPortal>? developerPortal,
    List<ApiManagementCustomDomainGateway>? gateway,
    List<ApiManagementCustomDomainManagement>? management,
    List<ApiManagementCustomDomainPortal>? portal,
    List<ApiManagementCustomDomainScm>? scm,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           if (developerPortal != null)
             'developer_portal': TfArg.literal([
               for (final e in developerPortal) e.encode(),
             ]),
           if (gateway != null)
             'gateway': TfArg.literal([for (final e in gateway) e.encode()]),
           if (management != null)
             'management': TfArg.literal([
               for (final e in management) e.encode(),
             ]),
           if (portal != null)
             'portal': TfArg.literal([for (final e in portal) e.encode()]),
           if (scm != null)
             'scm': TfArg.literal([for (final e in scm) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementCustomDomain>`.
  RefTo<AzurermApiManagementCustomDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');
}
