// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_parameter_manager_parameter_version_render`.
const Set<String> _googleParameterManagerParameterVersionRenderSensitive =
    <String>{'parameter_data', 'rendered_parameter_data'};

/// Factory wrapper for `google_parameter_manager_parameter_version_render`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleParameterManagerParameterVersionRender extends Data {
  static const String tfType =
      'google_parameter_manager_parameter_version_render';

  DataGoogleParameterManagerParameterVersionRender({
    required super.localName,
    required TfArg<String> parameter,
    required TfArg<String> parameterVersionId,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parameter': parameter,
           'parameter_version_id': parameterVersionId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleParameterManagerParameterVersionRenderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `parameter_data` attribute.
  TfRef<String> get parameterData =>
      TfRef.attribute<String>(this, 'parameter_data');

  /// Reference to `rendered_parameter_data` attribute.
  TfRef<String> get renderedParameterData =>
      TfRef.attribute<String>(this, 'rendered_parameter_data');
}
