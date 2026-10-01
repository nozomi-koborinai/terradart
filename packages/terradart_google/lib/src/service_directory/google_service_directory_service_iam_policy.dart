// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../service_directory/google_service_directory_service.dart'
    show GoogleServiceDirectoryService;

/// Sensitive field paths for `google_service_directory_service_iam_policy`.
const Set<String> _googleServiceDirectoryServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_service_directory_service_iam_policy`.
///
/// Authoritative IAM policy for a Service Directory service.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleServiceDirectoryServiceIamMember] for single-principal grants.
final class GoogleServiceDirectoryServiceIamPolicy extends Resource {
  static const String tfType = 'google_service_directory_service_iam_policy';

  GoogleServiceDirectoryServiceIamPolicy({
    required super.localName,
    required RefTo<GoogleServiceDirectoryService> service,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': service.encodeAs('id'), 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceDirectoryServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceDirectoryServiceIamPolicy>`.
  RefTo<GoogleServiceDirectoryServiceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
