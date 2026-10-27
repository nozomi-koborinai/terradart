// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../automation/azurerm_automation_runbook.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_runbook`.
const Set<String> _azurermAutomationRunbookSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_runbook`.
final class DataAzurermAutomationRunbook extends Data {
  static const String tfType = 'azurerm_automation_runbook';

  DataAzurermAutomationRunbook(
    super.localName, {
    required TfArg<String> automationAccountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationRunbookSensitive;

  /// A reference to the `azurerm_automation_runbook` this data source reads, for
  /// arguments typed `RefTo<AzurermAutomationRunbook>`.
  RefTo<AzurermAutomationRunbook> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_activity_trace_level` attribute.
  TfRef<num> get logActivityTraceLevel =>
      TfRef.attribute<num>(this, 'log_activity_trace_level');

  /// Reference to `log_progress` attribute.
  TfRef<bool> get logProgress => TfRef.attribute<bool>(this, 'log_progress');

  /// Reference to `log_verbose` attribute.
  TfRef<bool> get logVerbose => TfRef.attribute<bool>(this, 'log_verbose');

  /// Reference to `runbook_type` attribute.
  TfRef<String> get runbookType =>
      TfRef.attribute<String>(this, 'runbook_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
