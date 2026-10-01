// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../logging/google_logging_log_view_iam_policy.dart';

/// Sensitive field paths for `google_logging_log_view_iam_policy`.
const Set<String> _googleLoggingLogViewIamPolicySensitive = <String>{};

/// Factory wrapper for `google_logging_log_view_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleLoggingLogViewIamPolicy extends Data {
  static const String tfType = 'google_logging_log_view_iam_policy';

  DataGoogleLoggingLogViewIamPolicy({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? location,
    required TfArg<String> name,
    required TfArg<String> parent,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'location': ?location,
           'name': name,
           'parent': parent,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogViewIamPolicySensitive;

  /// A reference to the `google_logging_log_view_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleLoggingLogViewIamPolicy>`.
  RefTo<GoogleLoggingLogViewIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
