// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_postgresql_flexible_server_backup`.
const Set<String> _azurermPostgresqlFlexibleServerBackupSensitive = <String>{};

/// Factory wrapper for `azurerm_postgresql_flexible_server_backup`.
final class AzurermPostgresqlFlexibleServerBackup extends Resource {
  static const String tfType = 'azurerm_postgresql_flexible_server_backup';

  AzurermPostgresqlFlexibleServerBackup(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> serverId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'server_id': serverId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPostgresqlFlexibleServerBackupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPostgresqlFlexibleServerBackup>`.
  RefTo<AzurermPostgresqlFlexibleServerBackup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `completed_time` attribute.
  TfRef<String> get completedTime =>
      TfRef.attribute<String>(this, 'completed_time');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');
}
