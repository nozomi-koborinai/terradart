// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleDataplexDatascanIamPolicy({
    required super.localName,
    required TfArg<String> dataScanId,
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
           'data_scan_id': dataScanId,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
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
  TfRef<String> get dataScanIdRef =>
      TfRef.attribute<String>(this, 'data_scan_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
