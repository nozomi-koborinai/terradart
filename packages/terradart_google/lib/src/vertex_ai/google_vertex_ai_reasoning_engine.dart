// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_reasoning_engine`.
const Set<String> _googleVertexAiReasoningEngineSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineEncryptionSpec {
  const VertexAiReasoningEngineEncryptionSpec({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// Typed helper for the `spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpec {
  const VertexAiReasoningEngineSpec({
    this.agentFramework,
    this.classMethods,
    this.identityType,
    this.serviceAccount,
    this.containerSpec,
    this.deploymentSpec,
    this.packageSpec,
    this.sourceCodeSpec,
  });

  final TfArg<String>? agentFramework;

  final TfArg<String>? classMethods;

  final TfArg<VertexAiReasoningEngineSpecIdentityType>? identityType;

  final TfArg<String>? serviceAccount;

  final VertexAiReasoningEngineSpecContainerSpec? containerSpec;

  final VertexAiReasoningEngineSpecDeploymentSpec? deploymentSpec;

  final VertexAiReasoningEngineSpecPackageSpec? packageSpec;

  final VertexAiReasoningEngineSpecSourceCodeSpec? sourceCodeSpec;

  Map<String, Object?> encode() => {
    if (agentFramework != null) 'agent_framework': agentFramework!.toTfJson(),
    if (classMethods != null) 'class_methods': classMethods!.toTfJson(),
    if (identityType != null) 'identity_type': identityType!.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (containerSpec != null) 'container_spec': containerSpec!.encode(),
    if (deploymentSpec != null) 'deployment_spec': deploymentSpec!.encode(),
    if (packageSpec != null) 'package_spec': packageSpec!.encode(),
    if (sourceCodeSpec != null) 'source_code_spec': sourceCodeSpec!.encode(),
  };
}

/// `identity_type` — derived from the provider schema description.
enum VertexAiReasoningEngineSpecIdentityType implements TerraformEnum {
  serviceAccount('SERVICE_ACCOUNT'),
  agentIdentity('AGENT_IDENTITY');

  const VertexAiReasoningEngineSpecIdentityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spec.container_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecContainerSpec {
  const VertexAiReasoningEngineSpecContainerSpec({
    required this.imageUri,
    this.port,
  });

  final TfArg<String> imageUri;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'image_uri': imageUri.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Typed helper for the `spec.deployment_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpec {
  const VertexAiReasoningEngineSpecDeploymentSpec({
    this.containerConcurrency,
    this.maxInstances,
    this.minInstances,
    this.resourceLimits,
    this.env,
    this.pscInterfaceConfig,
    this.secretEnv,
  });

  final TfArg<num>? containerConcurrency;

  final TfArg<num>? maxInstances;

  final TfArg<num>? minInstances;

  final TfArg<Map<String, String>>? resourceLimits;

  final List<VertexAiReasoningEngineSpecDeploymentSpecEnv>? env;

  final VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfig?
  pscInterfaceConfig;

  final List<VertexAiReasoningEngineSpecDeploymentSpecSecretEnv>? secretEnv;

  Map<String, Object?> encode() => {
    if (containerConcurrency != null)
      'container_concurrency': containerConcurrency!.toTfJson(),
    if (maxInstances != null) 'max_instances': maxInstances!.toTfJson(),
    if (minInstances != null) 'min_instances': minInstances!.toTfJson(),
    if (resourceLimits != null) 'resource_limits': resourceLimits!.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (pscInterfaceConfig != null)
      'psc_interface_config': pscInterfaceConfig!.encode(),
    if (secretEnv != null)
      'secret_env': [for (final e in secretEnv!) e.encode()],
  };
}

/// Typed helper for the `spec.deployment_spec.env` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecEnv {
  const VertexAiReasoningEngineSpecDeploymentSpecEnv({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.deployment_spec.psc_interface_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfig {
  const VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfig({
    this.networkAttachment,
    this.dnsPeeringConfigs,
  });

  final TfArg<String>? networkAttachment;

  final List<
    VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigs
  >?
  dnsPeeringConfigs;

  Map<String, Object?> encode() => {
    if (networkAttachment != null)
      'network_attachment': networkAttachment!.toTfJson(),
    if (dnsPeeringConfigs != null)
      'dns_peering_configs': [for (final e in dnsPeeringConfigs!) e.encode()],
  };
}

/// Typed helper for the `spec.deployment_spec.psc_interface_config.dns_peering_configs` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigs {
  const VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigs({
    required this.domain,
    required this.targetNetwork,
    required this.targetProject,
  });

  final TfArg<String> domain;

  final TfArg<String> targetNetwork;

  final TfArg<String> targetProject;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'target_network': targetNetwork.toTfJson(),
    'target_project': targetProject.toTfJson(),
  };
}

/// Typed helper for the `spec.deployment_spec.secret_env` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecSecretEnv {
  const VertexAiReasoningEngineSpecDeploymentSpecSecretEnv({
    required this.name,
    required this.secretRef,
  });

  final TfArg<String> name;

  final VertexAiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef secretRef;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'secret_ref': secretRef.encode(),
  };
}

/// Typed helper for the `spec.deployment_spec.secret_env.secret_ref` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef {
  const VertexAiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef({
    required this.secret,
    this.version,
  });

  final TfArg<String> secret;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'secret': secret.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `spec.package_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecPackageSpec {
  const VertexAiReasoningEngineSpecPackageSpec({
    this.dependencyFilesGcsUri,
    this.pickleObjectGcsUri,
    this.pythonVersion,
    this.requirementsGcsUri,
  });

  final TfArg<String>? dependencyFilesGcsUri;

  final TfArg<String>? pickleObjectGcsUri;

  final TfArg<String>? pythonVersion;

  final TfArg<String>? requirementsGcsUri;

  Map<String, Object?> encode() => {
    if (dependencyFilesGcsUri != null)
      'dependency_files_gcs_uri': dependencyFilesGcsUri!.toTfJson(),
    if (pickleObjectGcsUri != null)
      'pickle_object_gcs_uri': pickleObjectGcsUri!.toTfJson(),
    if (pythonVersion != null) 'python_version': pythonVersion!.toTfJson(),
    if (requirementsGcsUri != null)
      'requirements_gcs_uri': requirementsGcsUri!.toTfJson(),
  };
}

/// Typed helper for the `spec.source_code_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpec {
  const VertexAiReasoningEngineSpecSourceCodeSpec({
    this.developerConnectSource,
    this.imageSpec,
    this.inlineSource,
    this.pythonSpec,
  });

  final VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource?
  developerConnectSource;

  final VertexAiReasoningEngineSpecSourceCodeSpecImageSpec? imageSpec;

  final VertexAiReasoningEngineSpecSourceCodeSpecInlineSource? inlineSource;

  final VertexAiReasoningEngineSpecSourceCodeSpecPythonSpec? pythonSpec;

  Map<String, Object?> encode() => {
    if (developerConnectSource != null)
      'developer_connect_source': developerConnectSource!.encode(),
    if (imageSpec != null) 'image_spec': imageSpec!.encode(),
    if (inlineSource != null) 'inline_source': inlineSource!.encode(),
    if (pythonSpec != null) 'python_spec': pythonSpec!.encode(),
  };
}

/// Typed helper for the `spec.source_code_spec.developer_connect_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource {
  const VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource({
    required this.config,
  });

  final VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig
  config;

  Map<String, Object?> encode() => {'config': config.encode()};
}

/// Typed helper for the `spec.source_code_spec.developer_connect_source.config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig {
  const VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig({
    required this.dir,
    required this.gitRepositoryLink,
    required this.revision,
  });

  final TfArg<String> dir;

  final TfArg<String> gitRepositoryLink;

  final TfArg<String> revision;

  Map<String, Object?> encode() => {
    'dir': dir.toTfJson(),
    'git_repository_link': gitRepositoryLink.toTfJson(),
    'revision': revision.toTfJson(),
  };
}

/// Typed helper for the `spec.source_code_spec.image_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecImageSpec {
  const VertexAiReasoningEngineSpecSourceCodeSpecImageSpec({this.buildArgs});

  final TfArg<Map<String, String>>? buildArgs;

  Map<String, Object?> encode() => {
    if (buildArgs != null) 'build_args': buildArgs!.toTfJson(),
  };
}

/// Typed helper for the `spec.source_code_spec.inline_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecInlineSource {
  const VertexAiReasoningEngineSpecSourceCodeSpecInlineSource({
    this.sourceArchive,
  });

  final TfArg<String>? sourceArchive;

  Map<String, Object?> encode() => {
    if (sourceArchive != null) 'source_archive': sourceArchive!.toTfJson(),
  };
}

/// Typed helper for the `spec.source_code_spec.python_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecPythonSpec {
  const VertexAiReasoningEngineSpecSourceCodeSpecPythonSpec({
    this.entrypointModule,
    this.entrypointObject,
    this.requirementsFile,
    this.version,
  });

  final TfArg<String>? entrypointModule;

  final TfArg<String>? entrypointObject;

  final TfArg<String>? requirementsFile;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (entrypointModule != null)
      'entrypoint_module': entrypointModule!.toTfJson(),
    if (entrypointObject != null)
      'entrypoint_object': entrypointObject!.toTfJson(),
    if (requirementsFile != null)
      'requirements_file': requirementsFile!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_reasoning_engine`.
///
/// ReasoningEngine provides a customizable runtime for models to determine
/// which actions to take and in which order.
///
/// Vertex AI **Reasoning Engine** (Agent Engine) — managed runtime for
/// agent frameworks (`spec` carries package / source / deployment details).
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` lists
/// ReasoningEngine management-fee SKUs (`8A55-0B95-B7DC` CPU Tier 1,
/// `0B45-6103-6EC1` Memory Tier 1; list-price tiers empty after MCP
/// `get_sku_price`). Creating an engine with deployment capacity accrues
/// CPU/Memory management fees while it exists. Too expensive for
/// apply-smoke — factory ships without a quickstart.
///
/// Deep nested `exactly_one_of` groups inside Memory Bank TTL / topic
/// configs are not type-sealed in this Wave (MM notes array-element
/// groups rely on API validation). Enable `aiplatform.googleapis.com`
/// via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiReasoningEngine(
///   localName: 'agent',
///   displayName: TfArg.literal('terradart-agent'),
///   region: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleVertexAiReasoningEngine extends Resource {
  static const String tfType = 'google_vertex_ai_reasoning_engine';

  GoogleVertexAiReasoningEngine({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    VertexAiReasoningEngineEncryptionSpec? encryptionSpec,
    VertexAiReasoningEngineSpec? spec,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiReasoningEngineSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
