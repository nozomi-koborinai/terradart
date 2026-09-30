// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudfunctions2_function_iam_binding`.
const Set<String> _googleCloudfunctions2FunctionIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_cloudfunctions2_function_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Functions (2nd gen)
/// function.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleCloudfunctions2FunctionIamMember] for additive grants.
final class GoogleCloudfunctions2FunctionIamBinding extends Resource {
  static const String tfType = 'google_cloudfunctions2_function_iam_binding';

  GoogleCloudfunctions2FunctionIamBinding({
    required super.localName,
    required TfArg<String> cloudFunction,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_function': cloudFunction,
           'role': role,
           'members': members,
           'condition': ?condition,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctions2FunctionIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudfunctions2FunctionIamBinding>`.
  RefTo<GoogleCloudfunctions2FunctionIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `cloud_function` attribute.
  TfRef<String> get cloudFunctionRef =>
      TfRef.attribute<String>(this, 'cloud_function');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
