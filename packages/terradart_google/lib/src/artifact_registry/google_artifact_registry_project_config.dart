// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_project_config`.
const Set<String> _googleArtifactRegistryProjectConfigSensitive = <String>{};

/// `platform_logs_config.logging_state` — whether platform logs are emitted.
enum ArtifactRegistryPlatformLogsLoggingState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const ArtifactRegistryPlatformLogsLoggingState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `platform_logs_config.severity_level` — minimum log severity to record.
enum ArtifactRegistryPlatformLogsSeverityLevel implements TerraformEnum {
  debug('DEBUG'),
  info('INFO'),
  notice('NOTICE'),
  warning('WARNING'),
  error('ERROR'),
  critical('CRITICAL'),
  alert('ALERT'),
  emergency('EMERGENCY');

  const ArtifactRegistryPlatformLogsSeverityLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `platform_logs_config` block — platform log emission for Artifact Registry
/// operations in this project/location.
@immutable
class ArtifactRegistryProjectConfigPlatformLogsConfig {
  const ArtifactRegistryProjectConfigPlatformLogsConfig({
    this.loggingState,
    this.severityLevel,
  });

  final ArtifactRegistryPlatformLogsLoggingState? loggingState;
  final ArtifactRegistryPlatformLogsSeverityLevel? severityLevel;

  Map<String, Object?> toArgMap() => {
    if (loggingState != null) 'logging_state': loggingState!.terraformValue,
    if (severityLevel != null) 'severity_level': severityLevel!.terraformValue,
  };
}

/// Factory wrapper for `google_artifact_registry_project_config`.
///
/// The Artifact Registry project config, used to configure platform logs that
/// apply to a project.
///
/// Project-level Artifact Registry settings (platform logs) for a location.
/// The API auto-creates this config; Terraform acquires and updates the
/// existing resource. Destroy removes it from state only — the live config
/// remains in GCP.
final class GoogleArtifactRegistryProjectConfig extends Resource {
  static const String tfType = 'google_artifact_registry_project_config';

  GoogleArtifactRegistryProjectConfig({
    required super.localName,
    TfArg<String>? location,
    ArtifactRegistryProjectConfigPlatformLogsConfig? platformLogsConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           if (platformLogsConfig != null)
             'platform_logs_config': TfArg.literal([
               platformLogsConfig.toArgMap(),
             ]),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryProjectConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
