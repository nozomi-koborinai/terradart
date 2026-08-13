// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_target_site`.
const Set<String> _googleDiscoveryEngineTargetSiteSensitive = <String>{};

/// Discovery Engine Target Site Indexing enum for `indexing_status`.
enum DiscoveryEngineTargetSiteIndexingStatus implements TerraformEnum {
  pending('PENDING'),
  failed('FAILED'),
  succeeded('SUCCEEDED'),
  deleting('DELETING');

  const DiscoveryEngineTargetSiteIndexingStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Discovery Engine Target Site enum for `type`.
enum DiscoveryEngineTargetSiteType implements TerraformEnum {
  include('INCLUDE'),
  exclude('EXCLUDE');

  const DiscoveryEngineTargetSiteType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_discovery_engine_target_site`.
///
/// TargetSite represents a URI pattern that the users want to confine their
/// search.
///
/// Vertex AI Search **target site** — URI pattern to include or exclude
/// from a `PUBLIC_WEBSITE` data store.
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Data Index
/// `BC7D-6A97-90F8` **$5/GiBy·mo after 10 GiB** (indexing core PAYG
/// `AD21-6FE4-C919` **$5/GiBy·mo**). billing-behavior: an INCLUDE pattern
/// starts crawling / indexing while the target site exists; destroy stops
/// further index growth. **Never** wire into apply-smoke (website crawl /
/// Data Index).
final class GoogleDiscoveryEngineTargetSite extends Resource {
  static const String tfType = 'google_discovery_engine_target_site';

  GoogleDiscoveryEngineTargetSite({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> dataStoreId,
    required TfArg<String> providedUriPattern,
    TfArg<DiscoveryEngineTargetSiteType>? type,
    TfArg<bool>? exactMatch,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'data_store_id': dataStoreId,
           'provided_uri_pattern': providedUriPattern,
           if (type != null) 'type': type,
           if (exactMatch != null) 'exact_match': exactMatch,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineTargetSiteSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `failure_reason` attribute.
  TfRef<List<Map<String, Object?>>> get failureReason =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'failure_reason');

  /// Reference to `generated_uri_pattern` attribute.
  TfRef<String> get generatedUriPattern =>
      TfRef.attribute<String>(this, 'generated_uri_pattern');

  /// Reference to `indexing_status` attribute.
  TfRef<String> get indexingStatus =>
      TfRef.attribute<String>(this, 'indexing_status');

  /// Reference to `root_domain_uri` attribute.
  TfRef<String> get rootDomainUri =>
      TfRef.attribute<String>(this, 'root_domain_uri');

  /// Reference to `site_verification_info` attribute.
  TfRef<List<Map<String, Object?>>> get siteVerificationInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'site_verification_info',
      );

  /// Reference to `target_site_id` attribute.
  TfRef<String> get targetSiteId =>
      TfRef.attribute<String>(this, 'target_site_id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
