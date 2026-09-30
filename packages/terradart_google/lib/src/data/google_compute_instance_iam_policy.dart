// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_instance_iam_policy.dart';

/// Sensitive field paths for `google_compute_instance_iam_policy`.
const Set<String> _googleComputeInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_instance_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeInstanceIamPolicy extends Data {
  static const String tfType = 'google_compute_instance_iam_policy';

  DataGoogleComputeInstanceIamPolicy({
    required super.localName,
    required TfArg<String> instanceName,
    TfArg<String>? project,
    TfArg<String>? zone,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'project': ?project,
           'zone': ?zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceIamPolicySensitive;

  /// A reference to the `google_compute_instance_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeInstanceIamPolicy>`.
  RefTo<GoogleComputeInstanceIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceNameRef =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');
}
