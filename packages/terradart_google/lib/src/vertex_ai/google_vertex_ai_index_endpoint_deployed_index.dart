// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_index_endpoint_deployed_index`.
const Set<String> _googleVertexAiIndexEndpointDeployedIndexSensitive =
    <String>{};

/// Typed helper for the `automatic_resources` block of
/// `google_vertex_ai_index_endpoint_deployed_index` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointDeployedIndexAutomaticResources {
  const VertexAiIndexEndpointDeployedIndexAutomaticResources({
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  final TfArg<num>? maxReplicaCount;

  final TfArg<num>? minReplicaCount;

  Map<String, Object?> encode() => {
    if (maxReplicaCount != null)
      'max_replica_count': maxReplicaCount!.toTfJson(),
    if (minReplicaCount != null)
      'min_replica_count': minReplicaCount!.toTfJson(),
  };
}

/// Typed helper for the `dedicated_resources` block of
/// `google_vertex_ai_index_endpoint_deployed_index` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointDeployedIndexDedicatedResources {
  const VertexAiIndexEndpointDeployedIndexDedicatedResources({
    this.maxReplicaCount,
    required this.minReplicaCount,
    required this.machineSpec,
  });

  final TfArg<num>? maxReplicaCount;

  final TfArg<num> minReplicaCount;

  final VertexAiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec
  machineSpec;

  Map<String, Object?> encode() => {
    if (maxReplicaCount != null)
      'max_replica_count': maxReplicaCount!.toTfJson(),
    'min_replica_count': minReplicaCount.toTfJson(),
    'machine_spec': machineSpec.encode(),
  };
}

/// Typed helper for the `dedicated_resources.machine_spec` block of
/// `google_vertex_ai_index_endpoint_deployed_index` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec {
  const VertexAiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec({
    this.machineType,
  });

  final TfArg<String>? machineType;

  Map<String, Object?> encode() => {
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
  };
}

/// Typed helper for the `deployed_index_auth_config` block of
/// `google_vertex_ai_index_endpoint_deployed_index` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointDeployedIndexDeployedIndexAuthConfig {
  const VertexAiIndexEndpointDeployedIndexDeployedIndexAuthConfig({
    this.authProvider,
  });

  final VertexAiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider?
  authProvider;

  Map<String, Object?> encode() => {
    if (authProvider != null) 'auth_provider': authProvider!.encode(),
  };
}

/// Typed helper for the `deployed_index_auth_config.auth_provider` block of
/// `google_vertex_ai_index_endpoint_deployed_index` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider {
  const VertexAiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider({
    this.allowedIssuers,
    this.audiences,
  });

  final TfArg<List<Object?>>? allowedIssuers;

  final TfArg<List<Object?>>? audiences;

  Map<String, Object?> encode() => {
    if (allowedIssuers != null) 'allowed_issuers': allowedIssuers!.toTfJson(),
    if (audiences != null) 'audiences': audiences!.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_index_endpoint_deployed_index`.
///
/// An endpoint indexes are deployed into. An index endpoint can have multiple
/// deployed indexes.
///
/// Vertex AI **deployed index** on an index endpoint — starts Vector
/// Search / Matching Engine **serving capacity**.
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` bills
/// **Vector Search Index Serving** while the deployment exists
/// (us-central1 e2-standard-2 SKU `722D-2FE3-D851` **$0.0938084/h**;
/// n1-standard-16 `EBCE-B4E0-91EF` and larger machine SKUs also listed).
/// Destroy undeploys and stops serving charges. Too expensive for
/// apply-smoke — factories ship without a quickstart.
///
/// Requires [deployedIndexId], parent [indexEndpoint], and [index].
/// Provide [automaticResources] or [dedicatedResources]. Enable
/// `aiplatform.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiIndexEndpointDeployedIndex(
///   localName: 'dep',
///   deployedIndexId: TfArg.literal('terradart_dep'),
///   indexEndpoint: endpoint.nameRef,
///   index: index.nameRef,
///   region: TfArg.literal('us-central1'),
///   automaticResources: VertexAiIndexEndpointDeployedIndexAutomaticResources(
///     minReplicaCount: TfArg.literal(1),
///     maxReplicaCount: TfArg.literal(1),
///   ),
/// );
/// ```
final class GoogleVertexAiIndexEndpointDeployedIndex extends Resource {
  static const String tfType = 'google_vertex_ai_index_endpoint_deployed_index';

  GoogleVertexAiIndexEndpointDeployedIndex({
    required super.localName,
    required TfArg<String> deployedIndexId,
    required TfArg<String> indexEndpoint,
    required TfArg<String> index,
    TfArg<String>? region,
    TfArg<String>? displayName,
    VertexAiIndexEndpointDeployedIndexAutomaticResources? automaticResources,
    VertexAiIndexEndpointDeployedIndexDedicatedResources? dedicatedResources,
    VertexAiIndexEndpointDeployedIndexDeployedIndexAuthConfig?
    deployedIndexAuthConfig,
    TfArg<String>? deploymentGroup,
    TfArg<bool>? enableAccessLogging,
    TfArg<List<String>>? reservedIpRanges,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deployed_index_id': deployedIndexId,
           'index_endpoint': indexEndpoint,
           'index': index,
           if (region != null) 'region': region,
           if (displayName != null) 'display_name': displayName,
           if (automaticResources != null)
             'automatic_resources': TfArg.literal(automaticResources.encode()),
           if (dedicatedResources != null)
             'dedicated_resources': TfArg.literal(dedicatedResources.encode()),
           if (deployedIndexAuthConfig != null)
             'deployed_index_auth_config': TfArg.literal(
               deployedIndexAuthConfig.encode(),
             ),
           if (deploymentGroup != null) 'deployment_group': deploymentGroup,
           if (enableAccessLogging != null)
             'enable_access_logging': enableAccessLogging,
           if (reservedIpRanges != null) 'reserved_ip_ranges': reservedIpRanges,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiIndexEndpointDeployedIndexSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `index_sync_time` attribute.
  TfRef<String> get indexSyncTime =>
      TfRef.attribute<String>(this, 'index_sync_time');

  /// Reference to `private_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get privateEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'private_endpoints');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
