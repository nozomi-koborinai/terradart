// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../folder/google_folder.dart' show GoogleFolder;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_folder_iam_member`.
const Set<String> _googleFolderIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_folder_iam_member` (derived from provider schema).
@immutable
final class FolderIamMemberCondition {
  const FolderIamMemberCondition({
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

/// Factory wrapper for `google_folder_iam_member`.
final class GoogleFolderIamMember extends Resource {
  static const String tfType = 'google_folder_iam_member';

  GoogleFolderIamMember(
    super.localName, {
    required RefTo<GoogleFolder> folder,
    required TfArg<String> role,
    required IamPrincipal member,
    FolderIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'folder': folder.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFolderIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFolderIamMember>`.
  RefTo<GoogleFolderIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
