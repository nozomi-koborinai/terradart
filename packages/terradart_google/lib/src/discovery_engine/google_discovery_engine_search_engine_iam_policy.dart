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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?location,
           'collection_id': collectionId,
           'engine_id': engineId,
           'policy_data': policyData,
           'project': ?project,
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
  TfRef<String> get collectionIdRef =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineIdRef => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
