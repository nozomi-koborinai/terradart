// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../workbench/google_workbench_instance_iam_policy.dart';

/// Sensitive field paths for `google_workbench_instance_iam_policy`.
const Set<String> _googleWorkbenchInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_workbench_instance_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleWorkbenchInstanceIamPolicy extends Data {
  static const String tfType = 'google_workbench_instance_iam_policy';

  DataGoogleWorkbenchInstanceIamPolicy({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> name,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': ?location, 'name': name, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleWorkbenchInstanceIamPolicySensitive;

  /// A reference to the `google_workbench_instance_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleWorkbenchInstanceIamPolicy>`.
  RefTo<GoogleWorkbenchInstanceIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
