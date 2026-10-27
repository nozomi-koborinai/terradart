// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mssql/azurerm_mssql_server.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mssql_server`.
const Set<String> _azurermMssqlServerSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_server`.
final class DataAzurermMssqlServer extends Data {
  static const String tfType = 'azurerm_mssql_server';

  DataAzurermMssqlServer(
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
  Set<String> get sensitiveFields => _azurermMssqlServerSensitive;

  /// A reference to the `azurerm_mssql_server` this data source reads, for
  /// arguments typed `RefTo<AzurermMssqlServer>`.
  RefTo<AzurermMssqlServer> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administrator_login` attribute.
  TfRef<String> get administratorLogin =>
      TfRef.attribute<String>(this, 'administrator_login');

  /// Reference to `express_vulnerability_assessment_enabled` attribute.
  TfRef<bool> get expressVulnerabilityAssessmentEnabled =>
      TfRef.attribute<bool>(this, 'express_vulnerability_assessment_enabled');

  /// Reference to `fully_qualified_domain_name` attribute.
  TfRef<String> get fullyQualifiedDomainName =>
      TfRef.attribute<String>(this, 'fully_qualified_domain_name');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `restorable_dropped_database_ids` attribute.
  TfRef<List<String>> get restorableDroppedDatabaseIds =>
      TfRef.attribute<List<String>>(this, 'restorable_dropped_database_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transparent_data_encryption_key_vault_key_id` attribute.
  TfRef<String> get transparentDataEncryptionKeyVaultKeyId =>
      TfRef.attribute<String>(
        this,
        'transparent_data_encryption_key_vault_key_id',
      );

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
