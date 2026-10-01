// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_guest_attributes`.
const Set<String> _googleComputeInstanceGuestAttributesSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_guest_attributes`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeInstanceGuestAttributes extends Data {
  static const String tfType = 'google_compute_instance_guest_attributes';

  DataGoogleComputeInstanceGuestAttributes(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? queryPath,
    TfArg<String>? region,
    TfArg<String>? variableKey,
    TfArg<String>? zone,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'project': ?project,
           'query_path': ?queryPath,
           'region': ?region,
           'variable_key': ?variableKey,
           'zone': ?zone,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceGuestAttributesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `query_value` attribute.
  TfRef<List<Map<String, Object?>>> get queryValue =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'query_value');

  /// Reference to `variable_value` attribute.
  TfRef<String> get variableValue =>
      TfRef.attribute<String>(this, 'variable_value');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `query_path` attribute.
  TfRef<String> get queryPath => TfRef.attribute<String>(this, 'query_path');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `variable_key` attribute.
  TfRef<String> get variableKey =>
      TfRef.attribute<String>(this, 'variable_key');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
