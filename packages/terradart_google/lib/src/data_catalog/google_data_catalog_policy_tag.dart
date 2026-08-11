// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_policy_tag`.
const Set<String> _googleDataCatalogPolicyTagSensitive = <String>{};

/// Factory wrapper for `google_data_catalog_policy_tag`.
///
/// Denotes one policy tag in a taxonomy.
///
/// Data Catalog **policy tag** under a [GoogleDataCatalogTaxonomy] (legacy
/// Data Catalog API). Pass [taxonomy] as the parent taxonomy resource name
/// (`TfArg.ref(taxonomy.id)`).
///
/// Example:
/// ```dart
/// GoogleDataCatalogPolicyTag(
///   localName: 'email',
///   displayName: TfArg.literal('email'),
///   taxonomy: TfArg.ref(taxonomy.id),
///   description: TfArg.literal('Email addresses'),
/// );
/// ```
final class GoogleDataCatalogPolicyTag extends Resource {
  static const String tfType = 'google_data_catalog_policy_tag';

  GoogleDataCatalogPolicyTag({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> taxonomy,
    TfArg<String>? description,
    TfArg<String>? parentPolicyTag,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'taxonomy': taxonomy,
           if (description != null) 'description': description,
           if (parentPolicyTag != null) 'parent_policy_tag': parentPolicyTag,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataCatalogPolicyTagSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `child_policy_tags` attribute.
  TfRef<List<String>> get childPolicyTags =>
      TfRef.attribute<List<String>>(this, 'child_policy_tags');
}
