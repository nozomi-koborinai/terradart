// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dataproc/google_dataproc_metastore_federation_iam_policy.dart';

/// Sensitive field paths for `google_dataproc_metastore_federation_iam_policy`.
const Set<String> _googleDataprocMetastoreFederationIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_metastore_federation_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataprocMetastoreFederationIamPolicy extends Data {
  static const String tfType =
      'google_dataproc_metastore_federation_iam_policy';

  DataGoogleDataprocMetastoreFederationIamPolicy(
    super.localName, {
    required TfArg<String> federationId,
    TfArg<String>? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'federation_id': federationId,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreFederationIamPolicySensitive;

  /// A reference to the `google_dataproc_metastore_federation_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataprocMetastoreFederationIamPolicy>`.
  RefTo<GoogleDataprocMetastoreFederationIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `federation_id` attribute.
  TfRef<String> get federationId =>
      TfRef.attribute<String>(this, 'federation_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
