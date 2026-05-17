// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudfunctions2_function_iam_member`.
const Set<String> _googleCloudfunctions2FunctionIamMemberSensitive = <String>{};

/// Factory wrapper for `google_cloudfunctions2_function_iam_member`.
///
/// Adds a single IAM `role` -> `member` binding on one Cloud Functions
/// Gen 2 function. The `cloudFunction` slot is the function's
/// `name` attribute (or `id` -- they coincide for this resource), not
/// the short local name. For the typical public-invoker use case use
/// `'roles/cloudfunctions.invoker'` plus `'allUsers'`.
///
/// Note: Cloud Functions Gen 2 dispatches at runtime through the
/// underlying Cloud Run service, so the **invoker IAM grant must be on
/// the Cloud Run service**, not on the function. Use this resource for
/// admin-level roles (e.g. `roles/cloudfunctions.viewer`) and pair with
/// `google_cloud_run_service_iam_member` for invocation.
final class GoogleCloudfunctions2FunctionIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_cloudfunctions2_function_iam_member';

  GoogleCloudfunctions2FunctionIamMember({
    required super.localName,
    required TfArg<String> cloudFunction,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'cloud_function': cloudFunction,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleCloudfunctions2FunctionIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
