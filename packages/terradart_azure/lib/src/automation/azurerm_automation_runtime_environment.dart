// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_automation_runtime_environment`.
const Set<String> _azurermAutomationRuntimeEnvironmentSensitive = <String>{};

/// Automation Runtime Environment Runtime enum for `runtime_language`.
extension type const AutomationRuntimeEnvironmentRuntimeLanguage._(
  TfArg<String> _
) implements TfArg<String> {
  AutomationRuntimeEnvironmentRuntimeLanguage.variable(String name)
    : this._(TfArg.variable(name));
  AutomationRuntimeEnvironmentRuntimeLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const AutomationRuntimeEnvironmentRuntimeLanguage.arg(TfArg<String> arg)
    : this._(arg);

  static const python = AutomationRuntimeEnvironmentRuntimeLanguage._(
    TfArgLiteral('Python'),
  );
  static const powershell = AutomationRuntimeEnvironmentRuntimeLanguage._(
    TfArgLiteral('PowerShell'),
  );

  static const List<AutomationRuntimeEnvironmentRuntimeLanguage> values = [
    python,
    powershell,
  ];
}

/// Factory wrapper for `azurerm_automation_runtime_environment`.
final class AzurermAutomationRuntimeEnvironment extends Resource {
  static const String tfType = 'azurerm_automation_runtime_environment';

  AzurermAutomationRuntimeEnvironment(
    super.localName, {
    required TfArg<String> automationAccountId,
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<Map<String, String>>? runtimeDefaultPackages,
    required AutomationRuntimeEnvironmentRuntimeLanguage runtimeLanguage,
    required TfArg<String> runtimeVersion,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_id': automationAccountId,
           'description': ?description,
           'location': location,
           'name': name,
           'runtime_default_packages': ?runtimeDefaultPackages,
           'runtime_language': runtimeLanguage,
           'runtime_version': runtimeVersion,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationRuntimeEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationRuntimeEnvironment>`.
  RefTo<AzurermAutomationRuntimeEnvironment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_id` attribute.
  TfRef<String> get automationAccountId =>
      TfRef.attribute<String>(this, 'automation_account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `runtime_default_packages` attribute.
  TfRef<Map<String, String>> get runtimeDefaultPackages =>
      TfRef.attribute<Map<String, String>>(this, 'runtime_default_packages');

  /// Reference to `runtime_language` attribute.
  TfRef<String> get runtimeLanguage =>
      TfRef.attribute<String>(this, 'runtime_language');

  /// Reference to `runtime_version` attribute.
  TfRef<String> get runtimeVersion =>
      TfRef.attribute<String>(this, 'runtime_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
