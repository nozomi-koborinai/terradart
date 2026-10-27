// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_mover_project`.
const Set<String> _azurermStorageMoverProjectSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_mover_project`.
final class AzurermStorageMoverProject extends Resource {
  static const String tfType = 'azurerm_storage_mover_project';

  AzurermStorageMoverProject(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> storageMoverId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'storage_mover_id': storageMoverId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageMoverProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageMoverProject>`.
  RefTo<AzurermStorageMoverProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `storage_mover_id` attribute.
  TfRef<String> get storageMoverId =>
      TfRef.attribute<String>(this, 'storage_mover_id');
}
