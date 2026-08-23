// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workflow`.
const Set<String> _cloudflareWorkflowSensitive = <String>{};

/// Typed helper for the `default_retention` block of
/// `cloudflare_workflow` (derived from provider schema).
@immutable
final class WorkflowDefaultRetention {
  const WorkflowDefaultRetention({this.errorRetention, this.successRetention});

  final TfArg<Object?>? errorRetention;

  final TfArg<Object?>? successRetention;

  Map<String, Object?> encode() => {
    if (errorRetention != null) 'error_retention': errorRetention!.toTfJson(),
    if (successRetention != null)
      'success_retention': successRetention!.toTfJson(),
  };
}

/// Typed helper for the `limits` block of
/// `cloudflare_workflow` (derived from provider schema).
@immutable
final class WorkflowLimits {
  const WorkflowLimits({this.steps});

  final TfArg<num>? steps;

  Map<String, Object?> encode() => {
    if (steps != null) 'steps': steps!.toTfJson(),
  };
}

/// Typed helper for the `schedules` block of
/// `cloudflare_workflow` (derived from provider schema).
@immutable
final class WorkflowSchedules {
  const WorkflowSchedules({required this.cron});

  final TfArg<String> cron;

  Map<String, Object?> encode() => {'cron': cron.toTfJson()};
}

/// Factory wrapper for `cloudflare_workflow`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class CloudflareWorkflow extends Resource {
  static const String tfType = 'cloudflare_workflow';

  CloudflareWorkflow({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> className,
    required TfArg<String> scriptName,
    required TfArg<String> workflowName,
    WorkflowDefaultRetention? defaultRetention,
    WorkflowLimits? limits,
    List<WorkflowSchedules>? schedules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'class_name': className,
           'script_name': scriptName,
           'workflow_name': workflowName,
           if (defaultRetention != null)
             'default_retention': TfArg.literal(defaultRetention.encode()),
           if (limits != null) 'limits': TfArg.literal(limits.encode()),
           if (schedules != null)
             'schedules': TfArg.literal([
               for (final e in schedules) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkflowSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `is_deleted` attribute.
  TfRef<num> get isDeleted => TfRef.attribute<num>(this, 'is_deleted');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `terminator_running` attribute.
  TfRef<num> get terminatorRunning =>
      TfRef.attribute<num>(this, 'terminator_running');

  /// Reference to `triggered_on` attribute.
  TfRef<String> get triggeredOn =>
      TfRef.attribute<String>(this, 'triggered_on');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');
}
