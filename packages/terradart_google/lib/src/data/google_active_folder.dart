// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_active_folder`.
const Set<String> _googleActiveFolderSensitive = <String>{};

/// Factory wrapper for `google_active_folder`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleActiveFolder extends Data {
  static const String tfType = 'google_active_folder';

  DataGoogleActiveFolder(
    super.localName, {
    TfArg<String>? apiMethod,
    required TfArg<String> displayName,
    required TfArg<String> parent,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_method': ?apiMethod,
           'display_name': displayName,
           'parent': parent,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleActiveFolderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_method` attribute.
  TfRef<String> get apiMethod => TfRef.attribute<String>(this, 'api_method');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
