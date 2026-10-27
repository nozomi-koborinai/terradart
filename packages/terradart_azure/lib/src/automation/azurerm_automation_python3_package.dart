// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_python3_package`.
const Set<String> _azurermAutomationPython3PackageSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_python3_package`.
final class AzurermAutomationPython3Package extends Resource {
  static const String tfType = 'azurerm_automation_python3_package';

  AzurermAutomationPython3Package(
    super.localName, {
    required TfArg<String> automationAccountName,
    required TfArg<String> contentUri,
    TfArg<String>? contentVersion,
    TfArg<String>? hashAlgorithm,
    TfArg<String>? hashValue,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'content_uri': contentUri,
           'content_version': ?contentVersion,
           'hash_algorithm': ?hashAlgorithm,
           'hash_value': ?hashValue,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationPython3PackageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationPython3Package>`.
  RefTo<AzurermAutomationPython3Package> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `content_uri` attribute.
  TfRef<String> get contentUri => TfRef.attribute<String>(this, 'content_uri');

  /// Reference to `content_version` attribute.
  TfRef<String> get contentVersion =>
      TfRef.attribute<String>(this, 'content_version');

  /// Reference to `hash_algorithm` attribute.
  TfRef<String> get hashAlgorithm =>
      TfRef.attribute<String>(this, 'hash_algorithm');

  /// Reference to `hash_value` attribute.
  TfRef<String> get hashValue => TfRef.attribute<String>(this, 'hash_value');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
