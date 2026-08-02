// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_log_view_iam_policy`.
const Set<String> _googleLoggingLogViewIamPolicySensitive = <String>{};

/// Factory wrapper for `google_logging_log_view_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Logging log view.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleLoggingLogViewIamMember] for single-principal grants.
final class GoogleLoggingLogViewIamPolicy extends Resource {
  static const String tfType = 'google_logging_log_view_iam_policy';

  GoogleLoggingLogViewIamPolicy({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? location,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (location != null) 'location': location,
           'name': name,
           'parent': parent,
           'policy_data': policyData,
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
}
