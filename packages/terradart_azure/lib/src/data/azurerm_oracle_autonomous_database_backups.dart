// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_oracle_autonomous_database_backups`.
const Set<String> _azurermOracleAutonomousDatabaseBackupsSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_autonomous_database_backups`.
final class DataAzurermOracleAutonomousDatabaseBackups extends Data {
  static const String tfType = 'azurerm_oracle_autonomous_database_backups';

  DataAzurermOracleAutonomousDatabaseBackups(
    super.localName, {
    required TfArg<String> autonomousDatabaseId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'autonomous_database_id': autonomousDatabaseId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOracleAutonomousDatabaseBackupsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autonomous_database_backups` attribute.
  TfRef<List<Map<String, Object?>>> get autonomousDatabaseBackups =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'autonomous_database_backups',
      );

  /// Reference to `autonomous_database_id` attribute.
  TfRef<String> get autonomousDatabaseId =>
      TfRef.attribute<String>(this, 'autonomous_database_id');
}
