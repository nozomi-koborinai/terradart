// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_database_migration_project`.
const Set<String> _azurermDatabaseMigrationProjectSensitive = <String>{};

/// Database Migration Project Source enum for `source_platform`.
extension type const DatabaseMigrationProjectSourcePlatform._(TfArg<String> _)
    implements TfArg<String> {
  DatabaseMigrationProjectSourcePlatform.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationProjectSourcePlatform.expression(String template)
    : this._(TfArg.expression(template));
  const DatabaseMigrationProjectSourcePlatform.arg(TfArg<String> arg)
    : this._(arg);

  static const mongodb = DatabaseMigrationProjectSourcePlatform._(
    TfArgLiteral('MongoDb'),
  );
  static const mysql = DatabaseMigrationProjectSourcePlatform._(
    TfArgLiteral('MySQL'),
  );
  static const postgresql = DatabaseMigrationProjectSourcePlatform._(
    TfArgLiteral('PostgreSql'),
  );
  static const sql = DatabaseMigrationProjectSourcePlatform._(
    TfArgLiteral('SQL'),
  );
  static const unknown = DatabaseMigrationProjectSourcePlatform._(
    TfArgLiteral('Unknown'),
  );

  static const List<DatabaseMigrationProjectSourcePlatform> values = [
    mongodb,
    mysql,
    postgresql,
    sql,
    unknown,
  ];
}

/// Database Migration Project Target enum for `target_platform`.
extension type const DatabaseMigrationProjectTargetPlatform._(TfArg<String> _)
    implements TfArg<String> {
  DatabaseMigrationProjectTargetPlatform.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationProjectTargetPlatform.expression(String template)
    : this._(TfArg.expression(template));
  const DatabaseMigrationProjectTargetPlatform.arg(TfArg<String> arg)
    : this._(arg);

  static const azuredbformysql = DatabaseMigrationProjectTargetPlatform._(
    TfArgLiteral('AzureDbForMySql'),
  );
  static const azuredbforpostgresql = DatabaseMigrationProjectTargetPlatform._(
    TfArgLiteral('AzureDbForPostgreSql'),
  );
  static const mongodb = DatabaseMigrationProjectTargetPlatform._(
    TfArgLiteral('MongoDb'),
  );
  static const sqldb = DatabaseMigrationProjectTargetPlatform._(
    TfArgLiteral('SQLDB'),
  );
  static const sqlmi = DatabaseMigrationProjectTargetPlatform._(
    TfArgLiteral('SQLMI'),
  );
  static const unknown = DatabaseMigrationProjectTargetPlatform._(
    TfArgLiteral('Unknown'),
  );

  static const List<DatabaseMigrationProjectTargetPlatform> values = [
    azuredbformysql,
    azuredbforpostgresql,
    mongodb,
    sqldb,
    sqlmi,
    unknown,
  ];
}

/// Factory wrapper for `azurerm_database_migration_project`.
final class AzurermDatabaseMigrationProject extends Resource {
  static const String tfType = 'azurerm_database_migration_project';

  AzurermDatabaseMigrationProject(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serviceName,
    required DatabaseMigrationProjectSourcePlatform sourcePlatform,
    TfArg<Map<String, String>>? tags,
    required DatabaseMigrationProjectTargetPlatform targetPlatform,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_name': serviceName,
           'source_platform': sourcePlatform,
           'tags': ?tags,
           'target_platform': targetPlatform,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDatabaseMigrationProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDatabaseMigrationProject>`.
  RefTo<AzurermDatabaseMigrationProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `source_platform` attribute.
  TfRef<String> get sourcePlatform =>
      TfRef.attribute<String>(this, 'source_platform');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_platform` attribute.
  TfRef<String> get targetPlatform =>
      TfRef.attribute<String>(this, 'target_platform');
}
