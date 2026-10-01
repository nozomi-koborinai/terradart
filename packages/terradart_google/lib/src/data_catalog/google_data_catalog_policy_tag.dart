// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_taxonomy.dart'
    show GoogleDataCatalogTaxonomy;

/// Sensitive field paths for `google_data_catalog_policy_tag`.
const Set<String> _googleDataCatalogPolicyTagSensitive = <String>{};

/// Factory wrapper for `google_data_catalog_policy_tag`.
///
/// Denotes one policy tag in a taxonomy.
///
/// Data Catalog **policy tag** under a [GoogleDataCatalogTaxonomy] (legacy
/// Data Catalog API). Pass [taxonomy] as the parent taxonomy resource name
/// (`taxonomy.id`).
///
/// Example:
/// ```dart
/// GoogleDataCatalogPolicyTag(
///   'email',
///   displayName: TfArg.literal('email'),
///   taxonomy: taxonomy.ref,
///   description: TfArg.literal('Email addresses'),
/// );
/// ```
final class GoogleDataCatalogPolicyTag extends Resource {
  static const String tfType = 'google_data_catalog_policy_tag';

  GoogleDataCatalogPolicyTag(
    super.localName, {
    required TfArg<String> displayName,
    required RefTo<GoogleDataCatalogTaxonomy> taxonomy,
    TfArg<String>? description,
    TfArg<String>? parentPolicyTag,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'taxonomy': taxonomy.encodeAs('id'),
           'description': ?description,
           'parent_policy_tag': ?parentPolicyTag,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataCatalogPolicyTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogPolicyTag>`.
  RefTo<GoogleDataCatalogPolicyTag> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `child_policy_tags` attribute.
  TfRef<List<String>> get childPolicyTags =>
      TfRef.attribute<List<String>>(this, 'child_policy_tags');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent_policy_tag` attribute.
  TfRef<String> get parentPolicyTag =>
      TfRef.attribute<String>(this, 'parent_policy_tag');

  /// Reference to `taxonomy` attribute.
  TfRef<String> get taxonomy => TfRef.attribute<String>(this, 'taxonomy');
}
