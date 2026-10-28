// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_database_migration_service`.
const Set<String> _azurermDatabaseMigrationServiceSensitive = <String>{};

/// Database Migration Service Sku enum for `sku_name`.
extension type const DatabaseMigrationServiceSkuName._(TfArg<String> _)
    implements TfArg<String> {
  DatabaseMigrationServiceSkuName.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationServiceSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const DatabaseMigrationServiceSkuName.arg(TfArg<String> arg) : this._(arg);

  static const premium4vcores = DatabaseMigrationServiceSkuName._(
    TfArgLiteral('Premium_4vCores'),
  );
  static const standard1vcores = DatabaseMigrationServiceSkuName._(
    TfArgLiteral('Standard_1vCores'),
  );
  static const standard2vcores = DatabaseMigrationServiceSkuName._(
    TfArgLiteral('Standard_2vCores'),
  );
  static const standard4vcores = DatabaseMigrationServiceSkuName._(
    TfArgLiteral('Standard_4vCores'),
  );

  static const List<DatabaseMigrationServiceSkuName> values = [
    premium4vcores,
    standard1vcores,
    standard2vcores,
    standard4vcores,
  ];
}

/// Factory wrapper for `azurerm_database_migration_service`.
final class AzurermDatabaseMigrationService extends Resource {
  static const String tfType = 'azurerm_database_migration_service';

  AzurermDatabaseMigrationService(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required DatabaseMigrationServiceSkuName skuName,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
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
           'sku_name': skuName,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDatabaseMigrationServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDatabaseMigrationService>`.
  RefTo<AzurermDatabaseMigrationService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
