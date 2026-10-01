// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../discovery_engine/google_discovery_engine_data_store.dart'
    show GoogleDiscoveryEngineDataStore;

/// Sensitive field paths for `google_discovery_engine_sitemap`.
const Set<String> _googleDiscoveryEngineSitemapSensitive = <String>{};

/// Factory wrapper for `google_discovery_engine_sitemap`.
///
/// Sitemap is a file where you provide information about the pages, videos, and
/// other files on your site, and the relationships between them.
///
/// Vertex AI Search **sitemap** — public sitemap URI on a
/// `PUBLIC_WEBSITE` data store (`create_advanced_site_search: true`).
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Data Index
/// `BC7D-6A97-90F8` **$5/GiBy·mo after 10 GiB** (indexing core PAYG
/// `AD21-6FE4-C919` **$5/GiBy·mo**). billing-behavior: registering a
/// sitemap starts site indexing while the URI is attached; destroy of the
/// sitemap / parent store stops further index growth. **Never** wire into
/// apply-smoke (website crawl / Data Index).
final class GoogleDiscoveryEngineSitemap extends Resource {
  static const String tfType = 'google_discovery_engine_sitemap';

  GoogleDiscoveryEngineSitemap(
    super.localName, {
    required TfArg<String> location,
    required RefTo<GoogleDiscoveryEngineDataStore> dataStoreId,
    TfArg<String>? uri,
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
           'uri': ?uri,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineSitemapSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineSitemap>`.
  RefTo<GoogleDiscoveryEngineSitemap> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `sitemap_id` attribute.
  TfRef<String> get sitemapId => TfRef.attribute<String>(this, 'sitemap_id');

  /// Reference to `data_store_id` attribute.
  TfRef<String> get dataStoreId =>
      TfRef.attribute<String>(this, 'data_store_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
