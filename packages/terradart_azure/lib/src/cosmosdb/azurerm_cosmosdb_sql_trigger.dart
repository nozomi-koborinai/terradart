// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_sql_trigger`.
const Set<String> _azurermCosmosdbSqlTriggerSensitive = <String>{};

/// Cosmosdb Sql Trigger enum for `operation`.
extension type const CosmosdbSqlTriggerOperation._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbSqlTriggerOperation.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbSqlTriggerOperation.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbSqlTriggerOperation.arg(TfArg<String> arg) : this._(arg);

  static const all = CosmosdbSqlTriggerOperation._(TfArgLiteral('All'));
  static const create = CosmosdbSqlTriggerOperation._(TfArgLiteral('Create'));
  static const delete = CosmosdbSqlTriggerOperation._(TfArgLiteral('Delete'));
  static const replace = CosmosdbSqlTriggerOperation._(TfArgLiteral('Replace'));
  static const update = CosmosdbSqlTriggerOperation._(TfArgLiteral('Update'));

  static const List<CosmosdbSqlTriggerOperation> values = [
    all,
    create,
    delete,
    replace,
    update,
  ];
}

/// Cosmosdb Sql Trigger enum for `type`.
extension type const CosmosdbSqlTriggerType._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbSqlTriggerType.variable(String name) : this._(TfArg.variable(name));
  CosmosdbSqlTriggerType.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbSqlTriggerType.arg(TfArg<String> arg) : this._(arg);

  static const post = CosmosdbSqlTriggerType._(TfArgLiteral('Post'));
  static const pre = CosmosdbSqlTriggerType._(TfArgLiteral('Pre'));

  static const List<CosmosdbSqlTriggerType> values = [post, pre];
}

/// Factory wrapper for `azurerm_cosmosdb_sql_trigger`.
final class AzurermCosmosdbSqlTrigger extends Resource {
  static const String tfType = 'azurerm_cosmosdb_sql_trigger';

  AzurermCosmosdbSqlTrigger(
    super.localName, {
    required TfArg<String> body,
    required TfArg<String> containerId,
    required TfArg<String> name,
    required CosmosdbSqlTriggerOperation operation,
    required CosmosdbSqlTriggerType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'body': body,
           'container_id': containerId,
           'name': name,
           'operation': operation,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbSqlTriggerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbSqlTrigger>`.
  RefTo<AzurermCosmosdbSqlTrigger> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `container_id` attribute.
  TfRef<String> get containerId =>
      TfRef.attribute<String>(this, 'container_id');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
