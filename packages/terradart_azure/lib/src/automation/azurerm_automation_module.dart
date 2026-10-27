// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_module`.
const Set<String> _azurermAutomationModuleSensitive = <String>{};

/// Typed helper for the `module_link` block of
/// `azurerm_automation_module` (derived from provider schema).
@immutable
final class AutomationModuleLink {
  const AutomationModuleLink({required this.uri, this.hash});

  final TfArg<String> uri;

  final AutomationModuleHash? hash;

  @internal
  Map<String, Object?> encode() => {
    'uri': uri.toTfJson(),
    'hash': ?hash?.encode(),
  };
}

/// Typed helper for the `module_link.hash` block of
/// `azurerm_automation_module` (derived from provider schema).
@immutable
final class AutomationModuleHash {
  const AutomationModuleHash({required this.algorithm, required this.value});

  final TfArg<String> algorithm;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'algorithm': algorithm.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_automation_module`.
final class AzurermAutomationModule extends Resource {
  static const String tfType = 'azurerm_automation_module';

  AzurermAutomationModule(
    super.localName, {
    required TfArg<String> automationAccountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required AutomationModuleLink moduleLink,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'module_link': TfArg.literal(moduleLink.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationModuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationModule>`.
  RefTo<AzurermAutomationModule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
