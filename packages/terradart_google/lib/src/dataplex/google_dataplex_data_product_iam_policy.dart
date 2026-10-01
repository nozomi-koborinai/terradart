// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_data_product.dart'
    show GoogleDataplexDataProduct;

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
    required RefTo<GoogleDataplexDataProduct> dataProduct,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_product_id': dataProduct.encodeAs('data_product_id'),
           'policy_data': policyData,
           'location': ?(location ?? dataProduct.alsoAs('location')),
           'project': ?(project ?? dataProduct.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexDataProductIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexDataProductIamPolicy>`.
  RefTo<GoogleDataplexDataProductIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_product_id` attribute.
  TfRef<String> get dataProductIdRef =>
      TfRef.attribute<String>(this, 'data_product_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
