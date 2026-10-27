// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_automation_powershell72_module`.
const Set<String> _azurermAutomationPowershell72ModuleSensitive = <String>{};

/// Typed helper for the `module_link` block of
/// `azurerm_automation_powershell72_module` (derived from provider schema).
@immutable
final class AutomationPowershell72ModuleLink {
  const AutomationPowershell72ModuleLink({required this.uri, this.hash});

  final TfArg<String> uri;

  final AutomationPowershell72ModuleHash? hash;

  @internal
  Map<String, Object?> encode() => {
    'uri': uri.toTfJson(),
    'hash': ?hash?.encode(),
  };
}

/// Typed helper for the `module_link.hash` block of
/// `azurerm_automation_powershell72_module` (derived from provider schema).
@immutable
final class AutomationPowershell72ModuleHash {
  const AutomationPowershell72ModuleHash({
    required this.algorithm,
    required this.value,
  });

  final TfArg<String> algorithm;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'algorithm': algorithm.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_automation_powershell72_module`.
final class AzurermAutomationPowershell72Module extends Resource {
  static const String tfType = 'azurerm_automation_powershell72_module';

  AzurermAutomationPowershell72Module(
    super.localName, {
    required TfArg<String> automationAccountId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required AutomationPowershell72ModuleLink moduleLink,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_id': automationAccountId,
           'name': name,
           'tags': ?tags,
           'module_link': TfArg.literal(moduleLink.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationPowershell72ModuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationPowershell72Module>`.
  RefTo<AzurermAutomationPowershell72Module> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_id` attribute.
  TfRef<String> get automationAccountId =>
      TfRef.attribute<String>(this, 'automation_account_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
