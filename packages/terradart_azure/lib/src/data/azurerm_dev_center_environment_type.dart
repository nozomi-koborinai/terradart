// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_center/azurerm_dev_center_environment_type.dart';

/// Sensitive field paths for `azurerm_dev_center_environment_type`.
const Set<String> _azurermDevCenterEnvironmentTypeSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_environment_type`.
final class DataAzurermDevCenterEnvironmentType extends Data {
  static const String tfType = 'azurerm_dev_center_environment_type';

  DataAzurermDevCenterEnvironmentType(
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
  Set<String> get sensitiveFields => _azurermDevCenterEnvironmentTypeSensitive;

  /// A reference to the `azurerm_dev_center_environment_type` this data source reads, for
  /// arguments typed `RefTo<AzurermDevCenterEnvironmentType>`.
  RefTo<AzurermDevCenterEnvironmentType> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');
}
