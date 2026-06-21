// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_parameter_manager_parameter`.
const Set<String> _googleParameterManagerParameterSensitive = <String>{};

/// Payload format of a [GoogleParameterManagerParameter] — controls how
/// Parameter Manager validates and renders the parameter's data.
enum ParameterManagerParameterFormat implements TerraformEnum {
  /// Opaque bytes (no validation).
  unformatted('UNFORMATTED'),

  /// YAML-validated payload.
  yaml('YAML'),

  /// JSON-validated payload.
  json('JSON');

  const ParameterManagerParameterFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_parameter_manager_parameter`.
final class GoogleParameterManagerParameter extends Resource {
  static const String tfType = 'google_parameter_manager_parameter';

  GoogleParameterManagerParameter({
    required super.localName,
    required TfArg<String> parameterId,
    TfArg<ParameterManagerParameterFormat>? format,
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
           if (format != null) 'format': format,
           if (kmsKey != null) 'kms_key': kmsKey,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleParameterManagerParameterSensitive;

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
