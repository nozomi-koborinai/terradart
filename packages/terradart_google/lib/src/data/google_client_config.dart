// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_client_config`.
const Set<String> _googleClientConfigSensitive = <String>{'access_token'};

/// Factory wrapper for `google_client_config`.
///
/// Use this data source to access the configuration of the Google Cloud
/// provider.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleClientConfig extends Data {
  static const String tfType = 'google_client_config';

  DataGoogleClientConfig({required super.localName})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _googleClientConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_token` attribute.
  TfRef<String> get accessToken =>
      TfRef.attribute<String>(this, 'access_token');

  /// Reference to `default_labels` attribute.
  TfRef<Map<String, String>> get defaultLabels =>
      TfRef.attribute<Map<String, String>>(this, 'default_labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
