// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mysql_flexible_database`.
const Set<String> _azurermMysqlFlexibleDatabaseSensitive = <String>{};

/// Factory wrapper for `azurerm_mysql_flexible_database`.
final class AzurermMysqlFlexibleDatabase extends Resource {
  static const String tfType = 'azurerm_mysql_flexible_database';

  AzurermMysqlFlexibleDatabase(
    super.localName, {
    required TfArg<String> charset,
    required TfArg<String> collation,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serverName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'charset': charset,
           'collation': collation,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'server_name': serverName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMysqlFlexibleDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMysqlFlexibleDatabase>`.
  RefTo<AzurermMysqlFlexibleDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `charset` attribute.
  TfRef<String> get charset => TfRef.attribute<String>(this, 'charset');

  /// Reference to `collation` attribute.
  TfRef<String> get collation => TfRef.attribute<String>(this, 'collation');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');
}
