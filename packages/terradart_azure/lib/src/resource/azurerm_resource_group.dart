// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_resource_group`.
const Set<String> _azurermResourceGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_resource_group`.
final class AzurermResourceGroup extends Resource {
  static const String tfType = 'azurerm_resource_group';

  AzurermResourceGroup(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? managedBy,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'managed_by': ?managedBy,
           'name': name,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermResourceGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourceGroup>`.
  RefTo<AzurermResourceGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_by` attribute.
  TfRef<String> get managedBy => TfRef.attribute<String>(this, 'managed_by');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
