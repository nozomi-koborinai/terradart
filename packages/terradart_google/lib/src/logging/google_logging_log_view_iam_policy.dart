// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../logging/google_logging_log_view.dart' show GoogleLoggingLogView;

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
    TfArg<String>? bucket,
    TfArg<String>? location,
    required RefTo<GoogleLoggingLogView> logView,
    TfArg<String>? parent,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': ?(bucket ?? logView.alsoAs('bucket')),
           'location': ?(location ?? logView.alsoAs('location')),
           'name': logView.encodeAs('name'),
           'parent': ?(parent ?? logView.alsoAs('parent')),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogViewIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingLogViewIamPolicy>`.
  RefTo<GoogleLoggingLogViewIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
