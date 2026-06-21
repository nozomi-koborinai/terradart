// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_parameter_manager_regional_parameter`.
const Set<String> _googleParameterManagerRegionalParameterSensitive =
    <String>{};

/// Payload format of a [GoogleParameterManagerRegionalParameter].
enum ParameterManagerRegionalParameterFormat implements TerraformEnum {
  /// Opaque bytes (no validation).
  unformatted('UNFORMATTED'),

  /// YAML-validated payload.
  yaml('YAML'),

  /// JSON-validated payload.
  json('JSON');

  const ParameterManagerRegionalParameterFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_parameter_manager_regional_parameter`.
///
/// A Regional Parameter is a logical regional parameter.
final class GoogleParameterManagerRegionalParameter extends Resource {
  static const String tfType = 'google_parameter_manager_regional_parameter';

  GoogleParameterManagerRegionalParameter({
    required super.localName,
    required TfArg<String> parameterId,
    required TfArg<String> location,
    TfArg<ParameterManagerRegionalParameterFormat>? format,
    TfArg<String>? kmsKey,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parameter_id': parameterId,
           'location': location,
           if (format != null) 'format': format,
           if (kmsKey != null) 'kms_key': kmsKey,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
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

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `policy_member` attribute.
  TfRef<List<Map<String, Object?>>> get policyMember =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'policy_member');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
