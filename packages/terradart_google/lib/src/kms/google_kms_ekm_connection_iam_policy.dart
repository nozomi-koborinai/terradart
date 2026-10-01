// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_ekm_connection.dart' show GoogleKmsEkmConnection;

/// Sensitive field paths for `google_kms_ekm_connection_iam_policy`.
const Set<String> _googleKmsEkmConnectionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_kms_ekm_connection_iam_policy`.
///
/// Authoritative IAM policy for a Cloud KMS EKM connection.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleKmsEkmConnectionIamMember] for single-principal grants.
final class GoogleKmsEkmConnectionIamPolicy extends Resource {
  static const String tfType = 'google_kms_ekm_connection_iam_policy';

  GoogleKmsEkmConnectionIamPolicy({
    required super.localName,
    required RefTo<GoogleKmsEkmConnection> connection,
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
           'name': connection.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? connection.alsoAs('location')),
           'project': ?(project ?? connection.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsEkmConnectionIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsEkmConnectionIamPolicy>`.
  RefTo<GoogleKmsEkmConnectionIamPolicy> get ref => RefTo.of(this);

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
