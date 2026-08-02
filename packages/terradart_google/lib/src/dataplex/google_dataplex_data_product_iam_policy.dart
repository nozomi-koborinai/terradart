// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_data_product_iam_policy`.
const Set<String> _googleDataplexDataProductIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_data_product_iam_policy`.
///
/// Authoritative IAM policy for a Dataplex data product.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataplexDataProductIamMember] for single-principal grants.
final class GoogleDataplexDataProductIamPolicy extends Resource {
  static const String tfType = 'google_dataplex_data_product_iam_policy';

  GoogleDataplexDataProductIamPolicy({
    required super.localName,
    required TfArg<String> dataProductId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_product_id': dataProductId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexDataProductIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
