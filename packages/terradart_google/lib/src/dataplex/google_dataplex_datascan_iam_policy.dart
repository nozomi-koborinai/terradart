// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_datascan.dart' show GoogleDataplexDatascan;

/// Sensitive field paths for `google_dataplex_datascan_iam_policy`.
const Set<String> _googleDataplexDatascanIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_datascan_iam_policy`.
///
/// Authoritative IAM policy for a Dataplex data scan.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataplexDatascanIamMember] for single-principal grants.
final class GoogleDataplexDatascanIamPolicy extends Resource {
  static const String tfType = 'google_dataplex_datascan_iam_policy';

  GoogleDataplexDatascanIamPolicy(
    super.localName, {
    required RefTo<GoogleDataplexDatascan> dataScan,
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
           'data_scan_id': dataScan.encodeAs('data_scan_id'),
           'policy_data': policyData,
           'location': ?(location ?? dataScan.alsoAs('location')),
           'project': ?(project ?? dataScan.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDatascanIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexDatascanIamPolicy>`.
  RefTo<GoogleDataplexDatascanIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_scan_id` attribute.
  TfRef<String> get dataScanId => TfRef.attribute<String>(this, 'data_scan_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
