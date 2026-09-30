// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_parameter_manager_regional_parameter`.
const Set<String> _googleParameterManagerRegionalParameterSensitive =
    <String>{};

/// Parameter Manager Regional Parameter enum for `format`.
enum ParameterManagerRegionalParameterFormat implements TerraformEnum {
  unformatted('UNFORMATTED'),
  yaml('YAML'),
  json('JSON');

  const ParameterManagerRegionalParameterFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_parameter_manager_regional_parameter`.
///
/// A Regional Parameter is a configuration value stored in a specific region
/// through Parameter Manager. Regional parameters support labels, encryption
/// via Cloud KMS, and resource manager tags for fine-grained access control,
/// organization, and regional compliance.
final class GoogleParameterManagerRegionalParameter extends Resource {
  static const String tfType = 'google_parameter_manager_regional_parameter';

  GoogleParameterManagerRegionalParameter({
    required super.localName,
    required TfArg<String> parameterId,
    required TfArg<String> location,
    TfArg<ParameterManagerRegionalParameterFormat>? format,
    RefTo<GoogleKmsCryptoKey>? kmsKey,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parameter_id': parameterId,
           'location': location,
           'format': ?format,
           'kms_key': ?kmsKey?.encodeAs('id'),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleParameterManagerRegionalParameterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleParameterManagerRegionalParameter>`.
  RefTo<GoogleParameterManagerRegionalParameter> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `format` attribute.
  TfRef<String> get formatRef => TfRef.attribute<String>(this, 'format');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKeyRef => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `parameter_id` attribute.
  TfRef<String> get parameterIdRef =>
      TfRef.attribute<String>(this, 'parameter_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
