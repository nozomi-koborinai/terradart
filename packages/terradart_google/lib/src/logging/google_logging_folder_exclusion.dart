// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_folder_exclusion`.
const Set<String> _googleLoggingFolderExclusionSensitive = <String>{};

/// Factory wrapper for `google_logging_folder_exclusion`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleLoggingFolderExclusion extends Resource {
  static const String tfType = 'google_logging_folder_exclusion';

  GoogleLoggingFolderExclusion({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    required TfArg<String> filter,
    required TfArg<String> folder,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'disabled': ?disabled,
           'filter': filter,
           'folder': folder,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingFolderExclusionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingFolderExclusion>`.
  RefTo<GoogleLoggingFolderExclusion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');
}
