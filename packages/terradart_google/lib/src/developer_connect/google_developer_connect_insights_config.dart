// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_developer_connect_insights_config`.
const Set<String> _googleDeveloperConnectInsightsConfigSensitive = <String>{};

/// Typed helper for the `artifact_configs` block of
/// `google_developer_connect_insights_config` (derived from provider schema).
@immutable
final class DeveloperConnectInsightsConfigArtifactConfigs {
  const DeveloperConnectInsightsConfigArtifactConfigs({
    this.uri,
    this.googleArtifactAnalysis,
    this.googleArtifactRegistry,
  });

  final TfArg<String>? uri;

  final DeveloperConnectInsightsConfigArtifactConfigsGoogleArtifactAnalysis?
  googleArtifactAnalysis;

  final DeveloperConnectInsightsConfigArtifactConfigsGoogleArtifactRegistry?
  googleArtifactRegistry;

  Map<String, Object?> encode() => {
    if (uri != null) 'uri': uri!.toTfJson(),
    if (googleArtifactAnalysis != null)
      'google_artifact_analysis': googleArtifactAnalysis!.encode(),
    if (googleArtifactRegistry != null)
      'google_artifact_registry': googleArtifactRegistry!.encode(),
  };
}

/// Typed helper for the `artifact_configs.google_artifact_analysis` block of
/// `google_developer_connect_insights_config` (derived from provider schema).
@immutable
final class DeveloperConnectInsightsConfigArtifactConfigsGoogleArtifactAnalysis {
  const DeveloperConnectInsightsConfigArtifactConfigsGoogleArtifactAnalysis({
    required this.projectId,
  });

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {'project_id': projectId.toTfJson()};
}

/// Typed helper for the `artifact_configs.google_artifact_registry` block of
/// `google_developer_connect_insights_config` (derived from provider schema).
@immutable
final class DeveloperConnectInsightsConfigArtifactConfigsGoogleArtifactRegistry {
  const DeveloperConnectInsightsConfigArtifactConfigsGoogleArtifactRegistry({
    required this.artifactRegistryPackage,
    required this.projectId,
  });

  final TfArg<String> artifactRegistryPackage;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'artifact_registry_package': artifactRegistryPackage.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Typed helper for the `target_projects` block of
/// `google_developer_connect_insights_config` (derived from provider schema).
@immutable
final class DeveloperConnectInsightsConfigTargetProjects {
  const DeveloperConnectInsightsConfigTargetProjects({this.projectIds});

  final TfArg<List<Object?>>? projectIds;

  Map<String, Object?> encode() => {
    if (projectIds != null) 'project_ids': projectIds!.toTfJson(),
  };
}

/// Factory wrapper for `google_developer_connect_insights_config`.
///
/// Description
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDeveloperConnectInsightsConfig extends Resource {
  static const String tfType = 'google_developer_connect_insights_config';

  GoogleDeveloperConnectInsightsConfig({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? appHubApplication,
    TfArg<String>? deletionPolicy,
    required TfArg<String> insightsConfigId,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    List<DeveloperConnectInsightsConfigArtifactConfigs>? artifactConfigs,
    DeveloperConnectInsightsConfigTargetProjects? targetProjects,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (appHubApplication != null)
             'app_hub_application': appHubApplication,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'insights_config_id': insightsConfigId,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           if (artifactConfigs != null)
             'artifact_configs': TfArg.literal([
               for (final e in artifactConfigs) e.encode(),
             ]),
           if (targetProjects != null)
             'target_projects': TfArg.literal(targetProjects.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDeveloperConnectInsightsConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `errors` attribute.
  TfRef<List<Map<String, Object?>>> get errors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'errors');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `runtime_configs` attribute.
  TfRef<List<Map<String, Object?>>> get runtimeConfigs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'runtime_configs');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
