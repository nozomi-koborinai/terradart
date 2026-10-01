// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../parameter_manager/google_parameter_manager_regional_parameter.dart'
    show GoogleParameterManagerRegionalParameter;

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

  GoogleParameterManagerRegionalParameterVersion(
    super.localName, {
    required RefTo<GoogleParameterManagerRegionalParameter> parameter,
    required TfArg<String> parameterVersionId,
    required Sensitive<String> parameterData,
    TfArg<bool>? disabled,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parameter': parameter.encodeAs('name'),
           'parameter_version_id': parameterVersionId,
           'parameter_data': parameterData,
           'disabled': ?disabled,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleParameterManagerRegionalParameterVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleParameterManagerRegionalParameterVersion>`.
  RefTo<GoogleParameterManagerRegionalParameterVersion> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `parameter` attribute.
  TfRef<String> get parameter => TfRef.attribute<String>(this, 'parameter');

  /// Reference to `parameter_data` attribute.
  TfRef<String> get parameterData =>
      TfRef.attribute<String>(this, 'parameter_data');

  /// Reference to `parameter_version_id` attribute.
  TfRef<String> get parameterVersionId =>
      TfRef.attribute<String>(this, 'parameter_version_id');
}
