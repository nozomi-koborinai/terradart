// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_parameter`.
const Set<String> _awsSsmParameterSensitive = <String>{'value', 'value_wo'};

/// Factory wrapper for `aws_ssm_parameter`.
final class AwsSsmParameter extends Resource {
  static const String tfType = 'aws_ssm_parameter';

  AwsSsmParameter({
    required super.localName,
    TfArg<String>? allowedPattern,
    TfArg<String>? arn,
    TfArg<String>? dataType,
    TfArg<String>? description,
    TfArg<String>? insecureValue,
    TfArg<String>? keyId,
    required TfArg<String> name,
    TfArg<bool>? overwrite,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tier,
    required TfArg<String> type,
    TfArg<String>? value,
    TfArg<String>? valueWo,
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
           if (insecureValue != null) 'insecure_value': insecureValue,
           if (keyId != null) 'key_id': keyId,
           'name': name,
           if (overwrite != null) 'overwrite': overwrite,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (tier != null) 'tier': tier,
           'type': type,
           if (value != null) 'value': value,
           if (valueWo != null) 'value_wo': valueWo,
           if (valueWoVersion != null) 'value_wo_version': valueWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmParameterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `has_value_wo` attribute.
  TfRef<bool> get hasValueWo => TfRef.attribute<bool>(this, 'has_value_wo');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
