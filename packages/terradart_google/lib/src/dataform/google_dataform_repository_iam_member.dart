// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_repository_iam_member`.
const Set<String> _googleDataformRepositoryIamMemberSensitive = <String>{};

/// Factory wrapper for `google_dataform_repository_iam_member`.
///
/// Additive IAM grant of one `role` to one `member` on a Dataform
/// repository.
///
/// Leaves grants made outside Terraform in place — prefer this over
/// [GoogleDataformRepositoryIamBinding] and
/// [GoogleDataformRepositoryIamPolicy] unless you need authoritative
/// updates.
final class GoogleDataformRepositoryIamMember extends Resource {
  static const String tfType = 'google_dataform_repository_iam_member';

  GoogleDataformRepositoryIamMember({
    required super.localName,
    required TfArg<String> repository,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? region,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository,
           'role': role,
           'member': member,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
