// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_schedule`.
const Set<String> _googleVertexAiScheduleSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_schedule`.
///
/// An online schedule that triggers running pipeline jobs or notebook execution
/// jobs.
final class GoogleVertexAiSchedule extends Resource {
  static const String tfType = 'google_vertex_ai_schedule';

  GoogleVertexAiSchedule({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> location,
    TfArg<String>? cron,
    required TfArg<String> maxConcurrentRunCount,
    TfArg<bool>? allowQueueing,
    TfArg<String>? maxConcurrentActiveRunCount,
    TfArg<String>? maxRunCount,
    TfArg<String>? startTime,
    TfArg<String>? endTime,
    TfArg<Map<String, dynamic>>? createPipelineJobRequest,
    TfArg<Map<String, dynamic>>? createNotebookExecutionJobRequest,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           if (cron != null) 'cron': cron,
           'max_concurrent_run_count': maxConcurrentRunCount,
           if (allowQueueing != null) 'allow_queueing': allowQueueing,
           if (maxConcurrentActiveRunCount != null)
             'max_concurrent_active_run_count': maxConcurrentActiveRunCount,
           if (maxRunCount != null) 'max_run_count': maxRunCount,
           if (startTime != null) 'start_time': startTime,
           if (endTime != null) 'end_time': endTime,
           if (createPipelineJobRequest != null)
             'create_pipeline_job_request': createPipelineJobRequest,
           if (createNotebookExecutionJobRequest != null)
             'create_notebook_execution_job_request':
                 createNotebookExecutionJobRequest,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiScheduleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catch_up` attribute.
  TfRef<bool> get catchUp => TfRef.attribute<bool>(this, 'catch_up');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_pause_time` attribute.
  TfRef<String> get lastPauseTime =>
      TfRef.attribute<String>(this, 'last_pause_time');

  /// Reference to `last_resume_time` attribute.
  TfRef<String> get lastResumeTime =>
      TfRef.attribute<String>(this, 'last_resume_time');

  /// Reference to `last_scheduled_run_response` attribute.
  TfRef<List<Map<String, Object?>>> get lastScheduledRunResponse =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'last_scheduled_run_response',
      );

  /// Reference to `next_run_time` attribute.
  TfRef<String> get nextRunTime =>
      TfRef.attribute<String>(this, 'next_run_time');

  /// Reference to `started_run_count` attribute.
  TfRef<String> get startedRunCount =>
      TfRef.attribute<String>(this, 'started_run_count');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
