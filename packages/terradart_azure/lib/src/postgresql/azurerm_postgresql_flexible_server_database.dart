// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_postgresql_flexible_server_database`.
const Set<String> _azurermPostgresqlFlexibleServerDatabaseSensitive =
    <String>{};

/// Factory wrapper for `azurerm_postgresql_flexible_server_database`.
final class AzurermPostgresqlFlexibleServerDatabase extends Resource {
  static const String tfType = 'azurerm_postgresql_flexible_server_database';

  AzurermPostgresqlFlexibleServerDatabase(
    super.localName, {
    TfArg<String>? charset,
    TfArg<String>? collation,
    required TfArg<String> name,
    required TfArg<String> serverId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'charset': ?charset,
           'collation': ?collation,
           'name': name,
           'server_id': serverId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPostgresqlFlexibleServerDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPostgresqlFlexibleServerDatabase>`.
  RefTo<AzurermPostgresqlFlexibleServerDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `charset` attribute.
  TfRef<String> get charset => TfRef.attribute<String>(this, 'charset');

  /// Reference to `collation` attribute.
  TfRef<String> get collation => TfRef.attribute<String>(this, 'collation');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');
}
