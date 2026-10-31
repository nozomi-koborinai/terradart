// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_oracle_autonomous_database_backup`.
const Set<String> _azurermOracleAutonomousDatabaseBackupSensitive = <String>{};

/// Oracle Autonomous Database Backup enum for `type`.
extension type const OracleAutonomousDatabaseBackupType._(TfArg<String> _)
    implements TfArg<String> {
  OracleAutonomousDatabaseBackupType.variable(String name)
    : this._(TfArg.variable(name));
  OracleAutonomousDatabaseBackupType.expression(String template)
    : this._(TfArg.expression(template));
  const OracleAutonomousDatabaseBackupType.arg(TfArg<String> arg) : this._(arg);

  static const longterm = OracleAutonomousDatabaseBackupType._(
    TfArgLiteral('LongTerm'),
  );

  static const List<OracleAutonomousDatabaseBackupType> values = [longterm];
}

/// Factory wrapper for `azurerm_oracle_autonomous_database_backup`.
final class AzurermOracleAutonomousDatabaseBackup extends Resource {
  static const String tfType = 'azurerm_oracle_autonomous_database_backup';

  AzurermOracleAutonomousDatabaseBackup(
    super.localName, {
    required TfArg<String> autonomousDatabaseId,
    required TfArg<String> name,
    required TfArg<num> retentionPeriodInDays,
    OracleAutonomousDatabaseBackupType? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autonomous_database_id': autonomousDatabaseId,
           'name': name,
           'retention_period_in_days': retentionPeriodInDays,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOracleAutonomousDatabaseBackupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermOracleAutonomousDatabaseBackup>`.
  RefTo<AzurermOracleAutonomousDatabaseBackup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autonomous_database_id` attribute.
  TfRef<String> get autonomousDatabaseId =>
      TfRef.attribute<String>(this, 'autonomous_database_id');

  /// Reference to `retention_period_in_days` attribute.
  TfRef<num> get retentionPeriodInDays =>
      TfRef.attribute<num>(this, 'retention_period_in_days');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
