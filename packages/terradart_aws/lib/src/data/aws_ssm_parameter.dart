// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_parameter`.
const Set<String> _awsSsmParameterSensitive = <String>{'value'};

/// Factory wrapper for `aws_ssm_parameter`.
final class DataAwsSsmParameter extends Data {
  static const String tfType = 'aws_ssm_parameter';

  DataAwsSsmParameter({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? withDecryption,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (withDecryption != null) 'with_decryption': withDecryption,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmParameterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `insecure_value` attribute.
  TfRef<String> get insecureValue =>
      TfRef.attribute<String>(this, 'insecure_value');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
