// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../folder/google_folder.dart';

/// Sensitive field paths for `google_folder`.
const Set<String> _googleFolderSensitive = <String>{};

/// Factory wrapper for `google_folder`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleFolder extends Data {
  static const String tfType = 'google_folder';

  DataGoogleFolder({
    required super.localName,
    required TfArg<String> folder,
    TfArg<bool>? lookupOrganization,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'folder': folder, 'lookup_organization': ?lookupOrganization},
       );

  @override
  Set<String> get sensitiveFields => _googleFolderSensitive;

  /// A reference to the `google_folder` this data source reads, for
  /// arguments typed `RefTo<GoogleFolder>`.
  RefTo<GoogleFolder> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configured_capabilities` attribute.
  TfRef<List<String>> get configuredCapabilities =>
      TfRef.attribute<List<String>>(this, 'configured_capabilities');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `management_project` attribute.
  TfRef<String> get managementProject =>
      TfRef.attribute<String>(this, 'management_project');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `folder` attribute.
  TfRef<String> get folderRef => TfRef.attribute<String>(this, 'folder');

  /// Reference to `lookup_organization` attribute.
  TfRef<bool> get lookupOrganizationRef =>
      TfRef.attribute<bool>(this, 'lookup_organization');
}
