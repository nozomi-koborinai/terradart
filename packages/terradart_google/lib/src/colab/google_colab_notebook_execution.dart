// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_colab_notebook_execution`.
const Set<String> _googleColabNotebookExecutionSensitive = <String>{};

/// Exactly one of `dataform_repository_source`, `gcs_notebook_source`, `direct_notebook_source` on `google_colab_notebook_execution`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dataformRepositorySource(...)`.
sealed class ColabNotebookExecutionSource {
  const ColabNotebookExecutionSource();

  /// Sets `dataform_repository_source`.
  const factory ColabNotebookExecutionSource.dataformRepositorySource(
    ColabNotebookExecutionDataformRepositorySource dataformRepositorySource,
  ) = ColabNotebookExecutionSourceDataformRepositorySource;

  /// Sets `gcs_notebook_source`.
  const factory ColabNotebookExecutionSource.gcsNotebookSource(
    ColabNotebookExecutionGcsNotebookSource gcsNotebookSource,
  ) = ColabNotebookExecutionSourceGcsNotebookSource;

  /// Sets `direct_notebook_source`.
  const factory ColabNotebookExecutionSource.directNotebookSource(
    ColabNotebookExecutionDirectNotebookSource directNotebookSource,
  ) = ColabNotebookExecutionSourceDirectNotebookSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ColabNotebookExecutionSource.dataformRepositorySource] choice: sets `dataform_repository_source`.
final class ColabNotebookExecutionSourceDataformRepositorySource
    extends ColabNotebookExecutionSource {
  const ColabNotebookExecutionSourceDataformRepositorySource(
    this.dataformRepositorySource,
  );

  final ColabNotebookExecutionDataformRepositorySource dataformRepositorySource;

  @override
  String get blockKey => 'dataform_repository_source';

  @override
  Map<String, Object?> encode() => {
    'dataform_repository_source': dataformRepositorySource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dataform_repository_source': TfArg.literal(
      dataformRepositorySource.encode(),
    ),
  };
}

/// The [ColabNotebookExecutionSource.gcsNotebookSource] choice: sets `gcs_notebook_source`.
final class ColabNotebookExecutionSourceGcsNotebookSource
    extends ColabNotebookExecutionSource {
  const ColabNotebookExecutionSourceGcsNotebookSource(this.gcsNotebookSource);

  final ColabNotebookExecutionGcsNotebookSource gcsNotebookSource;

  @override
  String get blockKey => 'gcs_notebook_source';

  @override
  Map<String, Object?> encode() => {
    'gcs_notebook_source': gcsNotebookSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'gcs_notebook_source': TfArg.literal(gcsNotebookSource.encode()),
  };
}

/// The [ColabNotebookExecutionSource.directNotebookSource] choice: sets `direct_notebook_source`.
final class ColabNotebookExecutionSourceDirectNotebookSource
    extends ColabNotebookExecutionSource {
  const ColabNotebookExecutionSourceDirectNotebookSource(
    this.directNotebookSource,
  );

  final ColabNotebookExecutionDirectNotebookSource directNotebookSource;

  @override
  String get blockKey => 'direct_notebook_source';

  @override
  Map<String, Object?> encode() => {
    'direct_notebook_source': directNotebookSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'direct_notebook_source': TfArg.literal(directNotebookSource.encode()),
  };
}

/// Exactly one of `notebook_runtime_template_resource_name`, `custom_environment_spec` on `google_colab_notebook_execution`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.notebookRuntimeTemplateResourceName(...)`.
sealed class ColabNotebookExecutionCompute {
  const ColabNotebookExecutionCompute();

  /// Sets `notebook_runtime_template_resource_name`.
  const factory ColabNotebookExecutionCompute.notebookRuntimeTemplateResourceName(
    TfArg<String> notebookRuntimeTemplateResourceName,
  ) = ColabNotebookExecutionComputeNotebookRuntimeTemplateResourceName;

  /// Sets `custom_environment_spec`.
  const factory ColabNotebookExecutionCompute.customEnvironmentSpec(
    ColabNotebookExecutionCustomEnvironmentSpec customEnvironmentSpec,
  ) = ColabNotebookExecutionComputeCustomEnvironmentSpec;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ColabNotebookExecutionCompute.notebookRuntimeTemplateResourceName] choice: sets `notebook_runtime_template_resource_name`.
final class ColabNotebookExecutionComputeNotebookRuntimeTemplateResourceName
    extends ColabNotebookExecutionCompute {
  const ColabNotebookExecutionComputeNotebookRuntimeTemplateResourceName(
    this.notebookRuntimeTemplateResourceName,
  );

  final TfArg<String> notebookRuntimeTemplateResourceName;

  @override
  String get blockKey => 'notebook_runtime_template_resource_name';

  @override
  Map<String, Object?> encode() => {
    'notebook_runtime_template_resource_name':
        notebookRuntimeTemplateResourceName.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'notebook_runtime_template_resource_name':
        notebookRuntimeTemplateResourceName,
  };
}

/// The [ColabNotebookExecutionCompute.customEnvironmentSpec] choice: sets `custom_environment_spec`.
final class ColabNotebookExecutionComputeCustomEnvironmentSpec
    extends ColabNotebookExecutionCompute {
  const ColabNotebookExecutionComputeCustomEnvironmentSpec(
    this.customEnvironmentSpec,
  );

  final ColabNotebookExecutionCustomEnvironmentSpec customEnvironmentSpec;

  @override
  String get blockKey => 'custom_environment_spec';

  @override
  Map<String, Object?> encode() => {
    'custom_environment_spec': customEnvironmentSpec.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'custom_environment_spec': TfArg.literal(customEnvironmentSpec.encode()),
  };
}

/// Exactly one of `execution_user`, `service_account` on `google_colab_notebook_execution`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.executionUser(...)`.
sealed class ColabNotebookExecutionIdentity {
  const ColabNotebookExecutionIdentity();

  /// Sets `execution_user`.
  const factory ColabNotebookExecutionIdentity.executionUser(
    TfArg<String> executionUser,
  ) = ColabNotebookExecutionIdentityExecutionUser;

  /// Sets `service_account`.
  const factory ColabNotebookExecutionIdentity.serviceAccount(
    RefTo<GoogleServiceAccount> serviceAccount,
  ) = ColabNotebookExecutionIdentityServiceAccount;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ColabNotebookExecutionIdentity.executionUser] choice: sets `execution_user`.
final class ColabNotebookExecutionIdentityExecutionUser
    extends ColabNotebookExecutionIdentity {
  const ColabNotebookExecutionIdentityExecutionUser(this.executionUser);

  final TfArg<String> executionUser;

  @override
  String get blockKey => 'execution_user';

  @override
  Map<String, Object?> encode() => {'execution_user': executionUser.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'execution_user': executionUser};
}

/// The [ColabNotebookExecutionIdentity.serviceAccount] choice: sets `service_account`.
final class ColabNotebookExecutionIdentityServiceAccount
    extends ColabNotebookExecutionIdentity {
  const ColabNotebookExecutionIdentityServiceAccount(this.serviceAccount);

  final RefTo<GoogleServiceAccount> serviceAccount;

  @override
  String get blockKey => 'service_account';

  @override
  Map<String, Object?> encode() => {
    'service_account': serviceAccount.encodeAs('email').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'service_account': serviceAccount.encodeAs('email'),
  };
}

/// Typed helper for the `custom_environment_spec` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionCustomEnvironmentSpec {
  const ColabNotebookExecutionCustomEnvironmentSpec({
    this.machineSpec,
    this.networkSpec,
    this.persistentDiskSpec,
    this.shieldedInstanceConfig,
  });

  final ColabNotebookExecutionCustomEnvironmentSpecMachineSpec? machineSpec;

  final ColabNotebookExecutionCustomEnvironmentSpecNetworkSpec? networkSpec;

  final ColabNotebookExecutionCustomEnvironmentSpecPersistentDiskSpec?
  persistentDiskSpec;

  final ColabNotebookExecutionCustomEnvironmentSpecShieldedInstanceConfig?
  shieldedInstanceConfig;

  Map<String, Object?> encode() => {
    'machine_spec': ?machineSpec?.encode(),
    'network_spec': ?networkSpec?.encode(),
    'persistent_disk_spec': ?persistentDiskSpec?.encode(),
    'shielded_instance_config': ?shieldedInstanceConfig?.encode(),
  };
}

/// Typed helper for the `custom_environment_spec.machine_spec` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionCustomEnvironmentSpecMachineSpec {
  const ColabNotebookExecutionCustomEnvironmentSpecMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  final TfArg<String>? machineType;

  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
  };
}

/// Typed helper for the `custom_environment_spec.network_spec` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionCustomEnvironmentSpecNetworkSpec {
  const ColabNotebookExecutionCustomEnvironmentSpecNetworkSpec({
    this.enableInternetAccess,
    this.network,
    this.subnetwork,
  });

  final TfArg<bool>? enableInternetAccess;

  final RefTo<GoogleComputeNetwork>? network;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  Map<String, Object?> encode() => {
    'enable_internet_access': ?enableInternetAccess?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `custom_environment_spec.persistent_disk_spec` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionCustomEnvironmentSpecPersistentDiskSpec {
  const ColabNotebookExecutionCustomEnvironmentSpecPersistentDiskSpec({
    this.diskSizeGb,
    this.diskType,
  });

  final TfArg<String>? diskSizeGb;

  final TfArg<String>? diskType;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
  };
}

/// Typed helper for the `custom_environment_spec.shielded_instance_config` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionCustomEnvironmentSpecShieldedInstanceConfig {
  const ColabNotebookExecutionCustomEnvironmentSpecShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  Map<String, Object?> encode() => {
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
    'enable_vtpm': ?enableVtpm?.toTfJson(),
  };
}

/// Typed helper for the `dataform_repository_source` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionDataformRepositorySource {
  const ColabNotebookExecutionDataformRepositorySource({
    this.commitSha,
    required this.dataformRepositoryResourceName,
  });

  final TfArg<String>? commitSha;

  final TfArg<String> dataformRepositoryResourceName;

  Map<String, Object?> encode() => {
    'commit_sha': ?commitSha?.toTfJson(),
    'dataform_repository_resource_name': dataformRepositoryResourceName
        .toTfJson(),
  };
}

/// Typed helper for the `direct_notebook_source` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionDirectNotebookSource {
  const ColabNotebookExecutionDirectNotebookSource({required this.content});

  final TfArg<String> content;

  Map<String, Object?> encode() => {'content': content.toTfJson()};
}

/// Typed helper for the `gcs_notebook_source` block of
/// `google_colab_notebook_execution` (derived from provider schema).
@immutable
final class ColabNotebookExecutionGcsNotebookSource {
  const ColabNotebookExecutionGcsNotebookSource({
    this.generation,
    required this.uri,
  });

  final TfArg<String>? generation;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'generation': ?generation?.toTfJson(),
    'uri': uri.toTfJson(),
  };
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
    required this.selector,
    this.project,
  });

  final ColabNotebookExecutionWorkbenchRuntimeVmImageSelector selector;

  final TfArg<String>? project;

  Map<String, Object?> encode() => {
    ...selector.encode(),
    'project': ?project?.toTfJson(),
  };
}

/// Exactly one of `family`, `name` on the `workbench_runtime.vm_image` block of `google_colab_notebook_execution`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.family(...)`.
sealed class ColabNotebookExecutionWorkbenchRuntimeVmImageSelector {
  const ColabNotebookExecutionWorkbenchRuntimeVmImageSelector();

  /// Sets `family`.
  const factory ColabNotebookExecutionWorkbenchRuntimeVmImageSelector.family(
    TfArg<String> family,
  ) = ColabNotebookExecutionWorkbenchRuntimeVmImageSelectorFamily;

  /// Sets `name`.
  const factory ColabNotebookExecutionWorkbenchRuntimeVmImageSelector.name(
    TfArg<String> name,
  ) = ColabNotebookExecutionWorkbenchRuntimeVmImageSelectorName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ColabNotebookExecutionWorkbenchRuntimeVmImageSelector.family] choice: sets `family`.
final class ColabNotebookExecutionWorkbenchRuntimeVmImageSelectorFamily
    extends ColabNotebookExecutionWorkbenchRuntimeVmImageSelector {
  const ColabNotebookExecutionWorkbenchRuntimeVmImageSelectorFamily(
    this.family,
  );

  final TfArg<String> family;

  @override
  String get blockKey => 'family';

  @override
  Map<String, Object?> encode() => {'family': family.toTfJson()};
}

/// The [ColabNotebookExecutionWorkbenchRuntimeVmImageSelector.name] choice: sets `name`.
final class ColabNotebookExecutionWorkbenchRuntimeVmImageSelectorName
    extends ColabNotebookExecutionWorkbenchRuntimeVmImageSelector {
  const ColabNotebookExecutionWorkbenchRuntimeVmImageSelectorName(this.name);

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
    ColabNotebookExecutionWorkbenchRuntime? workbenchRuntime,
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
           ...source.argMap,
           ...compute.argMap,
           ...identity.argMap,
           if (workbenchRuntime != null)
             'workbench_runtime': TfArg.literal(workbenchRuntime.encode()),
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
