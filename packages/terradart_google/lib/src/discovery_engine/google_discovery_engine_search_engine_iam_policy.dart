// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleDiscoveryEngineSearchEngineIamPolicy({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> collectionId,
    required TfArg<String> engineId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'collection_id': collectionId,
           'engine_id': engineId,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineSearchEngineIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
