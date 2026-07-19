// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_colab_schedule`.
const Set<String> _googleColabScheduleSensitive = <String>{};

/// Terraform `desired_state` for [GoogleColabSchedule].
enum ColabScheduleDesiredState implements TerraformEnum {
  active('ACTIVE'),
  paused('PAUSED');

  const ColabScheduleDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_colab_schedule`.
///
/// 'Colab Enterprise Notebook Execution Schedules.'
///
/// Colab Enterprise notebook execution schedule.
///
/// Prefer [desiredState] `PAUSED` in examples so apply does not start
/// Vertex Colab VMs. Enable `aiplatform.googleapis.com` before apply.
/// [createNotebookExecutionJobRequest] is a nested-block Map
/// (`notebook_execution_job` → GCS notebook source + template + output).
final class GoogleColabSchedule extends Resource {
  static const String tfType = 'google_colab_schedule';

  GoogleColabSchedule({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> displayName,
    required TfArg<String> cron,
    required TfArg<String> maxConcurrentRunCount,
    required TfArg<Map<String, dynamic>> createNotebookExecutionJobRequest,
    TfArg<ColabScheduleDesiredState>? desiredState,
    TfArg<bool>? allowQueueing,
    TfArg<String>? maxRunCount,
    TfArg<String>? startTime,
    TfArg<String>? endTime,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'display_name': displayName,
           'cron': cron,
           'max_concurrent_run_count': maxConcurrentRunCount,
           'create_notebook_execution_job_request':
               createNotebookExecutionJobRequest,
           if (desiredState != null) 'desired_state': desiredState,
           if (allowQueueing != null) 'allow_queueing': allowQueueing,
           if (maxRunCount != null) 'max_run_count': maxRunCount,
           if (startTime != null) 'start_time': startTime,
           if (endTime != null) 'end_time': endTime,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleColabScheduleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
