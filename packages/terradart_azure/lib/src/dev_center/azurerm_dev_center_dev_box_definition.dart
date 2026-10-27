// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dev_center_dev_box_definition`.
const Set<String> _azurermDevCenterDevBoxDefinitionSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_dev_box_definition`.
final class AzurermDevCenterDevBoxDefinition extends Resource {
  static const String tfType = 'azurerm_dev_center_dev_box_definition';

  AzurermDevCenterDevBoxDefinition(
    super.localName, {
    required TfArg<String> devCenterId,
    TfArg<bool>? hibernateSupportEnabled,
    required TfArg<String> imageReferenceId,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dev_center_id': devCenterId,
           'hibernate_support_enabled': ?hibernateSupportEnabled,
           'image_reference_id': imageReferenceId,
           'location': location,
           'name': name,
           'sku_name': skuName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterDevBoxDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevCenterDevBoxDefinition>`.
  RefTo<AzurermDevCenterDevBoxDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');

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
}
