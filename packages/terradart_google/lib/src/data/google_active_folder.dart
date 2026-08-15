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

  DataGoogleActiveFolder({
    required super.localName,
    TfArg<String>? apiMethod,
    required TfArg<String> displayName,
    required TfArg<String> parent,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (apiMethod != null) 'api_method': apiMethod,
           'display_name': displayName,
           'parent': parent,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleActiveFolderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
