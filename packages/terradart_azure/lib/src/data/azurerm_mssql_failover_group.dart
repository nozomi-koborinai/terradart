// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mssql/azurerm_mssql_failover_group.dart';

/// Sensitive field paths for `azurerm_mssql_failover_group`.
const Set<String> _azurermMssqlFailoverGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_failover_group`.
final class DataAzurermMssqlFailoverGroup extends Data {
  static const String tfType = 'azurerm_mssql_failover_group';

  DataAzurermMssqlFailoverGroup(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> serverId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'server_id': serverId},
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlFailoverGroupSensitive;

  /// A reference to the `azurerm_mssql_failover_group` this data source reads, for
  /// arguments typed `RefTo<AzurermMssqlFailoverGroup>`.
  RefTo<AzurermMssqlFailoverGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `databases` attribute.
  TfRef<List<String>> get databases =>
      TfRef.attribute<List<String>>(this, 'databases');

  /// Reference to `partner_server` attribute.
  TfRef<List<Map<String, Object?>>> get partnerServer =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'partner_server');

  /// Reference to `read_write_endpoint_failover_policy` attribute.
  TfRef<List<Map<String, Object?>>> get readWriteEndpointFailoverPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'read_write_endpoint_failover_policy',
      );

  /// Reference to `readonly_endpoint_failover_policy_enabled` attribute.
  TfRef<bool> get readonlyEndpointFailoverPolicyEnabled =>
      TfRef.attribute<bool>(this, 'readonly_endpoint_failover_policy_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');
}
