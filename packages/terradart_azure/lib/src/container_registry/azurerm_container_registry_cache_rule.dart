// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_registry_cache_rule`.
const Set<String> _azurermContainerRegistryCacheRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_container_registry_cache_rule`.
final class AzurermContainerRegistryCacheRule extends Resource {
  static const String tfType = 'azurerm_container_registry_cache_rule';

  AzurermContainerRegistryCacheRule(
    super.localName, {
    required TfArg<String> containerRegistryId,
    TfArg<String>? credentialSetId,
    required TfArg<String> name,
    required TfArg<String> sourceRepo,
    required TfArg<String> targetRepo,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_registry_id': containerRegistryId,
           'credential_set_id': ?credentialSetId,
           'name': name,
           'source_repo': sourceRepo,
           'target_repo': targetRepo,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerRegistryCacheRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistryCacheRule>`.
  RefTo<AzurermContainerRegistryCacheRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_registry_id` attribute.
  TfRef<String> get containerRegistryId =>
      TfRef.attribute<String>(this, 'container_registry_id');

  /// Reference to `credential_set_id` attribute.
  TfRef<String> get credentialSetId =>
      TfRef.attribute<String>(this, 'credential_set_id');

  /// Reference to `source_repo` attribute.
  TfRef<String> get sourceRepo => TfRef.attribute<String>(this, 'source_repo');

  /// Reference to `target_repo` attribute.
  TfRef<String> get targetRepo => TfRef.attribute<String>(this, 'target_repo');
}
