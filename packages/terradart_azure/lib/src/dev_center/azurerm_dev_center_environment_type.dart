// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dev_center_environment_type`.
const Set<String> _azurermDevCenterEnvironmentTypeSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_environment_type`.
final class AzurermDevCenterEnvironmentType extends Resource {
  static const String tfType = 'azurerm_dev_center_environment_type';

  AzurermDevCenterEnvironmentType(
    super.localName, {
    required TfArg<String> devCenterId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'dev_center_id': devCenterId, 'name': name, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterEnvironmentTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevCenterEnvironmentType>`.
  RefTo<AzurermDevCenterEnvironmentType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
