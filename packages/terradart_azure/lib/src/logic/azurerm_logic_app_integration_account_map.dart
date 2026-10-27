// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_integration_account_map`.
const Set<String> _azurermLogicAppIntegrationAccountMapSensitive = <String>{};

/// Logic App Integration Account Map enum for `map_type`.
extension type const LogicAppIntegrationAccountMapType._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppIntegrationAccountMapType.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppIntegrationAccountMapType.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppIntegrationAccountMapType.arg(TfArg<String> arg) : this._(arg);

  static const liquid = LogicAppIntegrationAccountMapType._(
    TfArgLiteral('Liquid'),
  );
  static const notspecified = LogicAppIntegrationAccountMapType._(
    TfArgLiteral('NotSpecified'),
  );
  static const xslt = LogicAppIntegrationAccountMapType._(TfArgLiteral('Xslt'));
  static const xslt30 = LogicAppIntegrationAccountMapType._(
    TfArgLiteral('Xslt30'),
  );
  static const xslt20 = LogicAppIntegrationAccountMapType._(
    TfArgLiteral('Xslt20'),
  );

  static const List<LogicAppIntegrationAccountMapType> values = [
    liquid,
    notspecified,
    xslt,
    xslt30,
    xslt20,
  ];
}

/// Factory wrapper for `azurerm_logic_app_integration_account_map`.
final class AzurermLogicAppIntegrationAccountMap extends Resource {
  static const String tfType = 'azurerm_logic_app_integration_account_map';

  AzurermLogicAppIntegrationAccountMap(
    super.localName, {
    required TfArg<String> content,
    required TfArg<String> integrationAccountName,
    required LogicAppIntegrationAccountMapType mapType,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           'integration_account_name': integrationAccountName,
           'map_type': mapType,
           'metadata': ?metadata,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppIntegrationAccountMapSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppIntegrationAccountMap>`.
  RefTo<AzurermLogicAppIntegrationAccountMap> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `integration_account_name` attribute.
  TfRef<String> get integrationAccountName =>
      TfRef.attribute<String>(this, 'integration_account_name');

  /// Reference to `map_type` attribute.
  TfRef<String> get mapType => TfRef.attribute<String>(this, 'map_type');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
