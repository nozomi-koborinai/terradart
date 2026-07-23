// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_index_endpoint`.
const Set<String> _googleVertexAiIndexEndpointSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_index_endpoint` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointEncryptionSpec {
  const VertexAiIndexEndpointEncryptionSpec({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
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

  final TfArg<List<Object?>>? projectAllowlist;

  final List<
    VertexAiIndexEndpointPrivateServiceConnectConfigPscAutomationConfigs
  >?
  pscAutomationConfigs;

  Map<String, Object?> encode() => {
    'enable_private_service_connect': enablePrivateServiceConnect.toTfJson(),
    if (projectAllowlist != null)
      'project_allowlist': projectAllowlist!.toTfJson(),
    if (pscAutomationConfigs != null)
      'psc_automation_configs': [
        for (final e in pscAutomationConfigs!) e.encode(),
      ],
  };
}

/// Typed helper for the `private_service_connect_config.psc_automation_configs` block of
/// `google_vertex_ai_index_endpoint` (derived from provider schema).
@immutable
final class VertexAiIndexEndpointPrivateServiceConnectConfigPscAutomationConfigs {
  const VertexAiIndexEndpointPrivateServiceConnectConfigPscAutomationConfigs({
    required this.network,
    required this.projectId,
  });

  final TfArg<String> network;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'network': network.toTfJson(),
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
///   localName: 'ie',
///   displayName: TfArg.literal('terradart-ie'),
///   region: TfArg.literal('us-central1'),
///   publicEndpointEnabled: TfArg.literal(true),
/// );
/// ```
final class GoogleVertexAiIndexEndpoint extends Resource {
  static const String tfType = 'google_vertex_ai_index_endpoint';

  GoogleVertexAiIndexEndpoint({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<String>? network,
    TfArg<bool>? publicEndpointEnabled,
    VertexAiIndexEndpointPrivateServiceConnectConfig?
    privateServiceConnectConfig,
    VertexAiIndexEndpointEncryptionSpec? encryptionSpec,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (network != null) 'network': network,
           if (publicEndpointEnabled != null)
             'public_endpoint_enabled': publicEndpointEnabled,
           if (privateServiceConnectConfig != null)
             'private_service_connect_config': TfArg.literal(
               privateServiceConnectConfig.encode(),
             ),
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiIndexEndpointSensitive;

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
