// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_entry_group.dart'
    show GoogleDataCatalogEntryGroup;

/// Sensitive field paths for `google_data_catalog_entry_group_iam_policy`.
const Set<String> _googleDataCatalogEntryGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_data_catalog_entry_group_iam_policy`.
///
/// Authoritative IAM policy for an entire Data Catalog entry group.
///
/// Replaces the entry group's whole IAM policy. Prefer
/// [GoogleDataCatalogEntryGroupIamMember] when an additive grant is enough.
final class GoogleDataCatalogEntryGroupIamPolicy extends Resource {
  static const String tfType = 'google_data_catalog_entry_group_iam_policy';

  GoogleDataCatalogEntryGroupIamPolicy(
    super.localName, {
    required RefTo<GoogleDataCatalogEntryGroup> entryGroup,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group': entryGroup.encodeAs('id'),
           'policy_data': policyData,
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogEntryGroupIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogEntryGroupIamPolicy>`.
  RefTo<GoogleDataCatalogEntryGroupIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entry_group` attribute.
  TfRef<String> get entryGroup => TfRef.attribute<String>(this, 'entry_group');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
