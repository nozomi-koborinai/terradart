// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_project_config`.
const Set<String> _googleArtifactRegistryProjectConfigSensitive = <String>{};

/// `platform_logs_config.logging_state` — whether platform logs are emitted.
extension type const ArtifactRegistryPlatformLogsLoggingState._(TfArg<String> _)
    implements TfArg<String> {
  ArtifactRegistryPlatformLogsLoggingState.variable(String name)
    : this._(TfArg.variable(name));
  ArtifactRegistryPlatformLogsLoggingState.expression(String template)
    : this._(TfArg.expression(template));
  const ArtifactRegistryPlatformLogsLoggingState.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = ArtifactRegistryPlatformLogsLoggingState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = ArtifactRegistryPlatformLogsLoggingState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<ArtifactRegistryPlatformLogsLoggingState> values = [
    enabled,
    disabled,
  ];
}

/// `platform_logs_config.severity_level` — minimum log severity to record.
extension type const ArtifactRegistryPlatformLogsSeverityLevel._(
  TfArg<String> _
) implements TfArg<String> {
  ArtifactRegistryPlatformLogsSeverityLevel.variable(String name)
    : this._(TfArg.variable(name));
  ArtifactRegistryPlatformLogsSeverityLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ArtifactRegistryPlatformLogsSeverityLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const debug = ArtifactRegistryPlatformLogsSeverityLevel._(
    TfArgLiteral('DEBUG'),
  );
  static const info = ArtifactRegistryPlatformLogsSeverityLevel._(
    TfArgLiteral('INFO'),
  );
  static const notice = ArtifactRegistryPlatformLogsSeverityLevel._(
    TfArgLiteral('NOTICE'),
  );
  static const warning = ArtifactRegistryPlatformLogsSeverityLevel._(
    TfArgLiteral('WARNING'),
  );
  static const error = ArtifactRegistryPlatformLogsSeverityLevel._(
    TfArgLiteral('ERROR'),
  );
  static const critical = ArtifactRegistryPlatformLogsSeverityLevel._(
    TfArgLiteral('CRITICAL'),
  );
  static const alert = ArtifactRegistryPlatformLogsSeverityLevel._(
    TfArgLiteral('ALERT'),
  );
  static const emergency = ArtifactRegistryPlatformLogsSeverityLevel._(
    TfArgLiteral('EMERGENCY'),
  );

  static const List<ArtifactRegistryPlatformLogsSeverityLevel> values = [
    debug,
    info,
    notice,
    warning,
    error,
    critical,
    alert,
    emergency,
  ];
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
    if (loggingState != null) 'logging_state': loggingState!.toTfJson(),
    if (severityLevel != null) 'severity_level': severityLevel!.toTfJson(),
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

  GoogleArtifactRegistryProjectConfig(
    super.localName, {
    TfArg<String>? location,
    ArtifactRegistryProjectConfigPlatformLogsConfig? platformLogsConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?location,
           if (platformLogsConfig != null)
             'platform_logs_config': TfArg.literal([
               platformLogsConfig.toArgMap(),
             ]),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryProjectConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleArtifactRegistryProjectConfig>`.
  RefTo<GoogleArtifactRegistryProjectConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
