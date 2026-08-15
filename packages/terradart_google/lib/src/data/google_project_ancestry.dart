// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_ancestry`.
const Set<String> _googleProjectAncestrySensitive = <String>{};

/// Factory wrapper for `google_project_ancestry`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleProjectAncestry extends Data {
  static const String tfType = 'google_project_ancestry';

  DataGoogleProjectAncestry({required super.localName, TfArg<String>? project})
    : super(
        terraformType: tfType,
        argMap: {if (project != null) 'project': project},
      );

  @override
  Set<String> get sensitiveFields => _googleProjectAncestrySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ancestors` attribute.
  TfRef<List<Map<String, Object?>>> get ancestors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ancestors');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `parent_id` attribute.
  TfRef<String> get parentId => TfRef.attribute<String>(this, 'parent_id');

  /// Reference to `parent_type` attribute.
  TfRef<String> get parentType => TfRef.attribute<String>(this, 'parent_type');
}
