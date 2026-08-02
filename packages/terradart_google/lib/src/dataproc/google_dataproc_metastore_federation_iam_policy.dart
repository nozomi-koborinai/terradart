// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_federation_iam_policy`.
const Set<String> _googleDataprocMetastoreFederationIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_metastore_federation_iam_policy`.
///
/// Authoritative IAM policy for a Dataproc Metastore federation.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataprocMetastoreFederationIamMember] for single-principal grants.
final class GoogleDataprocMetastoreFederationIamPolicy extends Resource {
  static const String tfType =
      'google_dataproc_metastore_federation_iam_policy';

  GoogleDataprocMetastoreFederationIamPolicy({
    required super.localName,
    required TfArg<String> federationId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'federation_id': federationId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreFederationIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
