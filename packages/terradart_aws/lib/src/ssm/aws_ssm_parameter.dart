// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
      SsmParameterValueInsecureValue;

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
final class SsmParameterValueInsecureValue extends SsmParameterValue {
  const SsmParameterValueInsecureValue(this.insecureValue);

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
    TfArg<String>? keyId,
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
           if (allowedPattern != null) 'allowed_pattern': allowedPattern,
           if (arn != null) 'arn': arn,
           if (dataType != null) 'data_type': dataType,
           if (description != null) 'description': description,
           ...value.argMap,
           if (keyId != null) 'key_id': keyId,
           'name': name,
           if (overwrite != null) 'overwrite': overwrite,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (tier != null) 'tier': tier,
           'type': type,
           if (valueWoVersion != null) 'value_wo_version': valueWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmParameterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmParameter>`.
  RefTo<AwsSsmParameter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `has_value_wo` attribute.
  TfRef<bool> get hasValueWo => TfRef.attribute<bool>(this, 'has_value_wo');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
