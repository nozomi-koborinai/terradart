// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_log_view_iam_binding`.
const Set<String> _googleLoggingLogViewIamBindingSensitive = <String>{};

/// Factory wrapper for `google_logging_log_view_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Logging log
/// view.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleLoggingLogViewIamMember] for additive grants.
final class GoogleLoggingLogViewIamBinding extends Resource {
  static const String tfType = 'google_logging_log_view_iam_binding';

  GoogleLoggingLogViewIamBinding({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? location,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (location != null) 'location': location,
           'name': name,
           'parent': parent,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogViewIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
