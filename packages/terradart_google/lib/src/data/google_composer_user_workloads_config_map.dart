// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../composer/google_composer_user_workloads_config_map.dart';

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
    super.provider,
    super.timeouts,
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

  /// A reference to the `google_composer_user_workloads_config_map` this data source reads, for
  /// arguments typed `RefTo<GoogleComposerUserWorkloadsConfigMap>`.
  RefTo<GoogleComposerUserWorkloadsConfigMap> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
