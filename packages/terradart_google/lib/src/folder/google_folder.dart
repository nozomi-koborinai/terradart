// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_folder`.
const Set<String> _googleFolderSensitive = <String>{};

/// Factory wrapper for `google_folder`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleFolder extends Resource {
  static const String tfType = 'google_folder';

  GoogleFolder({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    required TfArg<String> displayName,
    required TfArg<String> parent,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           'display_name': displayName,
           'parent': parent,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFolderSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configured_capabilities` attribute.
  TfRef<List<String>> get configuredCapabilities =>
      TfRef.attribute<List<String>>(this, 'configured_capabilities');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `management_project` attribute.
  TfRef<String> get managementProject =>
      TfRef.attribute<String>(this, 'management_project');
}
