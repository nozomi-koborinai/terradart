// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_repository_release_config`.
const Set<String> _googleDataformRepositoryReleaseConfigSensitive = <String>{};

/// Factory wrapper for `google_dataform_repository_release_config`.
final class GoogleDataformRepositoryReleaseConfig extends Resource {
  static const String tfType = 'google_dataform_repository_release_config';

  GoogleDataformRepositoryReleaseConfig({
    required super.localName,
    TfArg<String>? cronSchedule,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? disabled,
    required TfArg<String> gitCommitish,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? repository,
    TfArg<String>? timeZone,
    TfArg<Map<String, dynamic>>? codeCompilationConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (cronSchedule != null) 'cron_schedule': cronSchedule,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (disabled != null) 'disabled': disabled,
           'git_commitish': gitCommitish,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (repository != null) 'repository': repository,
           if (timeZone != null) 'time_zone': timeZone,
           if (codeCompilationConfig != null)
             'code_compilation_config': codeCompilationConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryReleaseConfigSensitive;
}
