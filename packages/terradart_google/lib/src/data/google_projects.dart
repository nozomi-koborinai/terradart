// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_projects`.
const Set<String> _googleProjectsSensitive = <String>{};

/// Factory wrapper for `google_projects`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleProjects extends Data {
  static const String tfType = 'google_projects';

  DataGoogleProjects({required super.localName, required TfArg<String> filter})
    : super(terraformType: tfType, argMap: {'filter': filter});

  @override
  Set<String> get sensitiveFields => _googleProjectsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `projects` attribute.
  TfRef<List<Map<String, Object?>>> get projects =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'projects');
}
