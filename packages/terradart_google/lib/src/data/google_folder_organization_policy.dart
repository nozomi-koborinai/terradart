// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../folder/google_folder_organization_policy.dart';

/// Sensitive field paths for `google_folder_organization_policy`.
const Set<String> _googleFolderOrganizationPolicySensitive = <String>{};

/// Factory wrapper for `google_folder_organization_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleFolderOrganizationPolicy extends Data {
  static const String tfType = 'google_folder_organization_policy';

  DataGoogleFolderOrganizationPolicy({
    required super.localName,
    required TfArg<String> constraint,
    required TfArg<String> folder,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'constraint': constraint, 'folder': folder},
       );

  @override
  Set<String> get sensitiveFields => _googleFolderOrganizationPolicySensitive;

  /// A reference to the `google_folder_organization_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleFolderOrganizationPolicy>`.
  RefTo<GoogleFolderOrganizationPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `boolean_policy` attribute.
  TfRef<List<Map<String, Object?>>> get booleanPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'boolean_policy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `list_policy` attribute.
  TfRef<List<Map<String, Object?>>> get listPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'list_policy');

  /// Reference to `restore_policy` attribute.
  TfRef<List<Map<String, Object?>>> get restorePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'restore_policy');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `constraint` attribute.
  TfRef<String> get constraintRef =>
      TfRef.attribute<String>(this, 'constraint');

  /// Reference to `folder` attribute.
  TfRef<String> get folderRef => TfRef.attribute<String>(this, 'folder');
}
