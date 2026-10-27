// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_certificate_contacts`.
const Set<String> _azurermKeyVaultCertificateContactsSensitive = <String>{};

/// Typed helper for the `contact` block of
/// `azurerm_key_vault_certificate_contacts` (derived from provider schema).
@immutable
final class KeyVaultCertificateContactsContact {
  const KeyVaultCertificateContactsContact({
    required this.email,
    this.name,
    this.phone,
  });

  final TfArg<String> email;

  final TfArg<String>? name;

  final TfArg<String>? phone;

  @internal
  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'name': ?name?.toTfJson(),
    'phone': ?phone?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_key_vault_certificate_contacts`.
final class AzurermKeyVaultCertificateContacts extends Resource {
  static const String tfType = 'azurerm_key_vault_certificate_contacts';

  AzurermKeyVaultCertificateContacts(
    super.localName, {
    required RefTo<AzurermKeyVault> keyVaultId,
    required List<KeyVaultCertificateContactsContact> contact,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_vault_id': keyVaultId.encodeAs('id'),
           'contact': TfArg.literal([for (final e in contact) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultCertificateContactsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultCertificateContacts>`.
  RefTo<AzurermKeyVaultCertificateContacts> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');
}
