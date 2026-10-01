// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

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
    required TfArg<String> sourceContents,
    RefTo<GoogleServiceAccount>? serviceAccount,
    TfArg<WorkflowsWorkflowCallLogLevel>? callLogLevel,
    TfArg<WorkflowsWorkflowExecutionHistoryLevel>? executionHistoryLevel,
    RefTo<GoogleKmsCryptoKey>? cryptoKeyName,
    TfArg<Map<String, String>>? userEnvVars,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           'description': ?description,
           'source_contents': sourceContents,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'call_log_level': ?callLogLevel,
           'execution_history_level': ?executionHistoryLevel,
           'crypto_key_name': ?cryptoKeyName?.encodeAs('id'),
           'user_env_vars': ?userEnvVars,
           'labels': ?labels,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleWorkflowsWorkflowSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkflowsWorkflow>`.
  RefTo<GoogleWorkflowsWorkflow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `call_log_level` attribute.
  TfRef<String> get callLogLevel =>
      TfRef.attribute<String>(this, 'call_log_level');

  /// Reference to `crypto_key_name` attribute.
  TfRef<String> get cryptoKeyName =>
      TfRef.attribute<String>(this, 'crypto_key_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `execution_history_level` attribute.
  TfRef<String> get executionHistoryLevel =>
      TfRef.attribute<String>(this, 'execution_history_level');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `source_contents` attribute.
  TfRef<String> get sourceContents =>
      TfRef.attribute<String>(this, 'source_contents');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_env_vars` attribute.
  TfRef<Map<String, String>> get userEnvVars =>
      TfRef.attribute<Map<String, String>>(this, 'user_env_vars');
}
