// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_developer_connect_insights_config`.
const Set<String> _googleDeveloperConnectInsightsConfigSensitive = <String>{};

/// At most one of `app_hub_application`, `target_projects` on `google_developer_connect_insights_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.appHubApplication(...)`.
sealed class DeveloperConnectInsightsConfigScope {
  const DeveloperConnectInsightsConfigScope();

  /// Sets `app_hub_application`.
  const factory DeveloperConnectInsightsConfigScope.appHubApplication(
    TfArg<String> appHubApplication,
  ) = DeveloperConnectInsightsConfigScopeAppHubApplication;

  /// Sets `target_projects`.
  const factory DeveloperConnectInsightsConfigScope.targetProjects(
    DeveloperConnectInsightsConfigTargetProjects targetProjects,
  ) = DeveloperConnectInsightsConfigScopeTargetProjects;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DeveloperConnectInsightsConfigScope.appHubApplication] choice: sets `app_hub_application`.
final class DeveloperConnectInsightsConfigScopeAppHubApplication
    extends DeveloperConnectInsightsConfigScope {
  const DeveloperConnectInsightsConfigScopeAppHubApplication(
    this.appHubApplication,
  );

  final TfArg<String> appHubApplication;

  @internal
  @override
  String get blockKey => 'app_hub_application';

  @internal
  @override
  Map<String, Object?> encode() => {
    'app_hub_application': appHubApplication.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'app_hub_application': appHubApplication,
  };
}

/// The [DeveloperConnectInsightsConfigScope.targetProjects] choice: sets `target_projects`.
final class DeveloperConnectInsightsConfigScopeTargetProjects
    extends DeveloperConnectInsightsConfigScope {
  const DeveloperConnectInsightsConfigScopeTargetProjects(this.targetProjects);

  final DeveloperConnectInsightsConfigTargetProjects targetProjects;

  @internal
  @override
  String get blockKey => 'target_projects';

  @internal
  @override
  Map<String, Object?> encode() => {'target_projects': targetProjects.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'target_projects': TfArg.literal(targetProjects.encode()),
  };
}

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

  final DeveloperConnectInsightsConfigGoogleArtifactAnalysis?
  googleArtifactAnalysis;

  final DeveloperConnectInsightsConfigGoogleArtifactRegistry?
  googleArtifactRegistry;

  @internal
  Map<String, Object?> encode() => {
    'uri': ?uri?.toTfJson(),
    'google_artifact_analysis': ?googleArtifactAnalysis?.encode(),
    'google_artifact_registry': ?googleArtifactRegistry?.encode(),
  };
}

/// Typed helper for the `artifact_configs.google_artifact_analysis` block of
/// `google_developer_connect_insights_config` (derived from provider schema).
@immutable
final class DeveloperConnectInsightsConfigGoogleArtifactAnalysis {
  const DeveloperConnectInsightsConfigGoogleArtifactAnalysis({
    required this.projectId,
  });

  final TfArg<String> projectId;

  @internal
  Map<String, Object?> encode() => {'project_id': projectId.toTfJson()};
}

/// Typed helper for the `artifact_configs.google_artifact_registry` block of
/// `google_developer_connect_insights_config` (derived from provider schema).
@immutable
final class DeveloperConnectInsightsConfigGoogleArtifactRegistry {
  const DeveloperConnectInsightsConfigGoogleArtifactRegistry({
    required this.artifactRegistryPackage,
    required this.projectId,
  });

  final TfArg<String> artifactRegistryPackage;

  final TfArg<String> projectId;

  @internal
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

  final TfArg<List<String>>? projectIds;

  @internal
  Map<String, Object?> encode() => {'project_ids': ?projectIds?.toTfJson()};
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

  GoogleDeveloperConnectInsightsConfig(
    super.localName, {
    TfArg<Map<String, String>>? annotations,
    DeveloperConnectInsightsConfigScope? scope,
    TfArg<String>? deletionPolicy,
    required TfArg<String> insightsConfigId,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    List<DeveloperConnectInsightsConfigArtifactConfigs>? artifactConfigs,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           ...?scope?.argMap,
           'deletion_policy': ?deletionPolicy,
           'insights_config_id': insightsConfigId,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           if (artifactConfigs != null)
             'artifact_configs': TfArg.literal([
               for (final e in artifactConfigs) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDeveloperConnectInsightsConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDeveloperConnectInsightsConfig>`.
  RefTo<GoogleDeveloperConnectInsightsConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `app_hub_application` attribute.
  TfRef<String> get appHubApplication =>
      TfRef.attribute<String>(this, 'app_hub_application');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `insights_config_id` attribute.
  TfRef<String> get insightsConfigId =>
      TfRef.attribute<String>(this, 'insights_config_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
