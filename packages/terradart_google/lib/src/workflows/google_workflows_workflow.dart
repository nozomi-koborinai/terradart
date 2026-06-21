// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workflows_workflow`.
const Set<String> _googleWorkflowsWorkflowSensitive = <String>{};

/// Platform logging level applied to calls and call responses during
/// executions of a [GoogleWorkflowsWorkflow].
enum WorkflowsWorkflowCallLogLevel implements TerraformEnum {
  /// No call-logging level specified (the service default applies).
  unspecified('CALL_LOG_LEVEL_UNSPECIFIED'),

  /// Log all calls and their responses.
  logAllCalls('LOG_ALL_CALLS'),

  /// Log only calls that error.
  logErrorsOnly('LOG_ERRORS_ONLY'),

  /// Disable call logging.
  logNone('LOG_NONE');

  const WorkflowsWorkflowCallLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Amount of execution history stored for a [GoogleWorkflowsWorkflow].
enum WorkflowsWorkflowExecutionHistoryLevel implements TerraformEnum {
  /// No level specified (defaults to unspecified).
  unspecified('EXECUTION_HISTORY_LEVEL_UNSPECIFIED'),

  /// Store basic execution history.
  basic('EXECUTION_HISTORY_BASIC'),

  /// Store detailed execution history.
  detailed('EXECUTION_HISTORY_DETAILED');

  const WorkflowsWorkflowExecutionHistoryLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_workflows_workflow`.
///
/// Workflow program to be executed by Workflows.
final class GoogleWorkflowsWorkflow extends Resource {
  static const String tfType = 'google_workflows_workflow';

  GoogleWorkflowsWorkflow({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<String>? sourceContents,
    TfArg<String>? serviceAccount,
    TfArg<WorkflowsWorkflowCallLogLevel>? callLogLevel,
    TfArg<WorkflowsWorkflowExecutionHistoryLevel>? executionHistoryLevel,
    TfArg<String>? cryptoKeyName,
    TfArg<Map<String, String>>? userEnvVars,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (sourceContents != null) 'source_contents': sourceContents,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (callLogLevel != null) 'call_log_level': callLogLevel,
           if (executionHistoryLevel != null)
             'execution_history_level': executionHistoryLevel,
           if (cryptoKeyName != null) 'crypto_key_name': cryptoKeyName,
           if (userEnvVars != null) 'user_env_vars': userEnvVars,
           if (labels != null) 'labels': labels,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleWorkflowsWorkflowSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
