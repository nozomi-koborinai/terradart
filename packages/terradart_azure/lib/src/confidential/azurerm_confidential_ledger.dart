// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_confidential_ledger`.
const Set<String> _azurermConfidentialLedgerSensitive = <String>{};

/// Typed helper for the `azuread_based_service_principal` block of
/// `azurerm_confidential_ledger` (derived from provider schema).
@immutable
final class ConfidentialLedgerAzureadBasedServicePrincipal {
  const ConfidentialLedgerAzureadBasedServicePrincipal({
    required this.ledgerRoleName,
    required this.principalId,
    required this.tenantId,
  });

  final TfArg<String> ledgerRoleName;

  final TfArg<String> principalId;

  final TfArg<String> tenantId;

  @internal
  Map<String, Object?> encode() => {
    'ledger_role_name': ledgerRoleName.toTfJson(),
    'principal_id': principalId.toTfJson(),
    'tenant_id': tenantId.toTfJson(),
  };
}

/// Typed helper for the `certificate_based_security_principal` block of
/// `azurerm_confidential_ledger` (derived from provider schema).
@immutable
final class ConfidentialLedgerCertificateBasedSecurityPrincipal {
  const ConfidentialLedgerCertificateBasedSecurityPrincipal({
    required this.ledgerRoleName,
    required this.pemPublicKey,
  });

  final TfArg<String> ledgerRoleName;

  final TfArg<String> pemPublicKey;

  @internal
  Map<String, Object?> encode() => {
    'ledger_role_name': ledgerRoleName.toTfJson(),
    'pem_public_key': pemPublicKey.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_confidential_ledger`.
final class AzurermConfidentialLedger extends Resource {
  static const String tfType = 'azurerm_confidential_ledger';

  AzurermConfidentialLedger(
    super.localName, {
    required TfArg<String> ledgerType,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required List<ConfidentialLedgerAzureadBasedServicePrincipal>
    azureadBasedServicePrincipal,
    List<ConfidentialLedgerCertificateBasedSecurityPrincipal>?
    certificateBasedSecurityPrincipal,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ledger_type': ledgerType,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'azuread_based_service_principal': TfArg.literal([
             for (final e in azureadBasedServicePrincipal) e.encode(),
           ]),
           if (certificateBasedSecurityPrincipal != null)
             'certificate_based_security_principal': TfArg.literal([
               for (final e in certificateBasedSecurityPrincipal) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermConfidentialLedgerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermConfidentialLedger>`.
  RefTo<AzurermConfidentialLedger> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity_service_endpoint` attribute.
  TfRef<String> get identityServiceEndpoint =>
      TfRef.attribute<String>(this, 'identity_service_endpoint');

  /// Reference to `ledger_endpoint` attribute.
  TfRef<String> get ledgerEndpoint =>
      TfRef.attribute<String>(this, 'ledger_endpoint');

  /// Reference to `ledger_type` attribute.
  TfRef<String> get ledgerType => TfRef.attribute<String>(this, 'ledger_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
