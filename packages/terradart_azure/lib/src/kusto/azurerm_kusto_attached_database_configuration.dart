// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kusto_attached_database_configuration`.
const Set<String> _azurermKustoAttachedDatabaseConfigurationSensitive =
    <String>{};

/// Kusto Attached Database Configuration Default Principal Modification enum for `default_principal_modification_kind`.
extension type const KustoAttachedDatabaseConfigurationDefaultPrincipalModificationKind._(
  TfArg<String> _
) implements TfArg<String> {
  KustoAttachedDatabaseConfigurationDefaultPrincipalModificationKind.variable(
    String name,
  ) : this._(TfArg.variable(name));
  KustoAttachedDatabaseConfigurationDefaultPrincipalModificationKind.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const KustoAttachedDatabaseConfigurationDefaultPrincipalModificationKind.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none =
      KustoAttachedDatabaseConfigurationDefaultPrincipalModificationKind._(
        TfArgLiteral('None'),
      );
  static const replace =
      KustoAttachedDatabaseConfigurationDefaultPrincipalModificationKind._(
        TfArgLiteral('Replace'),
      );
  static const union =
      KustoAttachedDatabaseConfigurationDefaultPrincipalModificationKind._(
        TfArgLiteral('Union'),
      );

  static const List<
    KustoAttachedDatabaseConfigurationDefaultPrincipalModificationKind
  >
  values = [none, replace, union];
}

/// At most one of `database_name_override`, `database_name_prefix` on `azurerm_kusto_attached_database_configuration`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.databaseNameOverride(...)`.
sealed class KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefix {
  const KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefix();

  /// Sets `database_name_override`.
  const factory KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefix.databaseNameOverride(
    TfArg<String> databaseNameOverride,
  ) = KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefixDatabaseNameOverride;

  /// Sets `database_name_prefix`.
  const factory KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefix.databaseNamePrefix(
    TfArg<String> databaseNamePrefix,
  ) = KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefixChoice;

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

/// The [KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefix.databaseNameOverride] choice: sets `database_name_override`.
final class KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefixDatabaseNameOverride
    extends
        KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefix {
  const KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefixDatabaseNameOverride(
    this.databaseNameOverride,
  );

  final TfArg<String> databaseNameOverride;

  @internal
  @override
  String get blockKey => 'database_name_override';

  @internal
  @override
  Map<String, Object?> encode() => {
    'database_name_override': databaseNameOverride.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'database_name_override': databaseNameOverride,
  };
}

/// The [KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefix.databaseNamePrefix] choice: sets `database_name_prefix`.
final class KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefixChoice
    extends
        KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefix {
  const KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefixChoice(
    this.databaseNamePrefix,
  );

  final TfArg<String> databaseNamePrefix;

  @internal
  @override
  String get blockKey => 'database_name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {
    'database_name_prefix': databaseNamePrefix.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'database_name_prefix': databaseNamePrefix,
  };
}

/// Typed helper for the `sharing` block of
/// `azurerm_kusto_attached_database_configuration` (derived from provider schema).
@immutable
final class KustoAttachedDatabaseConfigurationSharing {
  const KustoAttachedDatabaseConfigurationSharing({
    this.externalTablesToExclude,
    this.externalTablesToInclude,
    this.functionsToExclude,
    this.functionsToInclude,
    this.materializedViewsToExclude,
    this.materializedViewsToInclude,
    this.tablesToExclude,
    this.tablesToInclude,
  });

  final TfArg<List<String>>? externalTablesToExclude;

  final TfArg<List<String>>? externalTablesToInclude;

  final TfArg<List<String>>? functionsToExclude;

  final TfArg<List<String>>? functionsToInclude;

  final TfArg<List<String>>? materializedViewsToExclude;

  final TfArg<List<String>>? materializedViewsToInclude;

  final TfArg<List<String>>? tablesToExclude;

  final TfArg<List<String>>? tablesToInclude;

  @internal
  Map<String, Object?> encode() => {
    'external_tables_to_exclude': ?externalTablesToExclude?.toTfJson(),
    'external_tables_to_include': ?externalTablesToInclude?.toTfJson(),
    'functions_to_exclude': ?functionsToExclude?.toTfJson(),
    'functions_to_include': ?functionsToInclude?.toTfJson(),
    'materialized_views_to_exclude': ?materializedViewsToExclude?.toTfJson(),
    'materialized_views_to_include': ?materializedViewsToInclude?.toTfJson(),
    'tables_to_exclude': ?tablesToExclude?.toTfJson(),
    'tables_to_include': ?tablesToInclude?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_kusto_attached_database_configuration`.
final class AzurermKustoAttachedDatabaseConfiguration extends Resource {
  static const String tfType = 'azurerm_kusto_attached_database_configuration';

  AzurermKustoAttachedDatabaseConfiguration(
    super.localName, {
    required TfArg<String> clusterId,
    required TfArg<String> clusterName,
    required TfArg<String> databaseName,
    KustoAttachedDatabaseConfigurationDatabaseNameOverrideOrDatabaseNamePrefix?
    databaseNameOverrideOrDatabaseNamePrefix,
    KustoAttachedDatabaseConfigurationDefaultPrincipalModificationKind?
    defaultPrincipalModificationKind,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    KustoAttachedDatabaseConfigurationSharing? sharing,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'cluster_name': clusterName,
           'database_name': databaseName,
           ...?databaseNameOverrideOrDatabaseNamePrefix?.argMap,
           'default_principal_modification_kind':
               ?defaultPrincipalModificationKind,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           if (sharing != null) 'sharing': TfArg.literal(sharing.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKustoAttachedDatabaseConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoAttachedDatabaseConfiguration>`.
  RefTo<AzurermKustoAttachedDatabaseConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attached_database_names` attribute.
  TfRef<List<String>> get attachedDatabaseNames =>
      TfRef.attribute<List<String>>(this, 'attached_database_names');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `database_name_override` attribute.
  TfRef<String> get databaseNameOverride =>
      TfRef.attribute<String>(this, 'database_name_override');

  /// Reference to `database_name_prefix` attribute.
  TfRef<String> get databaseNamePrefix =>
      TfRef.attribute<String>(this, 'database_name_prefix');

  /// Reference to `default_principal_modification_kind` attribute.
  TfRef<String> get defaultPrincipalModificationKind =>
      TfRef.attribute<String>(this, 'default_principal_modification_kind');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
