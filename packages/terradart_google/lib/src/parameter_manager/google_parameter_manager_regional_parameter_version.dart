// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_parameter_manager_regional_parameter_version`.
const Set<String> _googleParameterManagerRegionalParameterVersionSensitive =
    <String>{'parameter_data'};

/// Factory wrapper for `google_parameter_manager_regional_parameter_version`.
///
/// A Regional Parameter Version resource that stores the actual value of the
/// regional parameter.
final class GoogleParameterManagerRegionalParameterVersion extends Resource {
  static const String tfType =
      'google_parameter_manager_regional_parameter_version';

  GoogleParameterManagerRegionalParameterVersion({
    required super.localName,
    required TfArg<String> parameter,
    required TfArg<String> parameterVersionId,
    required TfArg<String> parameterData,
    TfArg<bool>? disabled,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parameter': parameter,
           'parameter_version_id': parameterVersionId,
           'parameter_data': parameterData,
           if (disabled != null) 'disabled': disabled,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
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

  /// Reference to `kms_key_version` attribute.
  TfRef<String> get kmsKeyVersion =>
      TfRef.attribute<String>(this, 'kms_key_version');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
