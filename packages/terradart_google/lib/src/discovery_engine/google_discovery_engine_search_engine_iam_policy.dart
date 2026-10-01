// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../discovery_engine/google_discovery_engine_search_engine.dart'
    show GoogleDiscoveryEngineSearchEngine;

/// Sensitive field paths for `google_discovery_engine_search_engine_iam_policy`.
const Set<String> _googleDiscoveryEngineSearchEngineIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_discovery_engine_search_engine_iam_policy`.
///
/// Authoritative IAM policy for a Vertex AI Search engine.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDiscoveryEngineSearchEngineIamMember] for single-principal grants.
final class GoogleDiscoveryEngineSearchEngineIamPolicy extends Resource {
  static const String tfType =
      'google_discovery_engine_search_engine_iam_policy';

  GoogleDiscoveryEngineSearchEngineIamPolicy(
    super.localName, {
    TfArg<String>? location,
    TfArg<String>? collectionId,
    required RefTo<GoogleDiscoveryEngineSearchEngine> engine,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?(location ?? engine.alsoAs('location')),
           'collection_id': ?(collectionId ?? engine.alsoAs('collection_id')),
           'engine_id': engine.encodeAs('engine_id'),
           'policy_data': policyData,
           'project': ?(project ?? engine.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineSearchEngineIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineSearchEngineIamPolicy>`.
  RefTo<GoogleDiscoveryEngineSearchEngineIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineId => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
