// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_parameter_manager_regional_parameter`.
const Set<String> _googleParameterManagerRegionalParameterSensitive =
    <String>{};

/// Factory wrapper for `google_parameter_manager_regional_parameter`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleParameterManagerRegionalParameter extends Data {
  static const String tfType = 'google_parameter_manager_regional_parameter';

  DataGoogleParameterManagerRegionalParameter({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> parameterId,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'parameter_id': parameterId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleParameterManagerRegionalParameterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `policy_member` attribute.
  TfRef<List<Map<String, Object?>>> get policyMember =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'policy_member');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
