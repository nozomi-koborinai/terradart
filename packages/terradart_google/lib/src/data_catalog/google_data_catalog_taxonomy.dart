// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_taxonomy`.
const Set<String> _googleDataCatalogTaxonomySensitive = <String>{};

/// Factory wrapper for `google_data_catalog_taxonomy`.
///
/// A collection of policy tags that classify data along a common axis.
///
/// Data Catalog **taxonomy** — root container for [GoogleDataCatalogPolicyTag]
/// hierarchies (legacy Data Catalog API). Prefer Dataplex Universal Catalog
/// for new work; this factory remains for stacks that still use
/// `google_data_catalog_taxonomy`.
///
/// Enable `datacatalog.googleapis.com` via [GoogleProjectService] before
/// apply. Note: some projects reject Data Catalog writes due to the
/// upstream deprecation (HTTP 400) — synth / validate still cover the
/// factory.
///
/// Example:
/// ```dart
/// GoogleDataCatalogTaxonomy(
///   localName: 'pii',
///   displayName: TfArg.literal('PII taxonomy'),
///   description: TfArg.literal('Policy tags for PII columns'),
///   activatedPolicyTypes: TfArg.literal(['FINE_GRAINED_ACCESS_CONTROL']),
///   region: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleDataCatalogTaxonomy extends Resource {
  static const String tfType = 'google_data_catalog_taxonomy';

  GoogleDataCatalogTaxonomy({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<List<String>>? activatedPolicyTypes,
    TfArg<String>? region,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'description': ?description,
           'activated_policy_types': ?activatedPolicyTypes,
           'region': ?region,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataCatalogTaxonomySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogTaxonomy>`.
  RefTo<GoogleDataCatalogTaxonomy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated_policy_types` attribute.
  TfRef<List<String>> get activatedPolicyTypesRef =>
      TfRef.attribute<List<String>>(this, 'activated_policy_types');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
