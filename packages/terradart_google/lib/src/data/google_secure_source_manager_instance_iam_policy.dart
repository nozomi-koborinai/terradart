// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../secure/google_secure_source_manager_instance_iam_policy.dart';

/// Sensitive field paths for `google_secure_source_manager_instance_iam_policy`.
const Set<String> _googleSecureSourceManagerInstanceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_secure_source_manager_instance_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSecureSourceManagerInstanceIamPolicy extends Data {
  static const String tfType =
      'google_secure_source_manager_instance_iam_policy';

  DataGoogleSecureSourceManagerInstanceIamPolicy({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerInstanceIamPolicySensitive;

  /// A reference to the `google_secure_source_manager_instance_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleSecureSourceManagerInstanceIamPolicy>`.
  RefTo<GoogleSecureSourceManagerInstanceIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
