// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_center/azurerm_dev_center_dev_box_definition.dart';

/// Sensitive field paths for `azurerm_dev_center_dev_box_definition`.
const Set<String> _azurermDevCenterDevBoxDefinitionSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_dev_box_definition`.
final class DataAzurermDevCenterDevBoxDefinition extends Data {
  static const String tfType = 'azurerm_dev_center_dev_box_definition';

  DataAzurermDevCenterDevBoxDefinition(
    super.localName, {
    required TfArg<String> devCenterId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'dev_center_id': devCenterId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterDevBoxDefinitionSensitive;

  /// A reference to the `azurerm_dev_center_dev_box_definition` this data source reads, for
  /// arguments typed `RefTo<AzurermDevCenterDevBoxDefinition>`.
  RefTo<AzurermDevCenterDevBoxDefinition> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hibernate_support_enabled` attribute.
  TfRef<bool> get hibernateSupportEnabled =>
      TfRef.attribute<bool>(this, 'hibernate_support_enabled');

  /// Reference to `image_reference_id` attribute.
  TfRef<String> get imageReferenceId =>
      TfRef.attribute<String>(this, 'image_reference_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');
}
