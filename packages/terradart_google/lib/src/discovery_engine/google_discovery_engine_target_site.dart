// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../discovery_engine/google_discovery_engine_data_store.dart'
    show GoogleDiscoveryEngineDataStore;

/// Sensitive field paths for `google_discovery_engine_target_site`.
const Set<String> _googleDiscoveryEngineTargetSiteSensitive = <String>{};

/// Discovery Engine Target Site Indexing enum for `indexing_status`.
extension type const DiscoveryEngineTargetSiteIndexingStatus._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineTargetSiteIndexingStatus.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineTargetSiteIndexingStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineTargetSiteIndexingStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const pending = DiscoveryEngineTargetSiteIndexingStatus._(
    TfArgLiteral('PENDING'),
  );
  static const failed = DiscoveryEngineTargetSiteIndexingStatus._(
    TfArgLiteral('FAILED'),
  );
  static const succeeded = DiscoveryEngineTargetSiteIndexingStatus._(
    TfArgLiteral('SUCCEEDED'),
  );
  static const deleting = DiscoveryEngineTargetSiteIndexingStatus._(
    TfArgLiteral('DELETING'),
  );

  static const List<DiscoveryEngineTargetSiteIndexingStatus> values = [
    pending,
    failed,
    succeeded,
    deleting,
  ];
}

/// Discovery Engine Target Site enum for `type`.
extension type const DiscoveryEngineTargetSiteType._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineTargetSiteType.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineTargetSiteType.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineTargetSiteType.arg(TfArg<String> arg) : this._(arg);

  static const include = DiscoveryEngineTargetSiteType._(
    TfArgLiteral('INCLUDE'),
  );
  static const exclude = DiscoveryEngineTargetSiteType._(
    TfArgLiteral('EXCLUDE'),
  );

  static const List<DiscoveryEngineTargetSiteType> values = [include, exclude];
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

  GoogleDiscoveryEngineTargetSite(
    super.localName, {
    required TfArg<String> location,
    required RefTo<GoogleDiscoveryEngineDataStore> dataStoreId,
    required TfArg<String> providedUriPattern,
    DiscoveryEngineTargetSiteType? type,
    TfArg<bool>? exactMatch,
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
           'data_store_id': dataStoreId.encodeAs('data_store_id'),
           'provided_uri_pattern': providedUriPattern,
           'type': ?type,
           'exact_match': ?exactMatch,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineTargetSiteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineTargetSite>`.
  RefTo<GoogleDiscoveryEngineTargetSite> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `data_store_id` attribute.
  TfRef<String> get dataStoreId =>
      TfRef.attribute<String>(this, 'data_store_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `exact_match` attribute.
  TfRef<bool> get exactMatch => TfRef.attribute<bool>(this, 'exact_match');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `provided_uri_pattern` attribute.
  TfRef<String> get providedUriPattern =>
      TfRef.attribute<String>(this, 'provided_uri_pattern');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
