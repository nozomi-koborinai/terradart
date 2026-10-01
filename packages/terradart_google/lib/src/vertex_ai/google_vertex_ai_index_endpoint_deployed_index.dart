// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../vertex_ai/google_vertex_ai_index_endpoint.dart'
    show GoogleVertexAiIndexEndpoint;

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
    'max_replica_count': ?maxReplicaCount?.toTfJson(),
    'min_replica_count': ?minReplicaCount?.toTfJson(),
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

  final VertexAiIndexEndpointDeployedIndexMachineSpec machineSpec;

  Map<String, Object?> encode() => {
    'max_replica_count': ?maxReplicaCount?.toTfJson(),
    'min_replica_count': minReplicaCount.toTfJson(),
    'machine_spec': machineSpec.encode(),
  };
}

/// Typed helper for the `dedicated_resources.machine_spec` block of
/// `google_vertex_ai_index_endpoint_deployed_index` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointDeployedIndexMachineSpec {
  const VertexAiIndexEndpointDeployedIndexMachineSpec({this.machineType});

  final TfArg<String>? machineType;

  Map<String, Object?> encode() => {'machine_type': ?machineType?.toTfJson()};
}

/// Typed helper for the `deployed_index_auth_config` block of
/// `google_vertex_ai_index_endpoint_deployed_index` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointDeployedIndexAuthConfig {
  const VertexAiIndexEndpointDeployedIndexAuthConfig({this.authProvider});

  final VertexAiIndexEndpointDeployedIndexAuthProvider? authProvider;

  Map<String, Object?> encode() => {'auth_provider': ?authProvider?.encode()};
}

/// Typed helper for the `deployed_index_auth_config.auth_provider` block of
/// `google_vertex_ai_index_endpoint_deployed_index` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointDeployedIndexAuthProvider {
  const VertexAiIndexEndpointDeployedIndexAuthProvider({
    this.allowedIssuers,
    this.audiences,
  });

  final TfArg<List<String>>? allowedIssuers;

  final TfArg<List<String>>? audiences;

  Map<String, Object?> encode() => {
    'allowed_issuers': ?allowedIssuers?.toTfJson(),
    'audiences': ?audiences?.toTfJson(),
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
    required RefTo<GoogleVertexAiIndexEndpoint> indexEndpoint,
    required TfArg<String> index,
    TfArg<String>? region,
    TfArg<String>? displayName,
    VertexAiIndexEndpointDeployedIndexAutomaticResources? automaticResources,
    VertexAiIndexEndpointDeployedIndexDedicatedResources? dedicatedResources,
    VertexAiIndexEndpointDeployedIndexAuthConfig? deployedIndexAuthConfig,
    TfArg<String>? deploymentGroup,
    TfArg<bool>? enableAccessLogging,
    TfArg<List<String>>? reservedIpRanges,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deployed_index_id': deployedIndexId,
           'index_endpoint': indexEndpoint.encodeAs('name'),
           'index': index,
           'region': ?region,
           'display_name': ?displayName,
           if (automaticResources != null)
             'automatic_resources': TfArg.literal(automaticResources.encode()),
           if (dedicatedResources != null)
             'dedicated_resources': TfArg.literal(dedicatedResources.encode()),
           if (deployedIndexAuthConfig != null)
             'deployed_index_auth_config': TfArg.literal(
               deployedIndexAuthConfig.encode(),
             ),
           'deployment_group': ?deploymentGroup,
           'enable_access_logging': ?enableAccessLogging,
           'reserved_ip_ranges': ?reservedIpRanges,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiIndexEndpointDeployedIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiIndexEndpointDeployedIndex>`.
  RefTo<GoogleVertexAiIndexEndpointDeployedIndex> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deployed_index_id` attribute.
  TfRef<String> get deployedIndexIdRef =>
      TfRef.attribute<String>(this, 'deployed_index_id');

  /// Reference to `deployment_group` attribute.
  TfRef<String> get deploymentGroupRef =>
      TfRef.attribute<String>(this, 'deployment_group');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_access_logging` attribute.
  TfRef<bool> get enableAccessLoggingRef =>
      TfRef.attribute<bool>(this, 'enable_access_logging');

  /// Reference to `index` attribute.
  TfRef<String> get indexRef => TfRef.attribute<String>(this, 'index');

  /// Reference to `index_endpoint` attribute.
  TfRef<String> get indexEndpointRef =>
      TfRef.attribute<String>(this, 'index_endpoint');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `reserved_ip_ranges` attribute.
  TfRef<List<String>> get reservedIpRangesRef =>
      TfRef.attribute<List<String>>(this, 'reserved_ip_ranges');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
