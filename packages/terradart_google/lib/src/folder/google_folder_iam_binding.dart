// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../folder/google_folder.dart' show GoogleFolder;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_folder_iam_binding`.
const Set<String> _googleFolderIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_folder_iam_binding` (derived from provider schema).
@immutable
final class FolderIamBindingCondition {
  const FolderIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_folder_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GCP folder.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleFolderIamMember] for additive grants.
final class GoogleFolderIamBinding extends Resource {
  static const String tfType = 'google_folder_iam_binding';

  GoogleFolderIamBinding({
    required super.localName,
    required RefTo<GoogleFolder> folder,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    FolderIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'folder': folder.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFolderIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFolderIamBinding>`.
  RefTo<GoogleFolderIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `folder` attribute.
  TfRef<String> get folderRef => TfRef.attribute<String>(this, 'folder');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
