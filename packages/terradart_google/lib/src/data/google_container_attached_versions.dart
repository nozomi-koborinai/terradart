// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_attached_versions`.
const Set<String> _googleContainerAttachedVersionsSensitive = <String>{};

/// Factory wrapper for `google_container_attached_versions`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleContainerAttachedVersions extends Data {
  static const String tfType = 'google_container_attached_versions';

  DataGoogleContainerAttachedVersions({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> project,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAttachedVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `valid_versions` attribute.
  TfRef<List<String>> get validVersions =>
      TfRef.attribute<List<String>>(this, 'valid_versions');
}
