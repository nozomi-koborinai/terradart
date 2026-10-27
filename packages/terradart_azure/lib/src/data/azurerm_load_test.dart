// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../load_test/azurerm_load_test.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_load_test`.
const Set<String> _azurermLoadTestSensitive = <String>{};

/// Factory wrapper for `azurerm_load_test`.
final class DataAzurermLoadTest extends Data {
  static const String tfType = 'azurerm_load_test';

  DataAzurermLoadTest(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLoadTestSensitive;

  /// A reference to the `azurerm_load_test` this data source reads, for
  /// arguments typed `RefTo<AzurermLoadTest>`.
  RefTo<AzurermLoadTest> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_plane_uri` attribute.
  TfRef<String> get dataPlaneUri =>
      TfRef.attribute<String>(this, 'data_plane_uri');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encryption` attribute.
  TfRef<List<Map<String, Object?>>> get encryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
