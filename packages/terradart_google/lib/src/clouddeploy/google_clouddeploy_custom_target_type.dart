// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_custom_target_type`.
const Set<String> _googleClouddeployCustomTargetTypeSensitive = <String>{};

/// At most one of `custom_actions`, `tasks` on `google_clouddeploy_custom_target_type`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.customActions(...)`.
sealed class ClouddeployCustomTargetTypeCustomActionsOrTasks {
  const ClouddeployCustomTargetTypeCustomActionsOrTasks();

  /// Sets `custom_actions`.
  const factory ClouddeployCustomTargetTypeCustomActionsOrTasks.customActions(
    ClouddeployCustomTargetTypeCustomActions customActions,
  ) = ClouddeployCustomTargetTypeCustomActionsOrTasksCustomActions;

  /// Sets `tasks`.
  const factory ClouddeployCustomTargetTypeCustomActionsOrTasks.tasks(
    ClouddeployCustomTargetTypeTasks tasks,
  ) = ClouddeployCustomTargetTypeCustomActionsOrTasksTasks;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ClouddeployCustomTargetTypeCustomActionsOrTasks.customActions] choice: sets `custom_actions`.
final class ClouddeployCustomTargetTypeCustomActionsOrTasksCustomActions
    extends ClouddeployCustomTargetTypeCustomActionsOrTasks {
  const ClouddeployCustomTargetTypeCustomActionsOrTasksCustomActions(
    this.customActions,
  );

  final ClouddeployCustomTargetTypeCustomActions customActions;

  @override
  String get blockKey => 'custom_actions';

  @override
  Map<String, Object?> encode() => {'custom_actions': customActions.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'custom_actions': TfArg.literal(customActions.encode()),
  };
}

/// The [ClouddeployCustomTargetTypeCustomActionsOrTasks.tasks] choice: sets `tasks`.
final class ClouddeployCustomTargetTypeCustomActionsOrTasksTasks
    extends ClouddeployCustomTargetTypeCustomActionsOrTasks {
  const ClouddeployCustomTargetTypeCustomActionsOrTasksTasks(this.tasks);

  final ClouddeployCustomTargetTypeTasks tasks;

  @override
  String get blockKey => 'tasks';

  @override
  Map<String, Object?> encode() => {'tasks': tasks.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'tasks': TfArg.literal(tasks.encode()),
  };
}

/// Typed helper for the `custom_actions` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeCustomActions {
  const ClouddeployCustomTargetTypeCustomActions({
    required this.deployAction,
    this.renderAction,
    this.includeSkaffoldModules,
  });

  final TfArg<String> deployAction;

  final TfArg<String>? renderAction;

  final List<ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModules>?
  includeSkaffoldModules;

  Map<String, Object?> encode() => {
    'deploy_action': deployAction.toTfJson(),
    if (renderAction != null) 'render_action': renderAction!.toTfJson(),
    if (includeSkaffoldModules != null)
      'include_skaffold_modules': [
        for (final e in includeSkaffoldModules!) e.encode(),
      ],
  };
}

/// Typed helper for the `custom_actions.include_skaffold_modules` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModules {
  const ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModules({
    this.configs,
    required this.gitOrGoogleCloudStorageOrGoogleCloudBuildRepo,
  });

  final TfArg<List<Object?>>? configs;

  final ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo
  gitOrGoogleCloudStorageOrGoogleCloudBuildRepo;

  Map<String, Object?> encode() => {
    if (configs != null) 'configs': configs!.toTfJson(),
    ...gitOrGoogleCloudStorageOrGoogleCloudBuildRepo.encode(),
  };
}

/// Exactly one of `git`, `google_cloud_storage`, `google_cloud_build_repo` on the `custom_actions.include_skaffold_modules` block of `google_clouddeploy_custom_target_type`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.git(...)`.
sealed class ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo {
  const ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo();

  /// Sets `git`.
  const factory ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo.git(
    ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGit git,
  ) = ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepoGit;

  /// Sets `google_cloud_storage`.
  const factory ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo.googleCloudStorage(
    ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGoogleCloudStorage
    googleCloudStorage,
  ) = ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepoGoogleCloudStorage;

  /// Sets `google_cloud_build_repo`.
  const factory ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo.googleCloudBuildRepo(
    ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGoogleCloudBuildRepo
    googleCloudBuildRepo,
  ) = ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepoGoogleCloudBuildRepo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo.git] choice: sets `git`.
final class ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepoGit
    extends
        ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo {
  const ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepoGit(
    this.git,
  );

  final ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGit git;

  @override
  String get blockKey => 'git';

  @override
  Map<String, Object?> encode() => {'git': git.encode()};
}

/// The [ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo.googleCloudStorage] choice: sets `google_cloud_storage`.
final class ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepoGoogleCloudStorage
    extends
        ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo {
  const ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepoGoogleCloudStorage(
    this.googleCloudStorage,
  );

  final ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGoogleCloudStorage
  googleCloudStorage;

  @override
  String get blockKey => 'google_cloud_storage';

  @override
  Map<String, Object?> encode() => {
    'google_cloud_storage': googleCloudStorage.encode(),
  };
}

/// The [ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo.googleCloudBuildRepo] choice: sets `google_cloud_build_repo`.
final class ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepoGoogleCloudBuildRepo
    extends
        ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepo {
  const ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGitOrGoogleCloudStorageOrGoogleCloudBuildRepoGoogleCloudBuildRepo(
    this.googleCloudBuildRepo,
  );

  final ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGoogleCloudBuildRepo
  googleCloudBuildRepo;

  @override
  String get blockKey => 'google_cloud_build_repo';

  @override
  Map<String, Object?> encode() => {
    'google_cloud_build_repo': googleCloudBuildRepo.encode(),
  };
}

/// Typed helper for the `custom_actions.include_skaffold_modules.git` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGit {
  const ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGit({
    this.path,
    this.ref,
    required this.repo,
  });

  final TfArg<String>? path;

  final TfArg<String>? ref;

  final TfArg<String> repo;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
    'repo': repo.toTfJson(),
  };
}

/// Typed helper for the `custom_actions.include_skaffold_modules.google_cloud_build_repo` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGoogleCloudBuildRepo {
  const ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGoogleCloudBuildRepo({
    this.path,
    this.ref,
    required this.repository,
  });

  final TfArg<String>? path;

  final TfArg<String>? ref;

  final TfArg<String> repository;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
    'repository': repository.toTfJson(),
  };
}

/// Typed helper for the `custom_actions.include_skaffold_modules.google_cloud_storage` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGoogleCloudStorage {
  const ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesGoogleCloudStorage({
    this.path,
    required this.source,
  });

  final TfArg<String>? path;

  final TfArg<String> source;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// Typed helper for the `tasks` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeTasks {
  const ClouddeployCustomTargetTypeTasks({required this.deploy, this.render});

  final ClouddeployCustomTargetTypeTasksDeploy deploy;

  final ClouddeployCustomTargetTypeTasksRender? render;

  Map<String, Object?> encode() => {
    'deploy': deploy.encode(),
    if (render != null) 'render': render!.encode(),
  };
}

/// Typed helper for the `tasks.deploy` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeTasksDeploy {
  const ClouddeployCustomTargetTypeTasksDeploy({this.container});

  final ClouddeployCustomTargetTypeTasksDeployContainer? container;

  Map<String, Object?> encode() => {
    if (container != null) 'container': container!.encode(),
  };
}

/// Typed helper for the `tasks.deploy.container` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeTasksDeployContainer {
  const ClouddeployCustomTargetTypeTasksDeployContainer({
    this.args,
    this.command,
    this.env,
    required this.image,
  });

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? command;

  final TfArg<Map<String, String>>? env;

  final TfArg<String> image;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    if (command != null) 'command': command!.toTfJson(),
    if (env != null) 'env': env!.toTfJson(),
    'image': image.toTfJson(),
  };
}

/// Typed helper for the `tasks.render` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeTasksRender {
  const ClouddeployCustomTargetTypeTasksRender({this.container});

  final ClouddeployCustomTargetTypeTasksRenderContainer? container;

  Map<String, Object?> encode() => {
    if (container != null) 'container': container!.encode(),
  };
}

/// Typed helper for the `tasks.render.container` block of
/// `google_clouddeploy_custom_target_type` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeTasksRenderContainer {
  const ClouddeployCustomTargetTypeTasksRenderContainer({
    this.args,
    this.command,
    this.env,
    required this.image,
  });

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? command;

  final TfArg<Map<String, String>>? env;

  final TfArg<String> image;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    if (command != null) 'command': command!.toTfJson(),
    if (env != null) 'env': env!.toTfJson(),
    'image': image.toTfJson(),
  };
}

/// Factory wrapper for `google_clouddeploy_custom_target_type`.
///
/// A Cloud Deploy `CustomTargetType` defines a type of custom target that can
/// be referenced in a Cloud Deploy `Target` in order to facilitate deploying to
/// other systems besides the supported runtimes.
final class GoogleClouddeployCustomTargetType extends Resource {
  static const String tfType = 'google_clouddeploy_custom_target_type';

  GoogleClouddeployCustomTargetType({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    ClouddeployCustomTargetTypeCustomActionsOrTasks? customActionsOrTasks,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           ...?customActionsOrTasks?.argMap,
           if (description != null) 'description': description,
           if (annotations != null) 'annotations': annotations,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployCustomTargetTypeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `custom_target_type_id` attribute.
  TfRef<String> get customTargetTypeId =>
      TfRef.attribute<String>(this, 'custom_target_type_id');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
