// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../data_catalog/google_data_catalog_entry_group_iam_policy.dart';

/// Sensitive field paths for `google_data_catalog_entry_group_iam_policy`.
const Set<String> _googleDataCatalogEntryGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_data_catalog_entry_group_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataCatalogEntryGroupIamPolicy extends Data {
  static const String tfType = 'google_data_catalog_entry_group_iam_policy';

  DataGoogleDataCatalogEntryGroupIamPolicy({
    required super.localName,
    required TfArg<String> entryGroup,
    TfArg<String>? project,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group': entryGroup,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogEntryGroupIamPolicySensitive;

  /// A reference to the `google_data_catalog_entry_group_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataCatalogEntryGroupIamPolicy>`.
  // ignore: invalid_use_of_internal_member
  RefTo<GoogleDataCatalogEntryGroupIamPolicy> get ref => RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
