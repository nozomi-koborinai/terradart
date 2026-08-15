// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_taxonomy`.
const Set<String> _googleDataCatalogTaxonomySensitive = <String>{};

/// Factory wrapper for `google_data_catalog_taxonomy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataCatalogTaxonomy extends Data {
  static const String tfType = 'google_data_catalog_taxonomy';

  DataGoogleDataCatalogTaxonomy({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? project,
    required TfArg<String> region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (project != null) 'project': project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataCatalogTaxonomySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated_policy_types` attribute.
  TfRef<List<String>> get activatedPolicyTypes =>
      TfRef.attribute<List<String>>(this, 'activated_policy_types');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
