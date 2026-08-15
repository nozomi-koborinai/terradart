// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_parameter_manager_regional_parameters`.
const Set<String> _googleParameterManagerRegionalParametersSensitive =
    <String>{};

/// Factory wrapper for `google_parameter_manager_regional_parameters`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleParameterManagerRegionalParameters extends Data {
  static const String tfType = 'google_parameter_manager_regional_parameters';

  DataGoogleParameterManagerRegionalParameters({
    required super.localName,
    TfArg<String>? filter,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleParameterManagerRegionalParametersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `parameters` attribute.
  TfRef<List<Map<String, Object?>>> get parameters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'parameters');
}
