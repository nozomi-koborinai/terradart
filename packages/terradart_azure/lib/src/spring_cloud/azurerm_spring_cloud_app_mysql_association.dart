// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_app_mysql_association`.
const Set<String> _azurermSpringCloudAppMysqlAssociationSensitive = <String>{
  'password',
};

/// Factory wrapper for `azurerm_spring_cloud_app_mysql_association`.
final class AzurermSpringCloudAppMysqlAssociation extends Resource {
  static const String tfType = 'azurerm_spring_cloud_app_mysql_association';

  AzurermSpringCloudAppMysqlAssociation(
    super.localName, {
    required TfArg<String> databaseName,
    required TfArg<String> mysqlServerId,
    required TfArg<String> name,
    required Sensitive<String> password,
    required TfArg<String> springCloudAppId,
    required TfArg<String> username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_name': databaseName,
           'mysql_server_id': mysqlServerId,
           'name': name,
           'password': password,
           'spring_cloud_app_id': springCloudAppId,
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudAppMysqlAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudAppMysqlAssociation>`.
  RefTo<AzurermSpringCloudAppMysqlAssociation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `mysql_server_id` attribute.
  TfRef<String> get mysqlServerId =>
      TfRef.attribute<String>(this, 'mysql_server_id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `spring_cloud_app_id` attribute.
  TfRef<String> get springCloudAppId =>
      TfRef.attribute<String>(this, 'spring_cloud_app_id');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
