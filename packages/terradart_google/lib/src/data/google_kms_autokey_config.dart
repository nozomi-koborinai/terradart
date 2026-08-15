// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_autokey_config`.
const Set<String> _googleKmsAutokeyConfigSensitive = <String>{};

/// Factory wrapper for `google_kms_autokey_config`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsAutokeyConfig extends Data {
  static const String tfType = 'google_kms_autokey_config';

  DataGoogleKmsAutokeyConfig({
    required super.localName,
    required TfArg<String> folder,
  }) : super(terraformType: tfType, argMap: {'folder': folder});

  @override
  Set<String> get sensitiveFields => _googleKmsAutokeyConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `key_project` attribute.
  TfRef<String> get keyProject => TfRef.attribute<String>(this, 'key_project');

  /// Reference to `key_project_resolution_mode` attribute.
  TfRef<String> get keyProjectResolutionMode =>
      TfRef.attribute<String>(this, 'key_project_resolution_mode');
}
