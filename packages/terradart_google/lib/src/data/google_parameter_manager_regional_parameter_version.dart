// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_parameter_manager_regional_parameter_version`.
const Set<String> _googleParameterManagerRegionalParameterVersionSensitive =
    <String>{'parameter_data'};

/// Factory wrapper for `google_parameter_manager_regional_parameter_version`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleParameterManagerRegionalParameterVersion extends Data {
  static const String tfType =
      'google_parameter_manager_regional_parameter_version';

  DataGoogleParameterManagerRegionalParameterVersion({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> parameter,
    required TfArg<String> parameterVersionId,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'parameter': parameter,
           'parameter_version_id': parameterVersionId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleParameterManagerRegionalParameterVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `kms_key_version` attribute.
  TfRef<String> get kmsKeyVersion =>
      TfRef.attribute<String>(this, 'kms_key_version');

  /// Reference to `parameter_data` attribute.
  TfRef<String> get parameterData =>
      TfRef.attribute<String>(this, 'parameter_data');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
