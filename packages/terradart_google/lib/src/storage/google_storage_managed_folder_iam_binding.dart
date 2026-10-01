// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../storage/google_storage_managed_folder.dart'
    show GoogleStorageManagedFolder;

/// Sensitive field paths for `google_storage_managed_folder_iam_binding`.
const Set<String> _googleStorageManagedFolderIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_storage_managed_folder_iam_binding` (derived from provider schema).
@immutable
final class StorageManagedFolderIamBindingCondition {
  const StorageManagedFolderIamBindingCondition({
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

/// Factory wrapper for `google_storage_managed_folder_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Storage
/// managed folder.
///
/// Replaces the entire member list for that role on the managed folder.
/// Prefer [GoogleStorageManagedFolderIamMember] when adding one principal
/// without touching existing bindings.
final class GoogleStorageManagedFolderIamBinding extends Resource {
  static const String tfType = 'google_storage_managed_folder_iam_binding';

  GoogleStorageManagedFolderIamBinding({
    required super.localName,
    TfArg<String>? bucket,
    required RefTo<GoogleStorageManagedFolder> managedFolder,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    StorageManagedFolderIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': ?(bucket ?? managedFolder.alsoAs('bucket')),
           'managed_folder': managedFolder.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageManagedFolderIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageManagedFolderIamBinding>`.
  RefTo<GoogleStorageManagedFolderIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `managed_folder` attribute.
  TfRef<String> get managedFolderRef =>
      TfRef.attribute<String>(this, 'managed_folder');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
