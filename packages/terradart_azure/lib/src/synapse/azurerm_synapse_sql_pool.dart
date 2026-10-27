// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_sql_pool`.
const Set<String> _azurermSynapseSqlPoolSensitive = <String>{};

/// Synapse Sql Pool Sku enum for `sku_name`.
extension type const SynapseSqlPoolSkuName._(TfArg<String> _)
    implements TfArg<String> {
  SynapseSqlPoolSkuName.variable(String name) : this._(TfArg.variable(name));
  SynapseSqlPoolSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const SynapseSqlPoolSkuName.arg(TfArg<String> arg) : this._(arg);

  static const dw100c = SynapseSqlPoolSkuName._(TfArgLiteral('DW100c'));
  static const dw200c = SynapseSqlPoolSkuName._(TfArgLiteral('DW200c'));
  static const dw300c = SynapseSqlPoolSkuName._(TfArgLiteral('DW300c'));
  static const dw400c = SynapseSqlPoolSkuName._(TfArgLiteral('DW400c'));
  static const dw500c = SynapseSqlPoolSkuName._(TfArgLiteral('DW500c'));
  static const dw1000c = SynapseSqlPoolSkuName._(TfArgLiteral('DW1000c'));
  static const dw1500c = SynapseSqlPoolSkuName._(TfArgLiteral('DW1500c'));
  static const dw2000c = SynapseSqlPoolSkuName._(TfArgLiteral('DW2000c'));
  static const dw2500c = SynapseSqlPoolSkuName._(TfArgLiteral('DW2500c'));
  static const dw3000c = SynapseSqlPoolSkuName._(TfArgLiteral('DW3000c'));
  static const dw5000c = SynapseSqlPoolSkuName._(TfArgLiteral('DW5000c'));
  static const dw6000c = SynapseSqlPoolSkuName._(TfArgLiteral('DW6000c'));
  static const dw7500c = SynapseSqlPoolSkuName._(TfArgLiteral('DW7500c'));
  static const dw10000c = SynapseSqlPoolSkuName._(TfArgLiteral('DW10000c'));
  static const dw15000c = SynapseSqlPoolSkuName._(TfArgLiteral('DW15000c'));
  static const dw30000c = SynapseSqlPoolSkuName._(TfArgLiteral('DW30000c'));

  static const List<SynapseSqlPoolSkuName> values = [
    dw100c,
    dw200c,
    dw300c,
    dw400c,
    dw500c,
    dw1000c,
    dw1500c,
    dw2000c,
    dw2500c,
    dw3000c,
    dw5000c,
    dw6000c,
    dw7500c,
    dw10000c,
    dw15000c,
    dw30000c,
  ];
}

/// At most one of `recovery_database_id`, `restore` on `azurerm_synapse_sql_pool`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.recoveryDatabaseId(...)`.
sealed class SynapseSqlPoolRecoveryDatabaseIdOrRestore {
  const SynapseSqlPoolRecoveryDatabaseIdOrRestore();

  /// Sets `recovery_database_id`.
  const factory SynapseSqlPoolRecoveryDatabaseIdOrRestore.recoveryDatabaseId(
    TfArg<String> recoveryDatabaseId,
  ) = SynapseSqlPoolRecoveryDatabaseIdOrRestoreRecoveryDatabaseId;

  /// Sets `restore`.
  const factory SynapseSqlPoolRecoveryDatabaseIdOrRestore.restore(
    SynapseSqlPoolRestore restore,
  ) = SynapseSqlPoolRecoveryDatabaseIdOrRestoreChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SynapseSqlPoolRecoveryDatabaseIdOrRestore.recoveryDatabaseId] choice: sets `recovery_database_id`.
final class SynapseSqlPoolRecoveryDatabaseIdOrRestoreRecoveryDatabaseId
    extends SynapseSqlPoolRecoveryDatabaseIdOrRestore {
  const SynapseSqlPoolRecoveryDatabaseIdOrRestoreRecoveryDatabaseId(
    this.recoveryDatabaseId,
  );

  final TfArg<String> recoveryDatabaseId;

  @internal
  @override
  String get blockKey => 'recovery_database_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'recovery_database_id': recoveryDatabaseId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'recovery_database_id': recoveryDatabaseId,
  };
}

/// The [SynapseSqlPoolRecoveryDatabaseIdOrRestore.restore] choice: sets `restore`.
final class SynapseSqlPoolRecoveryDatabaseIdOrRestoreChoice
    extends SynapseSqlPoolRecoveryDatabaseIdOrRestore {
  const SynapseSqlPoolRecoveryDatabaseIdOrRestoreChoice(this.restore);

  final SynapseSqlPoolRestore restore;

  @internal
  @override
  String get blockKey => 'restore';

  @internal
  @override
  Map<String, Object?> encode() => {'restore': restore.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'restore': TfArg.literal(restore.encode()),
  };
}

/// Typed helper for the `restore` block of
/// `azurerm_synapse_sql_pool` (derived from provider schema).
@immutable
final class SynapseSqlPoolRestore {
  const SynapseSqlPoolRestore({
    required this.pointInTime,
    required this.sourceDatabaseId,
  });

  final TfArg<String> pointInTime;

  final TfArg<String> sourceDatabaseId;

  @internal
  Map<String, Object?> encode() => {
    'point_in_time': pointInTime.toTfJson(),
    'source_database_id': sourceDatabaseId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_synapse_sql_pool`.
final class AzurermSynapseSqlPool extends Resource {
  static const String tfType = 'azurerm_synapse_sql_pool';

  AzurermSynapseSqlPool(
    super.localName, {
    TfArg<String>? collation,
    TfArg<String>? createMode,
    TfArg<bool>? dataEncrypted,
    TfArg<bool>? geoBackupPolicyEnabled,
    required TfArg<String> name,
    SynapseSqlPoolRecoveryDatabaseIdOrRestore? recoveryDatabaseIdOrRestore,
    required SynapseSqlPoolSkuName skuName,
    required TfArg<String> storageAccountType,
    required TfArg<String> synapseWorkspaceId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collation': ?collation,
           'create_mode': ?createMode,
           'data_encrypted': ?dataEncrypted,
           'geo_backup_policy_enabled': ?geoBackupPolicyEnabled,
           'name': name,
           ...?recoveryDatabaseIdOrRestore?.argMap,
           'sku_name': skuName,
           'storage_account_type': storageAccountType,
           'synapse_workspace_id': synapseWorkspaceId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSynapseSqlPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseSqlPool>`.
  RefTo<AzurermSynapseSqlPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `collation` attribute.
  TfRef<String> get collation => TfRef.attribute<String>(this, 'collation');

  /// Reference to `create_mode` attribute.
  TfRef<String> get createMode => TfRef.attribute<String>(this, 'create_mode');

  /// Reference to `data_encrypted` attribute.
  TfRef<bool> get dataEncrypted =>
      TfRef.attribute<bool>(this, 'data_encrypted');

  /// Reference to `geo_backup_policy_enabled` attribute.
  TfRef<bool> get geoBackupPolicyEnabled =>
      TfRef.attribute<bool>(this, 'geo_backup_policy_enabled');

  /// Reference to `recovery_database_id` attribute.
  TfRef<String> get recoveryDatabaseId =>
      TfRef.attribute<String>(this, 'recovery_database_id');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage_account_type` attribute.
  TfRef<String> get storageAccountType =>
      TfRef.attribute<String>(this, 'storage_account_type');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
