// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apihub_curation`.
const Set<String> _googleApihubCurationSensitive = <String>{};

/// Typed helper for the `endpoint` block of
/// `google_apihub_curation` (derived from provider schema).
@immutable
final class ApihubCurationEndpoint {
  const ApihubCurationEndpoint({
    required this.applicationIntegrationEndpointDetails,
  });

  final ApihubCurationEndpointApplicationIntegrationEndpointDetails
  applicationIntegrationEndpointDetails;

  Map<String, Object?> encode() => {
    'application_integration_endpoint_details':
        applicationIntegrationEndpointDetails.encode(),
  };
}

/// Typed helper for the `endpoint.application_integration_endpoint_details` block of
/// `google_apihub_curation` (derived from provider schema).
@immutable
final class ApihubCurationEndpointApplicationIntegrationEndpointDetails {
  const ApihubCurationEndpointApplicationIntegrationEndpointDetails({
    required this.triggerId,
    required this.uri,
  });

  final TfArg<String> triggerId;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'trigger_id': triggerId.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Factory wrapper for `google_apihub_curation`.
///
/// Description
///
/// API Hub **curation** — Application Integration endpoint that
/// curates / filters API metadata ingested into the hub.
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` API Hub → empty; Apigee `1C2D-8C78-EC58`
/// `list_skus` keyword Hub → 0). billing-behavior: curation config
/// metadata — no existence/hourly charge observed. Requires API Hub
/// host scaffolding ([GoogleApihubApiHubInstance] is never_apply);
/// not standalone-project applyable on `terradart-validate`. **Never**
/// wire into apply-smoke.
final class GoogleApihubCuration extends Resource {
  static const String tfType = 'google_apihub_curation';

  GoogleApihubCuration({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> curationId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    required ApihubCurationEndpoint endpoint,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'curation_id': curationId,
           'display_name': displayName,
           if (description != null) 'description': description,
           'endpoint': TfArg.literal(endpoint.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApihubCurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_execution_error_code` attribute.
  TfRef<String> get lastExecutionErrorCode =>
      TfRef.attribute<String>(this, 'last_execution_error_code');

  /// Reference to `last_execution_error_message` attribute.
  TfRef<String> get lastExecutionErrorMessage =>
      TfRef.attribute<String>(this, 'last_execution_error_message');

  /// Reference to `last_execution_state` attribute.
  TfRef<String> get lastExecutionState =>
      TfRef.attribute<String>(this, 'last_execution_state');

  /// Reference to `plugin_instance_actions` attribute.
  TfRef<List<Map<String, Object?>>> get pluginInstanceActions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'plugin_instance_actions',
      );

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
