// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_colab_notebook_execution`.
const Set<String> _googleColabNotebookExecutionSensitive = <String>{};

/// Exactly one notebook input source for [GoogleColabNotebookExecution].
sealed class ColabNotebookExecutionSource {
  const ColabNotebookExecutionSource();

  /// `dataform_repository_source`.
  const factory ColabNotebookExecutionSource.dataform({
    required TfArg<String> dataformRepositoryResourceName,
    TfArg<String>? commitSha,
  }) = ColabNotebookExecutionDataformSource;

  /// `gcs_notebook_source`.
  const factory ColabNotebookExecutionSource.gcs({
    required TfArg<String> uri,
    TfArg<String>? generation,
  }) = ColabNotebookExecutionGcsSource;

  /// `direct_notebook_source` — base64 ipynb content.
  const factory ColabNotebookExecutionSource.direct({
    required TfArg<String> content,
  }) = ColabNotebookExecutionDirectSource;

  String get blockKey;

  /// Single-element list (`nesting_mode: list, max_items: 1`).
  List<Map<String, Object?>> encode();
}

/// `dataform_repository_source`.
@immutable
final class ColabNotebookExecutionDataformSource
    extends ColabNotebookExecutionSource {
  const ColabNotebookExecutionDataformSource({
    required this.dataformRepositoryResourceName,
    this.commitSha,
  });

  final TfArg<String> dataformRepositoryResourceName;
  final TfArg<String>? commitSha;

  @override
  String get blockKey => 'dataform_repository_source';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'dataform_repository_resource_name': dataformRepositoryResourceName
          .toTfJson(),
      if (commitSha != null) 'commit_sha': commitSha!.toTfJson(),
    },
  ];
}

/// `gcs_notebook_source`.
@immutable
final class ColabNotebookExecutionGcsSource
    extends ColabNotebookExecutionSource {
  const ColabNotebookExecutionGcsSource({required this.uri, this.generation});

  final TfArg<String> uri;
  final TfArg<String>? generation;

  @override
  String get blockKey => 'gcs_notebook_source';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'uri': uri.toTfJson(),
      if (generation != null) 'generation': generation!.toTfJson(),
    },
  ];
}

/// `direct_notebook_source` — base64 ipynb content.
@immutable
final class ColabNotebookExecutionDirectSource
    extends ColabNotebookExecutionSource {
  const ColabNotebookExecutionDirectSource({required this.content});

  final TfArg<String> content;

  @override
  String get blockKey => 'direct_notebook_source';

  @override
  List<Map<String, Object?>> encode() => [
    {'content': content.toTfJson()},
  ];
}

/// Exactly one compute configuration (runtime template **or** custom env).
sealed class ColabNotebookExecutionCompute {
  const ColabNotebookExecutionCompute();

  /// `notebook_runtime_template_resource_name` attribute.
  const factory ColabNotebookExecutionCompute.template(
    TfArg<String> notebookRuntimeTemplateResourceName,
  ) = ColabNotebookExecutionTemplateCompute;

  /// `custom_environment_spec` nested block (literal map matching provider).
  const factory ColabNotebookExecutionCompute.custom(
    TfArg<Map<String, Object?>> customEnvironmentSpec,
  ) = ColabNotebookExecutionCustomCompute;

  String get blockKey;

  /// Flat `{blockKey: value}` for Gate 6 / dynamic argMap dispatch.
  Map<String, Object?> encode();
}

/// `notebook_runtime_template_resource_name` attribute.
@immutable
final class ColabNotebookExecutionTemplateCompute
    extends ColabNotebookExecutionCompute {
  const ColabNotebookExecutionTemplateCompute(
    this.notebookRuntimeTemplateResourceName,
  );

  final TfArg<String> notebookRuntimeTemplateResourceName;

  @override
  String get blockKey => 'notebook_runtime_template_resource_name';

  @override
  Map<String, Object?> encode() => {
    blockKey: notebookRuntimeTemplateResourceName.toTfJson(),
  };
}

/// `custom_environment_spec` nested block (literal map matching provider).
@immutable
final class ColabNotebookExecutionCustomCompute
    extends ColabNotebookExecutionCompute {
  const ColabNotebookExecutionCustomCompute(this.customEnvironmentSpec);

  final TfArg<Map<String, Object?>> customEnvironmentSpec;

  @override
  String get blockKey => 'custom_environment_spec';

  @override
  Map<String, Object?> encode() => {
    blockKey: [customEnvironmentSpec.toTfJson()],
  };
}

/// Exactly one execution identity (`execution_user` or `service_account`).
sealed class ColabNotebookExecutionIdentity {
  const ColabNotebookExecutionIdentity();

  const factory ColabNotebookExecutionIdentity.executionUser(
    TfArg<String> executionUser,
  ) = ColabNotebookExecutionExecutionUser;

  const factory ColabNotebookExecutionIdentity.serviceAccount(
    TfArg<String> serviceAccount,
  ) = ColabNotebookExecutionServiceAccount;

  String get blockKey;

  TfArg<String> get value;

  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// `execution_user` variant.
@immutable
final class ColabNotebookExecutionExecutionUser
    extends ColabNotebookExecutionIdentity {
  const ColabNotebookExecutionExecutionUser(this.value);

  @override
  final TfArg<String> value;

  @override
  String get blockKey => 'execution_user';
}

/// `service_account` variant.
@immutable
final class ColabNotebookExecutionServiceAccount
    extends ColabNotebookExecutionIdentity {
  const ColabNotebookExecutionServiceAccount(this.value);

  @override
  final TfArg<String> value;

  @override
  String get blockKey => 'service_account';
}

/// Typed helper for the `workbench_runtime` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionWorkbenchRuntime {
  const ColabNotebookExecutionWorkbenchRuntime({required this.vmImage});

  final ColabNotebookExecutionWorkbenchRuntimeVmImage vmImage;

  Map<String, Object?> encode() => {'vm_image': vmImage.encode()};
}

/// Typed helper for the `workbench_runtime.vm_image` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionWorkbenchRuntimeVmImage {
  const ColabNotebookExecutionWorkbenchRuntimeVmImage({
    required this.image,
    this.project,
  });

  final ColabNotebookExecutionWorkbenchRuntimeVmImageImage image;

  final TfArg<String>? project;

  Map<String, Object?> encode() => {
    ...image.encode(),
    'project': ?project?.toTfJson(),
  };
}

/// Exactly one of `family`, `name` on the `workbench_runtime.vm_image` block of `google_colab_notebook_execution`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.family(...)`.
sealed class ColabNotebookExecutionWorkbenchRuntimeVmImageImage {
  const ColabNotebookExecutionWorkbenchRuntimeVmImageImage();

  /// Sets `family`.
  const factory ColabNotebookExecutionWorkbenchRuntimeVmImageImage.family(
    TfArg<String> family,
  ) = ColabNotebookExecutionWorkbenchRuntimeVmImageImageFamily;

  /// Sets `name`.
  const factory ColabNotebookExecutionWorkbenchRuntimeVmImageImage.name(
    TfArg<String> name,
  ) = ColabNotebookExecutionWorkbenchRuntimeVmImageImageName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ColabNotebookExecutionWorkbenchRuntimeVmImageImage.family] choice: sets `family`.
final class ColabNotebookExecutionWorkbenchRuntimeVmImageImageFamily
    extends ColabNotebookExecutionWorkbenchRuntimeVmImageImage {
  const ColabNotebookExecutionWorkbenchRuntimeVmImageImageFamily(this.family);

  final TfArg<String> family;

  @override
  String get blockKey => 'family';

  @override
  Map<String, Object?> encode() => {'family': family.toTfJson()};
}

/// The [ColabNotebookExecutionWorkbenchRuntimeVmImageImage.name] choice: sets `name`.
final class ColabNotebookExecutionWorkbenchRuntimeVmImageImageName
    extends ColabNotebookExecutionWorkbenchRuntimeVmImageImage {
  const ColabNotebookExecutionWorkbenchRuntimeVmImageImageName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `google_colab_notebook_execution`.
///
/// 'An instance of a notebook Execution'
///
/// Colab Enterprise **notebook execution** — starts a one-shot notebook
/// run (Dataform / GCS / inline source) on a runtime template or custom
/// environment.
///
/// Exactly-one seals:
/// - [source] — [ColabNotebookExecutionSource]
/// - [compute] — [ColabNotebookExecutionCompute]
/// - [identity] — [ColabNotebookExecutionIdentity]
///
/// **Cost / apply:** gcp-cost: Vertex AI `C7E2-9256-1C43` Vertex Colab N2
/// CPU usage us-central1 SKU `7362-581B-29B4` **$0.0379332/h** (+ E2 RAM
/// `9215-A98F-C4CD` **$0.003508236/GiBy.h**). billing-behavior: creating
/// an execution starts Colab Enterprise compute for the job duration
/// (same SKU family as [GoogleColabRuntime]). **Never** wire into
/// apply-smoke.
///
/// Enable `aiplatform.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleColabNotebookExecution extends Resource {
  static const String tfType = 'google_colab_notebook_execution';

  GoogleColabNotebookExecution({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> displayName,
    required TfArg<String> gcsOutputUri,
    required ColabNotebookExecutionSource source,
    required ColabNotebookExecutionCompute compute,
    required ColabNotebookExecutionIdentity identity,
    TfArg<String>? notebookExecutionJobId,
    TfArg<String>? executionTimeout,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'display_name': displayName,
           'gcs_output_uri': gcsOutputUri,
           'notebook_execution_job_id': ?notebookExecutionJobId,
           'execution_timeout': ?executionTimeout,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           source.blockKey: TfArg.literal(source.encode()),
           compute.blockKey: TfArg.literal(compute.encode()[compute.blockKey]),
           identity.blockKey: identity.value,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleColabNotebookExecutionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleColabNotebookExecution>`.
  RefTo<GoogleColabNotebookExecution> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `notebook_execution_job_id`.
  TfRef<String> get notebookExecutionJobIdRef =>
      TfRef.attribute<String>(this, 'notebook_execution_job_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
