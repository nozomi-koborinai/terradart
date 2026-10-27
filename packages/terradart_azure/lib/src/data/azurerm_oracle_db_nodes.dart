// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_oracle_db_nodes`.
const Set<String> _azurermOracleDbNodesSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_db_nodes`.
final class DataAzurermOracleDbNodes extends Data {
  static const String tfType = 'azurerm_oracle_db_nodes';

  DataAzurermOracleDbNodes(
    super.localName, {
    required TfArg<String> cloudVmClusterId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'cloud_vm_cluster_id': cloudVmClusterId},
       );

  @override
  Set<String> get sensitiveFields => _azurermOracleDbNodesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `db_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get dbNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'db_nodes');

  /// Reference to `cloud_vm_cluster_id` attribute.
  TfRef<String> get cloudVmClusterId =>
      TfRef.attribute<String>(this, 'cloud_vm_cluster_id');
}
