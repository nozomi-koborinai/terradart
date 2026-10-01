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

  final ApihubCurationApplicationIntegrationEndpointDetails
  applicationIntegrationEndpointDetails;

  Map<String, Object?> encode() => {
    'application_integration_endpoint_details':
        applicationIntegrationEndpointDetails.encode(),
  };
}

/// Typed helper for the `endpoint.application_integration_endpoint_details` block of
/// `google_apihub_curation` (derived from provider schema).
@immutable
final class ApihubCurationApplicationIntegrationEndpointDetails {
  const ApihubCurationApplicationIntegrationEndpointDetails({
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

  GoogleApihubCuration(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> curationId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    required ApihubCurationEndpoint endpoint,
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
           'curation_id': curationId,
           'display_name': displayName,
           'description': ?description,
           'endpoint': TfArg.literal(endpoint.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApihubCurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApihubCuration>`.
  RefTo<GoogleApihubCuration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `curation_id` attribute.
  TfRef<String> get curationId => TfRef.attribute<String>(this, 'curation_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
