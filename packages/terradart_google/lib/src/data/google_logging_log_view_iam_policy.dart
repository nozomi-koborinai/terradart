// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (location != null) 'location': location,
           'name': name,
           'parent': parent,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogViewIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
