// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../dataproc/google_dataproc_metastore_federation.dart'
    show GoogleDataprocMetastoreFederation;

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

  GoogleDataprocMetastoreFederationIamPolicy(
    super.localName, {
    required RefTo<GoogleDataprocMetastoreFederation> federation,
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
           'federation_id': federation.encodeAs('federation_id'),
           'policy_data': policyData,
           'location': ?(location ?? federation.alsoAs('location')),
           'project': ?(project ?? federation.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreFederationIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreFederationIamPolicy>`.
  RefTo<GoogleDataprocMetastoreFederationIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `federation_id` attribute.
  TfRef<String> get federationId =>
      TfRef.attribute<String>(this, 'federation_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
