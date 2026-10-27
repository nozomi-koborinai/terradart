// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../confidential/azurerm_confidential_ledger.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_confidential_ledger`.
const Set<String> _azurermConfidentialLedgerSensitive = <String>{};

/// Factory wrapper for `azurerm_confidential_ledger`.
final class DataAzurermConfidentialLedger extends Data {
  static const String tfType = 'azurerm_confidential_ledger';

  DataAzurermConfidentialLedger(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermConfidentialLedgerSensitive;

  /// A reference to the `azurerm_confidential_ledger` this data source reads, for
  /// arguments typed `RefTo<AzurermConfidentialLedger>`.
  RefTo<AzurermConfidentialLedger> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `azuread_based_service_principal` attribute.
  TfRef<List<Map<String, Object?>>> get azureadBasedServicePrincipal =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'azuread_based_service_principal',
      );

  /// Reference to `certificate_based_security_principal` attribute.
  TfRef<List<Map<String, Object?>>> get certificateBasedSecurityPrincipal =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'certificate_based_security_principal',
      );

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

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
