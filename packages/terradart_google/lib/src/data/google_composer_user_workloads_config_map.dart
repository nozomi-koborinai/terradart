// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_composer_user_workloads_config_map`.
const Set<String> _googleComposerUserWorkloadsConfigMapSensitive = <String>{};

/// Factory wrapper for `google_composer_user_workloads_config_map`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComposerUserWorkloadsConfigMap extends Data {
  static const String tfType = 'google_composer_user_workloads_config_map';

  DataGoogleComposerUserWorkloadsConfigMap({
    required super.localName,
    required TfArg<String> environment,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'environment': environment,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComposerUserWorkloadsConfigMapSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data` attribute.
  TfRef<Map<String, String>> get data =>
      TfRef.attribute<Map<String, String>>(this, 'data');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');
}
