// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_repository_workflow_config`.
const Set<String> _googleDataformRepositoryWorkflowConfigSensitive = <String>{};

/// Factory wrapper for `google_dataform_repository_workflow_config`.
final class GoogleDataformRepositoryWorkflowConfig extends Resource {
  static const String tfType = 'google_dataform_repository_workflow_config';

  GoogleDataformRepositoryWorkflowConfig({
    required super.localName,
    TfArg<String>? cronSchedule,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? disabled,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> releaseConfig,
    TfArg<String>? repository,
    TfArg<String>? timeZone,
    TfArg<Map<String, dynamic>>? invocationConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (cronSchedule != null) 'cron_schedule': cronSchedule,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (disabled != null) 'disabled': disabled,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'release_config': releaseConfig,
           if (repository != null) 'repository': repository,
           if (timeZone != null) 'time_zone': timeZone,
           if (invocationConfig != null) 'invocation_config': invocationConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryWorkflowConfigSensitive;
}
