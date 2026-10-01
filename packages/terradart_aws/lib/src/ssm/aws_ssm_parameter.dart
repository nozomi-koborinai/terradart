// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_ssm_parameter`.
const Set<String> _awsSsmParameterSensitive = <String>{'value', 'value_wo'};

/// Ssm Parameter Data enum for `data_type`.
enum SsmParameterDataType implements TerraformEnum {
  awsEc2Image('aws:ec2:image'),
  awsSsmIntegration('aws:ssm:integration'),
  text('text');

  const SsmParameterDataType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ssm Parameter enum for `tier`.
enum SsmParameterTier implements TerraformEnum {
  standard('Standard'),
  advanced('Advanced'),
  intelligentTiering('Intelligent-Tiering');

  const SsmParameterTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ssm Parameter enum for `type`.
enum SsmParameterType implements TerraformEnum {
  string('String'),
  stringlist('StringList'),
  securestring('SecureString');

  const SsmParameterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `insecure_value`, `value`, `value_wo` on `aws_ssm_parameter`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.insecureValue(...)`.
sealed class SsmParameterValue {
  const SsmParameterValue();

  /// Sets `insecure_value`.
  const factory SsmParameterValue.insecureValue(TfArg<String> insecureValue) =
      SsmParameterInsecureValue;

  /// Sets `value`.
  const factory SsmParameterValue.value(TfArg<String> value) =
      SsmParameterValueChoice;

  /// Sets `value_wo`.
  const factory SsmParameterValue.valueWo(TfArg<String> valueWo) =
      SsmParameterValueWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SsmParameterValue.insecureValue] choice: sets `insecure_value`.
final class SsmParameterInsecureValue extends SsmParameterValue {
  const SsmParameterInsecureValue(this.insecureValue);

  final TfArg<String> insecureValue;

  @override
  String get blockKey => 'insecure_value';

  @override
  Map<String, Object?> encode() => {'insecure_value': insecureValue.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'insecure_value': insecureValue};
}

/// The [SsmParameterValue.value] choice: sets `value`.
final class SsmParameterValueChoice extends SsmParameterValue {
  const SsmParameterValueChoice(this.value);

  final TfArg<String> value;

  @override
  String get blockKey => 'value';

  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'value': value};
}

/// The [SsmParameterValue.valueWo] choice: sets `value_wo`.
final class SsmParameterValueWo extends SsmParameterValue {
  const SsmParameterValueWo(this.valueWo);

  final TfArg<String> valueWo;

  @override
  String get blockKey => 'value_wo';

  @override
  Map<String, Object?> encode() => {'value_wo': valueWo.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'value_wo': valueWo};
}

/// Factory wrapper for `aws_ssm_parameter`.
final class AwsSsmParameter extends Resource {
  static const String tfType = 'aws_ssm_parameter';

  AwsSsmParameter({
    required super.localName,
    TfArg<String>? allowedPattern,
    TfArg<String>? arn,
    TfArg<SsmParameterDataType>? dataType,
    TfArg<String>? description,
    required SsmParameterValue value,
    RefTo<AwsKmsKey>? keyId,
    required TfArg<String> name,
    TfArg<bool>? overwrite,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<SsmParameterTier>? tier,
    required TfArg<SsmParameterType> type,
    TfArg<num>? valueWoVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_pattern': ?allowedPattern,
           'arn': ?arn,
           'data_type': ?dataType,
           'description': ?description,
           ...value.argMap,
           'key_id': ?keyId?.encodeAs('arn'),
           'name': name,
           'overwrite': ?overwrite,
           'region': ?region,
           'tags': ?tags,
           'tier': ?tier,
           'type': type,
           'value_wo_version': ?valueWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmParameterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmParameter>`.
  RefTo<AwsSsmParameter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `has_value_wo` attribute.
  TfRef<bool> get hasValueWo => TfRef.attribute<bool>(this, 'has_value_wo');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `allowed_pattern` attribute.
  TfRef<String> get allowedPattern =>
      TfRef.attribute<String>(this, 'allowed_pattern');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `data_type` attribute.
  TfRef<String> get dataType => TfRef.attribute<String>(this, 'data_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `insecure_value` attribute.
  TfRef<String> get insecureValue =>
      TfRef.attribute<String>(this, 'insecure_value');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `overwrite` attribute.
  TfRef<bool> get overwrite => TfRef.attribute<bool>(this, 'overwrite');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `value_wo_version` attribute.
  TfRef<num> get valueWoVersion =>
      TfRef.attribute<num>(this, 'value_wo_version');
}
