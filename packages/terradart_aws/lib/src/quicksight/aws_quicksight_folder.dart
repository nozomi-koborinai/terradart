// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_folder`.
const Set<String> _awsQuicksightFolderSensitive = <String>{};

/// Typed helper for the `permissions` block of
/// `aws_quicksight_folder` (derived from provider schema).
@immutable
final class QuicksightFolderPermissions {
  const QuicksightFolderPermissions({
    required this.actions,
    required this.principal,
  });

  final TfArg<List<Object?>> actions;

  final TfArg<String> principal;

  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'principal': principal.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_folder`.
final class AwsQuicksightFolder extends Resource {
  static const String tfType = 'aws_quicksight_folder';

  AwsQuicksightFolder({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> folderId,
    TfArg<String>? folderType,
    TfArg<String>? name,
    TfArg<String>? parentFolderArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<QuicksightFolderPermissions>? permissions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'folder_id': folderId,
           if (folderType != null) 'folder_type': folderType,
           if (name != null) 'name': name,
           if (parentFolderArn != null) 'parent_folder_arn': parentFolderArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (permissions != null)
             'permissions': TfArg.literal([
               for (final e in permissions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightFolderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `folder_path` attribute.
  TfRef<List<String>> get folderPath =>
      TfRef.attribute<List<String>>(this, 'folder_path');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');
}
