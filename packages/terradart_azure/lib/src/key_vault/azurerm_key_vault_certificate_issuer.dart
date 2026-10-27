// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_certificate_issuer`.
const Set<String> _azurermKeyVaultCertificateIssuerSensitive = <String>{
  'password',
};

/// Key Vault Certificate Issuer Provider enum for `provider_name`.
extension type const KeyVaultCertificateIssuerProviderName._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultCertificateIssuerProviderName.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultCertificateIssuerProviderName.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultCertificateIssuerProviderName.arg(TfArg<String> arg)
    : this._(arg);

  static const digicert = KeyVaultCertificateIssuerProviderName._(
    TfArgLiteral('DigiCert'),
  );
  static const globalsign = KeyVaultCertificateIssuerProviderName._(
    TfArgLiteral('GlobalSign'),
  );
  static const onecertv2Privateca = KeyVaultCertificateIssuerProviderName._(
    TfArgLiteral('OneCertV2-PrivateCA'),
  );
  static const onecertv2Publicca = KeyVaultCertificateIssuerProviderName._(
    TfArgLiteral('OneCertV2-PublicCA'),
  );
  static const ssladminv2 = KeyVaultCertificateIssuerProviderName._(
    TfArgLiteral('SslAdminV2'),
  );

  static const List<KeyVaultCertificateIssuerProviderName> values = [
    digicert,
    globalsign,
    onecertv2Privateca,
    onecertv2Publicca,
    ssladminv2,
  ];
}

/// Typed helper for the `admin` block of
/// `azurerm_key_vault_certificate_issuer` (derived from provider schema).
@immutable
final class KeyVaultCertificateIssuerAdmin {
  const KeyVaultCertificateIssuerAdmin({
    required this.emailAddress,
    this.firstName,
    this.lastName,
    this.phone,
  });

  final TfArg<String> emailAddress;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? phone;

  @internal
  Map<String, Object?> encode() => {
    'email_address': emailAddress.toTfJson(),
    'first_name': ?firstName?.toTfJson(),
    'last_name': ?lastName?.toTfJson(),
    'phone': ?phone?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_key_vault_certificate_issuer`.
final class AzurermKeyVaultCertificateIssuer extends Resource {
  static const String tfType = 'azurerm_key_vault_certificate_issuer';

  AzurermKeyVaultCertificateIssuer(
    super.localName, {
    TfArg<String>? accountId,
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> name,
    TfArg<String>? orgId,
    Sensitive<String>? password,
    required KeyVaultCertificateIssuerProviderName providerName,
    List<KeyVaultCertificateIssuerAdmin>? admin,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'key_vault_id': keyVaultId.encodeAs('id'),
           'name': name,
           'org_id': ?orgId,
           'password': ?password,
           'provider_name': providerName,
           if (admin != null)
             'admin': TfArg.literal([for (final e in admin) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultCertificateIssuerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultCertificateIssuer>`.
  RefTo<AzurermKeyVaultCertificateIssuer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');
}
