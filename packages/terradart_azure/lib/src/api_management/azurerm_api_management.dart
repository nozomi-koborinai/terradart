// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management`.
const Set<String> _azurermApiManagementSensitive = <String>{
  'certificate.certificate_password',
  'certificate.encoded_certificate',
  'delegation.validation_key',
  'hostname_configuration.developer_portal.certificate',
  'hostname_configuration.developer_portal.certificate_password',
  'hostname_configuration.management.certificate',
  'hostname_configuration.management.certificate_password',
  'hostname_configuration.portal.certificate',
  'hostname_configuration.portal.certificate_password',
  'hostname_configuration.proxy.certificate',
  'hostname_configuration.proxy.certificate_password',
  'hostname_configuration.scm.certificate',
  'hostname_configuration.scm.certificate_password',
  'tenant_access.primary_key',
  'tenant_access.secondary_key',
};

/// Api Management Virtual Network enum for `virtual_network_type`.
extension type const ApiManagementVirtualNetworkType._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementVirtualNetworkType.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementVirtualNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementVirtualNetworkType.arg(TfArg<String> arg) : this._(arg);

  static const external = ApiManagementVirtualNetworkType._(
    TfArgLiteral('External'),
  );
  static const internal = ApiManagementVirtualNetworkType._(
    TfArgLiteral('Internal'),
  );
  static const none = ApiManagementVirtualNetworkType._(TfArgLiteral('None'));

  static const List<ApiManagementVirtualNetworkType> values = [
    external,
    internal,
    none,
  ];
}

/// Typed helper for the `additional_location` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementAdditionalLocation {
  const ApiManagementAdditionalLocation({
    this.capacity,
    this.gatewayDisabled,
    required this.location,
    this.publicIpAddressId,
    this.zones,
    this.virtualNetworkConfiguration,
  });

  final TfArg<num>? capacity;

  final TfArg<bool>? gatewayDisabled;

  final TfArg<String> location;

  final TfArg<String>? publicIpAddressId;

  final TfArg<List<String>>? zones;

  final ApiManagementVirtualNetworkConfiguration? virtualNetworkConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'capacity': ?capacity?.toTfJson(),
    'gateway_disabled': ?gatewayDisabled?.toTfJson(),
    'location': location.toTfJson(),
    'public_ip_address_id': ?publicIpAddressId?.toTfJson(),
    'zones': ?zones?.toTfJson(),
    'virtual_network_configuration': ?virtualNetworkConfiguration?.encode(),
  };
}

/// Typed helper for the `virtual_network_configuration` block of
/// `azurerm_api_management` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementVirtualNetworkConfiguration {
  const ApiManagementVirtualNetworkConfiguration({required this.subnetId});

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};
}

/// Typed helper for the `certificate` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementCertificate {
  const ApiManagementCertificate({
    this.certificatePassword,
    required this.encodedCertificate,
    required this.storeName,
  });

  final Sensitive<String>? certificatePassword;

  final Sensitive<String> encodedCertificate;

  final ApiManagementStoreName storeName;

  @internal
  Map<String, Object?> encode() => {
    'certificate_password': ?certificatePassword?.toTfJson(),
    'encoded_certificate': encodedCertificate.toTfJson(),
    'store_name': storeName.toTfJson(),
  };
}

/// `store_name` — derived from the provider schema description.
extension type const ApiManagementStoreName._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementStoreName.variable(String name) : this._(TfArg.variable(name));
  ApiManagementStoreName.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementStoreName.arg(TfArg<String> arg) : this._(arg);

  static const certificateauthority = ApiManagementStoreName._(
    TfArgLiteral('CertificateAuthority'),
  );
  static const root = ApiManagementStoreName._(TfArgLiteral('Root'));

  static const List<ApiManagementStoreName> values = [
    certificateauthority,
    root,
  ];
}

/// Typed helper for the `delegation` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementDelegation {
  const ApiManagementDelegation({
    this.subscriptionsEnabled,
    this.url,
    this.userRegistrationEnabled,
    this.validationKey,
  });

  final TfArg<bool>? subscriptionsEnabled;

  final TfArg<String>? url;

  final TfArg<bool>? userRegistrationEnabled;

  final Sensitive<String>? validationKey;

  @internal
  Map<String, Object?> encode() => {
    'subscriptions_enabled': ?subscriptionsEnabled?.toTfJson(),
    'url': ?url?.toTfJson(),
    'user_registration_enabled': ?userRegistrationEnabled?.toTfJson(),
    'validation_key': ?validationKey?.toTfJson(),
  };
}

/// Typed helper for the `hostname_configuration` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementHostnameConfiguration {
  const ApiManagementHostnameConfiguration({
    this.developerPortal,
    this.management,
    this.portal,
    this.proxy,
    this.scm,
  });

  final List<ApiManagementDeveloperPortal>? developerPortal;

  final List<ApiManagement>? management;

  final List<ApiManagementPortal>? portal;

  final List<ApiManagementProxy>? proxy;

  final List<ApiManagementScm>? scm;

  @internal
  Map<String, Object?> encode() => {
    if (developerPortal != null)
      'developer_portal': [for (final e in developerPortal!) e.encode()],
    if (management != null)
      'management': [for (final e in management!) e.encode()],
    if (portal != null) 'portal': [for (final e in portal!) e.encode()],
    if (proxy != null) 'proxy': [for (final e in proxy!) e.encode()],
    if (scm != null) 'scm': [for (final e in scm!) e.encode()],
  };
}

/// Typed helper for the `hostname_configuration.developer_portal` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementDeveloperPortal {
  const ApiManagementDeveloperPortal({
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

/// Typed helper for the `hostname_configuration.management` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagement {
  const ApiManagement({
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

/// Typed helper for the `hostname_configuration.portal` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementPortal {
  const ApiManagementPortal({
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

/// Typed helper for the `hostname_configuration.proxy` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementProxy {
  const ApiManagementProxy({
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

/// Typed helper for the `hostname_configuration.scm` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementScm {
  const ApiManagementScm({
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

/// Typed helper for the `identity` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementIdentity {
  const ApiManagementIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `protocols` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementProtocols {
  const ApiManagementProtocols({this.http2Enabled});

  final TfArg<bool>? http2Enabled;

  @internal
  Map<String, Object?> encode() => {'http2_enabled': ?http2Enabled?.toTfJson()};
}

/// Typed helper for the `security` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementSecurity {
  const ApiManagementSecurity({
    this.backendSsl30Enabled,
    this.backendTls10Enabled,
    this.backendTls11Enabled,
    this.frontendSsl30Enabled,
    this.frontendTls10Enabled,
    this.frontendTls11Enabled,
    this.tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled,
    this.tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled,
    this.tlsEcdheRsaWithAes128CbcShaCiphersEnabled,
    this.tlsEcdheRsaWithAes256CbcShaCiphersEnabled,
    this.tlsRsaWithAes128CbcSha256CiphersEnabled,
    this.tlsRsaWithAes128CbcShaCiphersEnabled,
    this.tlsRsaWithAes128GcmSha256CiphersEnabled,
    this.tlsRsaWithAes256CbcSha256CiphersEnabled,
    this.tlsRsaWithAes256CbcShaCiphersEnabled,
    this.tlsRsaWithAes256GcmSha384CiphersEnabled,
    this.tripleDesCiphersEnabled,
  });

  final TfArg<bool>? backendSsl30Enabled;

  final TfArg<bool>? backendTls10Enabled;

  final TfArg<bool>? backendTls11Enabled;

  final TfArg<bool>? frontendSsl30Enabled;

  final TfArg<bool>? frontendTls10Enabled;

  final TfArg<bool>? frontendTls11Enabled;

  final TfArg<bool>? tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled;

  final TfArg<bool>? tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled;

  final TfArg<bool>? tlsEcdheRsaWithAes128CbcShaCiphersEnabled;

  final TfArg<bool>? tlsEcdheRsaWithAes256CbcShaCiphersEnabled;

  final TfArg<bool>? tlsRsaWithAes128CbcSha256CiphersEnabled;

  final TfArg<bool>? tlsRsaWithAes128CbcShaCiphersEnabled;

  final TfArg<bool>? tlsRsaWithAes128GcmSha256CiphersEnabled;

  final TfArg<bool>? tlsRsaWithAes256CbcSha256CiphersEnabled;

  final TfArg<bool>? tlsRsaWithAes256CbcShaCiphersEnabled;

  final TfArg<bool>? tlsRsaWithAes256GcmSha384CiphersEnabled;

  final TfArg<bool>? tripleDesCiphersEnabled;

  @internal
  Map<String, Object?> encode() => {
    'backend_ssl30_enabled': ?backendSsl30Enabled?.toTfJson(),
    'backend_tls10_enabled': ?backendTls10Enabled?.toTfJson(),
    'backend_tls11_enabled': ?backendTls11Enabled?.toTfJson(),
    'frontend_ssl30_enabled': ?frontendSsl30Enabled?.toTfJson(),
    'frontend_tls10_enabled': ?frontendTls10Enabled?.toTfJson(),
    'frontend_tls11_enabled': ?frontendTls11Enabled?.toTfJson(),
    'tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled':
        ?tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled?.toTfJson(),
    'tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled':
        ?tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled?.toTfJson(),
    'tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled':
        ?tlsEcdheRsaWithAes128CbcShaCiphersEnabled?.toTfJson(),
    'tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled':
        ?tlsEcdheRsaWithAes256CbcShaCiphersEnabled?.toTfJson(),
    'tls_rsa_with_aes128_cbc_sha256_ciphers_enabled':
        ?tlsRsaWithAes128CbcSha256CiphersEnabled?.toTfJson(),
    'tls_rsa_with_aes128_cbc_sha_ciphers_enabled':
        ?tlsRsaWithAes128CbcShaCiphersEnabled?.toTfJson(),
    'tls_rsa_with_aes128_gcm_sha256_ciphers_enabled':
        ?tlsRsaWithAes128GcmSha256CiphersEnabled?.toTfJson(),
    'tls_rsa_with_aes256_cbc_sha256_ciphers_enabled':
        ?tlsRsaWithAes256CbcSha256CiphersEnabled?.toTfJson(),
    'tls_rsa_with_aes256_cbc_sha_ciphers_enabled':
        ?tlsRsaWithAes256CbcShaCiphersEnabled?.toTfJson(),
    'tls_rsa_with_aes256_gcm_sha384_ciphers_enabled':
        ?tlsRsaWithAes256GcmSha384CiphersEnabled?.toTfJson(),
    'triple_des_ciphers_enabled': ?tripleDesCiphersEnabled?.toTfJson(),
  };
}

/// Typed helper for the `sign_in` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementSignIn {
  const ApiManagementSignIn({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `sign_up` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementSignUp {
  const ApiManagementSignUp({
    required this.enabled,
    required this.termsOfService,
  });

  final TfArg<bool> enabled;

  final ApiManagementTermsOfService termsOfService;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'terms_of_service': termsOfService.encode(),
  };
}

/// Typed helper for the `sign_up.terms_of_service` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementTermsOfService {
  const ApiManagementTermsOfService({
    required this.consentRequired,
    required this.enabled,
    this.text,
  });

  final TfArg<bool> consentRequired;

  final TfArg<bool> enabled;

  final TfArg<String>? text;

  @internal
  Map<String, Object?> encode() => {
    'consent_required': consentRequired.toTfJson(),
    'enabled': enabled.toTfJson(),
    'text': ?text?.toTfJson(),
  };
}

/// Typed helper for the `tenant_access` block of
/// `azurerm_api_management` (derived from provider schema).
@immutable
final class ApiManagementTenantAccess {
  const ApiManagementTenantAccess({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Factory wrapper for `azurerm_api_management`.
final class AzurermApiManagement extends Resource {
  static const String tfType = 'azurerm_api_management';

  AzurermApiManagement(
    super.localName, {
    TfArg<bool>? clientCertificateEnabled,
    TfArg<bool>? gatewayDisabled,
    required TfArg<String> location,
    TfArg<String>? minApiVersion,
    required TfArg<String> name,
    TfArg<String>? notificationSenderEmail,
    TfArg<String>? publicIpAddressId,
    TfArg<bool>? publicNetworkAccessEnabled,
    required TfArg<String> publisherEmail,
    required TfArg<String> publisherName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    ApiManagementVirtualNetworkType? virtualNetworkType,
    TfArg<List<String>>? zones,
    List<ApiManagementAdditionalLocation>? additionalLocation,
    List<ApiManagementCertificate>? certificate,
    ApiManagementDelegation? delegation,
    ApiManagementHostnameConfiguration? hostnameConfiguration,
    ApiManagementIdentity? identity,
    ApiManagementProtocols? protocols,
    ApiManagementSecurity? security,
    ApiManagementSignIn? signIn,
    ApiManagementSignUp? signUp,
    ApiManagementTenantAccess? tenantAccess,
    ApiManagementVirtualNetworkConfiguration? virtualNetworkConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_certificate_enabled': ?clientCertificateEnabled,
           'gateway_disabled': ?gatewayDisabled,
           'location': location,
           'min_api_version': ?minApiVersion,
           'name': name,
           'notification_sender_email': ?notificationSenderEmail,
           'public_ip_address_id': ?publicIpAddressId,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'publisher_email': publisherEmail,
           'publisher_name': publisherName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           'virtual_network_type': ?virtualNetworkType,
           'zones': ?zones,
           if (additionalLocation != null)
             'additional_location': TfArg.literal([
               for (final e in additionalLocation) e.encode(),
             ]),
           if (certificate != null)
             'certificate': TfArg.literal([
               for (final e in certificate) e.encode(),
             ]),
           if (delegation != null)
             'delegation': TfArg.literal(delegation.encode()),
           if (hostnameConfiguration != null)
             'hostname_configuration': TfArg.literal(
               hostnameConfiguration.encode(),
             ),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (protocols != null)
             'protocols': TfArg.literal(protocols.encode()),
           if (security != null) 'security': TfArg.literal(security.encode()),
           if (signIn != null) 'sign_in': TfArg.literal(signIn.encode()),
           if (signUp != null) 'sign_up': TfArg.literal(signUp.encode()),
           if (tenantAccess != null)
             'tenant_access': TfArg.literal(tenantAccess.encode()),
           if (virtualNetworkConfiguration != null)
             'virtual_network_configuration': TfArg.literal(
               virtualNetworkConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagement>`.
  RefTo<AzurermApiManagement> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `developer_portal_url` attribute.
  TfRef<String> get developerPortalUrl =>
      TfRef.attribute<String>(this, 'developer_portal_url');

  /// Reference to `gateway_regional_url` attribute.
  TfRef<String> get gatewayRegionalUrl =>
      TfRef.attribute<String>(this, 'gateway_regional_url');

  /// Reference to `gateway_url` attribute.
  TfRef<String> get gatewayUrl => TfRef.attribute<String>(this, 'gateway_url');

  /// Reference to `management_api_url` attribute.
  TfRef<String> get managementApiUrl =>
      TfRef.attribute<String>(this, 'management_api_url');

  /// Reference to `portal_url` attribute.
  TfRef<String> get portalUrl => TfRef.attribute<String>(this, 'portal_url');

  /// Reference to `private_ip_addresses` attribute.
  TfRef<List<String>> get privateIpAddresses =>
      TfRef.attribute<List<String>>(this, 'private_ip_addresses');

  /// Reference to `public_ip_addresses` attribute.
  TfRef<List<String>> get publicIpAddresses =>
      TfRef.attribute<List<String>>(this, 'public_ip_addresses');

  /// Reference to `scm_url` attribute.
  TfRef<String> get scmUrl => TfRef.attribute<String>(this, 'scm_url');

  /// Reference to `client_certificate_enabled` attribute.
  TfRef<bool> get clientCertificateEnabled =>
      TfRef.attribute<bool>(this, 'client_certificate_enabled');

  /// Reference to `gateway_disabled` attribute.
  TfRef<bool> get gatewayDisabled =>
      TfRef.attribute<bool>(this, 'gateway_disabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `min_api_version` attribute.
  TfRef<String> get minApiVersion =>
      TfRef.attribute<String>(this, 'min_api_version');

  /// Reference to `notification_sender_email` attribute.
  TfRef<String> get notificationSenderEmail =>
      TfRef.attribute<String>(this, 'notification_sender_email');

  /// Reference to `public_ip_address_id` attribute.
  TfRef<String> get publicIpAddressId =>
      TfRef.attribute<String>(this, 'public_ip_address_id');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `publisher_email` attribute.
  TfRef<String> get publisherEmail =>
      TfRef.attribute<String>(this, 'publisher_email');

  /// Reference to `publisher_name` attribute.
  TfRef<String> get publisherName =>
      TfRef.attribute<String>(this, 'publisher_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_network_type` attribute.
  TfRef<String> get virtualNetworkType =>
      TfRef.attribute<String>(this, 'virtual_network_type');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
