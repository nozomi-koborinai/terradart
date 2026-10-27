// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container_registry/azurerm_container_registry_cache_rule.dart';

/// Sensitive field paths for `azurerm_container_registry_cache_rule`.
const Set<String> _azurermContainerRegistryCacheRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_container_registry_cache_rule`.
final class DataAzurermContainerRegistryCacheRule extends Data {
  static const String tfType = 'azurerm_container_registry_cache_rule';

  DataAzurermContainerRegistryCacheRule(
    super.localName, {
    required TfArg<String> containerRegistryId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'container_registry_id': containerRegistryId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerRegistryCacheRuleSensitive;

  /// A reference to the `azurerm_container_registry_cache_rule` this data source reads, for
  /// arguments typed `RefTo<AzurermContainerRegistryCacheRule>`.
  RefTo<AzurermContainerRegistryCacheRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `credential_set_id` attribute.
  TfRef<String> get credentialSetId =>
      TfRef.attribute<String>(this, 'credential_set_id');

  /// Reference to `source_repo` attribute.
  TfRef<String> get sourceRepo => TfRef.attribute<String>(this, 'source_repo');

  /// Reference to `target_repo` attribute.
  TfRef<String> get targetRepo => TfRef.attribute<String>(this, 'target_repo');

  /// Reference to `container_registry_id` attribute.
  TfRef<String> get containerRegistryId =>
      TfRef.attribute<String>(this, 'container_registry_id');
}
