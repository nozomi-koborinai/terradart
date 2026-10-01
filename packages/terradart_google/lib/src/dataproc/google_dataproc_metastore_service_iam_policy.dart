// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../dataproc/google_dataproc_metastore_service.dart'
    show GoogleDataprocMetastoreService;

/// Sensitive field paths for `google_dataproc_metastore_service_iam_policy`.
const Set<String> _googleDataprocMetastoreServiceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_metastore_service_iam_policy`.
///
/// Authoritative IAM policy for a Dataproc Metastore service.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataprocMetastoreServiceIamMember] for single-principal grants.
final class GoogleDataprocMetastoreServiceIamPolicy extends Resource {
  static const String tfType = 'google_dataproc_metastore_service_iam_policy';

  GoogleDataprocMetastoreServiceIamPolicy({
    required super.localName,
    required RefTo<GoogleDataprocMetastoreService> service,
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
           'service_id': service.encodeAs('service_id'),
           'policy_data': policyData,
           'location': ?(location ?? service.alsoAs('location')),
           'project': ?(project ?? service.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreServiceIamPolicy>`.
  RefTo<GoogleDataprocMetastoreServiceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceIdRef => TfRef.attribute<String>(this, 'service_id');
}
