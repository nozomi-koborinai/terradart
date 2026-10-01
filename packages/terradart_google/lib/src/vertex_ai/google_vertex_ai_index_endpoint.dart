// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_index_endpoint`.
const Set<String> _googleVertexAiIndexEndpointSensitive = <String>{};

/// At most one of `network`, `private_service_connect_config` on `google_vertex_ai_index_endpoint`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.network(...)`.
sealed class VertexAiIndexEndpointConnectivity {
  const VertexAiIndexEndpointConnectivity();

  /// Sets `network`.
  const factory VertexAiIndexEndpointConnectivity.network(
    RefTo<GoogleComputeNetwork> network,
  ) = VertexAiIndexEndpointConnectivityNetwork;

  /// Sets `private_service_connect_config`.
  const factory VertexAiIndexEndpointConnectivity.privateServiceConnectConfig(
    VertexAiIndexEndpointPrivateServiceConnectConfig
    privateServiceConnectConfig,
  ) = VertexAiIndexEndpointConnectivityPrivateServiceConnectConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VertexAiIndexEndpointConnectivity.network] choice: sets `network`.
final class VertexAiIndexEndpointConnectivityNetwork
    extends VertexAiIndexEndpointConnectivity {
  const VertexAiIndexEndpointConnectivityNetwork(this.network);

  final RefTo<GoogleComputeNetwork> network;

  @override
  String get blockKey => 'network';

  @override
  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'network': network.encodeAs('id')};
}

/// The [VertexAiIndexEndpointConnectivity.privateServiceConnectConfig] choice: sets `private_service_connect_config`.
final class VertexAiIndexEndpointConnectivityPrivateServiceConnectConfig
    extends VertexAiIndexEndpointConnectivity {
  const VertexAiIndexEndpointConnectivityPrivateServiceConnectConfig(
    this.privateServiceConnectConfig,
  );

  final VertexAiIndexEndpointPrivateServiceConnectConfig
  privateServiceConnectConfig;

  @override
  String get blockKey => 'private_service_connect_config';

  @override
  Map<String, Object?> encode() => {
    'private_service_connect_config': privateServiceConnectConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'private_service_connect_config': TfArg.literal(
      privateServiceConnectConfig.encode(),
    ),
  };
}

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_index_endpoint` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointEncryptionSpec {
  const VertexAiIndexEndpointEncryptionSpec({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `private_service_connect_config` block of
/// `google_vertex_ai_index_endpoint` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointPrivateServiceConnectConfig {
  const VertexAiIndexEndpointPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlist,
    this.pscAutomationConfigs,
  });

  final TfArg<bool> enablePrivateServiceConnect;

  final TfArg<List<String>>? projectAllowlist;

  final List<VertexAiIndexEndpointPscAutomationConfigs>? pscAutomationConfigs;

  Map<String, Object?> encode() => {
    'enable_private_service_connect': enablePrivateServiceConnect.toTfJson(),
    'project_allowlist': ?projectAllowlist?.toTfJson(),
    if (pscAutomationConfigs != null)
      'psc_automation_configs': [
        for (final e in pscAutomationConfigs!) e.encode(),
      ],
  };
}

/// Typed helper for the `private_service_connect_config.psc_automation_configs` block of
/// `google_vertex_ai_index_endpoint` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointPscAutomationConfigs {
  const VertexAiIndexEndpointPscAutomationConfigs({
    required this.network,
    required this.projectId,
  });

  final RefTo<GoogleComputeNetwork> network;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_index_endpoint`.
///
/// An endpoint indexes are deployed into. An index endpoint can have multiple
/// deployed indexes.
///
/// Vertex AI **index endpoint** — a Matching Engine / Vector Search
/// endpoint that can host deployed indexes.
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` has **no
/// endpoint-shell SKU** after MCP `list_skus` (keyword `Endpoint` → 0).
/// Serving capacity bills only when an index is deployed (see
/// [GoogleVertexAiIndexEndpointDeployedIndex]). Creating the endpoint
/// alone does not start node-hour charges.
///
/// Deferred with the never_apply deployed-index Wave (no apply-smoke
/// quickstart — PSC/VPC scaffolding plus a deployed index would bill).
/// Enable `aiplatform.googleapis.com` via [GoogleProjectService] before
/// apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiIndexEndpoint(
///   'ie',
///   displayName: TfArg.literal('terradart-ie'),
///   region: TfArg.literal('us-central1'),
///   publicEndpointEnabled: TfArg.literal(true),
/// );
/// ```
final class GoogleVertexAiIndexEndpoint extends Resource {
  static const String tfType = 'google_vertex_ai_index_endpoint';

  GoogleVertexAiIndexEndpoint(
    super.localName, {
    required TfArg<String> displayName,
    TfArg<String>? region,
    TfArg<String>? description,
    VertexAiIndexEndpointConnectivity? connectivity,
    TfArg<bool>? publicEndpointEnabled,
    VertexAiIndexEndpointEncryptionSpec? encryptionSpec,
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
           'display_name': displayName,
           'region': ?region,
           'description': ?description,
           ...?connectivity?.argMap,
           'public_endpoint_enabled': ?publicEndpointEnabled,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiIndexEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiIndexEndpoint>`.
  RefTo<GoogleVertexAiIndexEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `public_endpoint_domain_name` attribute.
  TfRef<String> get publicEndpointDomainName =>
      TfRef.attribute<String>(this, 'public_endpoint_domain_name');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `public_endpoint_enabled` attribute.
  TfRef<bool> get publicEndpointEnabled =>
      TfRef.attribute<bool>(this, 'public_endpoint_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
