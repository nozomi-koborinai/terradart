// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_oracle_db_servers`.
const Set<String> _azurermOracleDbServersSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_db_servers`.
final class DataAzurermOracleDbServers extends Data {
  static const String tfType = 'azurerm_oracle_db_servers';

  DataAzurermOracleDbServers(
    super.localName, {
    required TfArg<String> cloudExadataInfrastructureName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_exadata_infrastructure_name': cloudExadataInfrastructureName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermOracleDbServersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `db_servers` attribute.
  TfRef<List<Map<String, Object?>>> get dbServers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'db_servers');

  /// Reference to `cloud_exadata_infrastructure_name` attribute.
  TfRef<String> get cloudExadataInfrastructureName =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
