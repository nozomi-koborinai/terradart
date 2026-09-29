// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_parameter_manager_parameter`.
const Set<String> _googleParameterManagerParameterSensitive = <String>{};

/// Parameter Manager Parameter enum for `format`.
enum ParameterManagerParameterFormat implements TerraformEnum {
  unformatted('UNFORMATTED'),
  yaml('YAML'),
  json('JSON');

  const ParameterManagerParameterFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_parameter_manager_parameter`.
///
/// A Parameter is a configuration value that can be stored and managed
/// centrally through Parameter Manager. Parameters support labels, encryption
/// via Cloud KMS, and resource manager tags for fine-grained access control and
/// organization.
final class GoogleParameterManagerParameter extends Resource {
  static const String tfType = 'google_parameter_manager_parameter';

  GoogleParameterManagerParameter({
    required super.localName,
    required TfArg<String> parameterId,
    TfArg<ParameterManagerParameterFormat>? format,
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
           'format': ?format,
           'kms_key': ?kmsKey?.encodeAs('id'),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleParameterManagerParameterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleParameterManagerParameter>`.
  RefTo<GoogleParameterManagerParameter> get ref => RefTo.of(this);

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
