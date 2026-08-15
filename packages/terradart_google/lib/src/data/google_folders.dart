// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_folders`.
const Set<String> _googleFoldersSensitive = <String>{};

/// Factory wrapper for `google_folders`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleFolders extends Data {
  static const String tfType = 'google_folders';

  DataGoogleFolders({required super.localName, required TfArg<String> parentId})
    : super(terraformType: tfType, argMap: {'parent_id': parentId});

  @override
  Set<String> get sensitiveFields => _googleFoldersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `folders` attribute.
  TfRef<List<Map<String, Object?>>> get folders =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'folders');
}
