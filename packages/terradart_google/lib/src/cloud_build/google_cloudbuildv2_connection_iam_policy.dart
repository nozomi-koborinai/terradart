// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloud_build/google_cloudbuildv2_connection.dart'
    show GoogleCloudbuildv2Connection;

/// Sensitive field paths for `google_cloudbuildv2_connection_iam_policy`.
const Set<String> _googleCloudbuildv2ConnectionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloudbuildv2_connection_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Build v2 SCM connection.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleCloudbuildv2ConnectionIamMember] for single-principal grants.
final class GoogleCloudbuildv2ConnectionIamPolicy extends Resource {
  static const String tfType = 'google_cloudbuildv2_connection_iam_policy';

  GoogleCloudbuildv2ConnectionIamPolicy({
    required super.localName,
    required RefTo<GoogleCloudbuildv2Connection> connection,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': connection.encodeAs('name'),
           'location': ?(location ?? connection.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? connection.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudbuildv2ConnectionIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudbuildv2ConnectionIamPolicy>`.
  RefTo<GoogleCloudbuildv2ConnectionIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
