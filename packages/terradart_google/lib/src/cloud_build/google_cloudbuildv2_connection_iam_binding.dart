// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudbuildv2_connection_iam_binding`.
const Set<String> _googleCloudbuildv2ConnectionIamBindingSensitive = <String>{};

/// Factory wrapper for `google_cloudbuildv2_connection_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Build v2 SCM connection.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleCloudbuildv2ConnectionIamMember] for additive grants.
final class GoogleCloudbuildv2ConnectionIamBinding extends Resource {
  static const String tfType = 'google_cloudbuildv2_connection_iam_binding';

  GoogleCloudbuildv2ConnectionIamBinding({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': ?location,
           'role': role,
           'members': members,
           'project': ?project,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudbuildv2ConnectionIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudbuildv2ConnectionIamBinding>`.
  RefTo<GoogleCloudbuildv2ConnectionIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

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
