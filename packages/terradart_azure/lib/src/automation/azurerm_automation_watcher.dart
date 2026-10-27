// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_automation_watcher`.
const Set<String> _azurermAutomationWatcherSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_watcher`.
final class AzurermAutomationWatcher extends Resource {
  static const String tfType = 'azurerm_automation_watcher';

  AzurermAutomationWatcher(
    super.localName, {
    required TfArg<String> automationAccountId,
    TfArg<String>? description,
    TfArg<String>? etag,
    required TfArg<num> executionFrequencyInSeconds,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> scriptName,
    TfArg<Map<String, String>>? scriptParameters,
    required TfArg<String> scriptRunOn,
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
           'etag': ?etag,
           'execution_frequency_in_seconds': executionFrequencyInSeconds,
           'location': location,
           'name': name,
           'script_name': scriptName,
           'script_parameters': ?scriptParameters,
           'script_run_on': scriptRunOn,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationWatcherSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationWatcher>`.
  RefTo<AzurermAutomationWatcher> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `automation_account_id` attribute.
  TfRef<String> get automationAccountId =>
      TfRef.attribute<String>(this, 'automation_account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `execution_frequency_in_seconds` attribute.
  TfRef<num> get executionFrequencyInSeconds =>
      TfRef.attribute<num>(this, 'execution_frequency_in_seconds');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptName => TfRef.attribute<String>(this, 'script_name');

  /// Reference to `script_parameters` attribute.
  TfRef<Map<String, String>> get scriptParameters =>
      TfRef.attribute<Map<String, String>>(this, 'script_parameters');

  /// Reference to `script_run_on` attribute.
  TfRef<String> get scriptRunOn =>
      TfRef.attribute<String>(this, 'script_run_on');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
