// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_repository_iam_binding`.
const Set<String> _googleDataformRepositoryIamBindingSensitive = <String>{};

/// Factory wrapper for `google_dataform_repository_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataform repository.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleDataformRepositoryIamMember] for
/// additive grants.
final class GoogleDataformRepositoryIamBinding extends Resource {
  static const String tfType = 'google_dataform_repository_iam_binding';

  GoogleDataformRepositoryIamBinding({
    required super.localName,
    required TfArg<String> repository,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? region,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository,
           'role': role,
           'members': members,
           'region': ?region,
           'project': ?project,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformRepositoryIamBinding>`.
  RefTo<GoogleDataformRepositoryIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
