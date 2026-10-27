// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cognitive/azurerm_cognitive_account_project.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cognitive_account_project`.
const Set<String> _azurermCognitiveAccountProjectSensitive = <String>{};

/// Factory wrapper for `azurerm_cognitive_account_project`.
final class DataAzurermCognitiveAccountProject extends Data {
  static const String tfType = 'azurerm_cognitive_account_project';

  DataAzurermCognitiveAccountProject(
    super.localName, {
    required TfArg<String> cognitiveAccountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cognitive_account_name': cognitiveAccountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCognitiveAccountProjectSensitive;

  /// A reference to the `azurerm_cognitive_account_project` this data source reads, for
  /// arguments typed `RefTo<AzurermCognitiveAccountProject>`.
  RefTo<AzurermCognitiveAccountProject> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default` attribute.
  TfRef<bool> get defaultAttr => TfRef.attribute<bool>(this, 'default');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `endpoints` attribute.
  TfRef<Map<String, String>> get endpoints =>
      TfRef.attribute<Map<String, String>>(this, 'endpoints');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `cognitive_account_name` attribute.
  TfRef<String> get cognitiveAccountName =>
      TfRef.attribute<String>(this, 'cognitive_account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
