// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_runbook`.
const Set<String> _azurermAutomationRunbookSensitive = <String>{};

/// Typed helper for the `draft` block of
/// `azurerm_automation_runbook` (derived from provider schema).
@immutable
final class AutomationRunbookDraft {
  const AutomationRunbookDraft({
    this.editModeEnabled,
    this.outputTypes,
    this.contentLink,
    this.parameters,
  });

  final TfArg<bool>? editModeEnabled;

  final TfArg<List<String>>? outputTypes;

  final AutomationRunbookContentLink? contentLink;

  final List<AutomationRunbookParameters>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'edit_mode_enabled': ?editModeEnabled?.toTfJson(),
    'output_types': ?outputTypes?.toTfJson(),
    'content_link': ?contentLink?.encode(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `draft.content_link` block of
/// `azurerm_automation_runbook` (derived from provider schema).
@immutable
final class AutomationRunbookContentLink {
  const AutomationRunbookContentLink({
    required this.uri,
    this.version,
    this.hash,
  });

  final TfArg<String> uri;

  final TfArg<String>? version;

  final AutomationRunbookHash? hash;

  @internal
  Map<String, Object?> encode() => {
    'uri': uri.toTfJson(),
    'version': ?version?.toTfJson(),
    'hash': ?hash?.encode(),
  };
}

/// Typed helper for the `publish_content_link.hash` block of
/// `azurerm_automation_runbook` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AutomationRunbookHash {
  const AutomationRunbookHash({required this.algorithm, required this.value});

  final TfArg<String> algorithm;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'algorithm': algorithm.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `draft.parameters` block of
/// `azurerm_automation_runbook` (derived from provider schema).
@immutable
final class AutomationRunbookParameters {
  const AutomationRunbookParameters({
    this.defaultValue,
    required this.key,
    this.mandatory,
    this.position,
    required this.type,
  });

  final TfArg<String>? defaultValue;

  final TfArg<String> key;

  final TfArg<bool>? mandatory;

  final TfArg<num>? position;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'default_value': ?defaultValue?.toTfJson(),
    'key': key.toTfJson(),
    'mandatory': ?mandatory?.toTfJson(),
    'position': ?position?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `publish_content_link` block of
/// `azurerm_automation_runbook` (derived from provider schema).
@immutable
final class AutomationRunbookPublishContentLink {
  const AutomationRunbookPublishContentLink({
    required this.uri,
    this.version,
    this.hash,
  });

  final TfArg<String> uri;

  final TfArg<String>? version;

  final AutomationRunbookHash? hash;

  @internal
  Map<String, Object?> encode() => {
    'uri': uri.toTfJson(),
    'version': ?version?.toTfJson(),
    'hash': ?hash?.encode(),
  };
}

/// Factory wrapper for `azurerm_automation_runbook`.
final class AzurermAutomationRunbook extends Resource {
  static const String tfType = 'azurerm_automation_runbook';

  AzurermAutomationRunbook(
    super.localName, {
    required TfArg<String> automationAccountName,
    TfArg<String>? content,
    TfArg<String>? description,
    TfArg<List<Map<String, Object?>>>? jobSchedule,
    required TfArg<String> location,
    TfArg<num>? logActivityTraceLevel,
    required TfArg<bool> logProgress,
    required TfArg<bool> logVerbose,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> runbookType,
    TfArg<String>? runtimeEnvironmentName,
    TfArg<Map<String, String>>? tags,
    AutomationRunbookDraft? draft,
    AutomationRunbookPublishContentLink? publishContentLink,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'content': ?content,
           'description': ?description,
           'job_schedule': ?jobSchedule,
           'location': location,
           'log_activity_trace_level': ?logActivityTraceLevel,
           'log_progress': logProgress,
           'log_verbose': logVerbose,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'runbook_type': runbookType,
           'runtime_environment_name': ?runtimeEnvironmentName,
           'tags': ?tags,
           if (draft != null) 'draft': TfArg.literal(draft.encode()),
           if (publishContentLink != null)
             'publish_content_link': TfArg.literal(publishContentLink.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationRunbookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationRunbook>`.
  RefTo<AzurermAutomationRunbook> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `job_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get jobSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'job_schedule');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_activity_trace_level` attribute.
  TfRef<num> get logActivityTraceLevel =>
      TfRef.attribute<num>(this, 'log_activity_trace_level');

  /// Reference to `log_progress` attribute.
  TfRef<bool> get logProgress => TfRef.attribute<bool>(this, 'log_progress');

  /// Reference to `log_verbose` attribute.
  TfRef<bool> get logVerbose => TfRef.attribute<bool>(this, 'log_verbose');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `runbook_type` attribute.
  TfRef<String> get runbookType =>
      TfRef.attribute<String>(this, 'runbook_type');

  /// Reference to `runtime_environment_name` attribute.
  TfRef<String> get runtimeEnvironmentName =>
      TfRef.attribute<String>(this, 'runtime_environment_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
