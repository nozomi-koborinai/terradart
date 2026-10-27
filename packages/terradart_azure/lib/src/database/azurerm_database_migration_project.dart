// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_database_migration_project`.
const Set<String> _azurermDatabaseMigrationProjectSensitive = <String>{};

/// Factory wrapper for `azurerm_database_migration_project`.
final class AzurermDatabaseMigrationProject extends Resource {
  static const String tfType = 'azurerm_database_migration_project';

  AzurermDatabaseMigrationProject(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serviceName,
    required TfArg<String> sourcePlatform,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetPlatform,
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
