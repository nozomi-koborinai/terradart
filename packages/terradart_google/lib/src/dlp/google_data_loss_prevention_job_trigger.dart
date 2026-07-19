// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_loss_prevention_job_trigger`.
const Set<String> _googleDataLossPreventionJobTriggerSensitive = <String>{};

/// Data Loss Prevention Job Trigger enum for `status`.
enum DataLossPreventionJobTriggerStatus implements TerraformEnum {
  paused('PAUSED'),
  healthy('HEALTHY'),
  cancelled('CANCELLED');

  const DataLossPreventionJobTriggerStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_data_loss_prevention_job_trigger`.
///
/// A job trigger configuration.
///
/// DLP job trigger — scheduled (or event-driven) inspect jobs.
///
/// Enable `dlp.googleapis.com` via [GoogleProjectService] before apply.
/// Prefer [status] `PAUSED` in examples so apply does not start scans.
/// [parent] is `projects/{project}` or
/// `projects/{project}/locations/{location}`.
final class GoogleDataLossPreventionJobTrigger extends Resource {
  static const String tfType = 'google_data_loss_prevention_job_trigger';

  GoogleDataLossPreventionJobTrigger({
    required super.localName,
    required TfArg<String> parent,
    TfArg<String>? triggerId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<DataLossPreventionJobTriggerStatus>? status,
    required TfArg<List<Map<String, dynamic>>> triggers,
    TfArg<Map<String, dynamic>>? inspectJob,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           if (triggerId != null) 'trigger_id': triggerId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (status != null) 'status': status,
           'triggers': triggers,
           if (inspectJob != null) 'inspect_job': inspectJob,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionJobTriggerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_run_time` attribute.
  TfRef<String> get lastRunTime =>
      TfRef.attribute<String>(this, 'last_run_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
