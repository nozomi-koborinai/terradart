// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_data_product_iam_binding`.
const Set<String> _googleDataplexDataProductIamBindingSensitive = <String>{};

/// Factory wrapper for `google_dataplex_data_product_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex data product.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexDataProductIamMember] for additive grants.
final class GoogleDataplexDataProductIamBinding extends Resource {
  static const String tfType = 'google_dataplex_data_product_iam_binding';

  GoogleDataplexDataProductIamBinding({
    required super.localName,
    required TfArg<String> dataProductId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_product_id': dataProductId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexDataProductIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
