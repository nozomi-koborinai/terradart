// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_parameters_by_path`.
const Set<String> _awsSsmParametersByPathSensitive = <String>{'values'};

/// Factory wrapper for `aws_ssm_parameters_by_path`.
final class DataAwsSsmParametersByPath extends Data {
  static const String tfType = 'aws_ssm_parameters_by_path';

  DataAwsSsmParametersByPath({
    required super.localName,
    required TfArg<String> path,
    TfArg<bool>? recursive,
    TfArg<String>? region,
    TfArg<bool>? withDecryption,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'path': path,
           if (recursive != null) 'recursive': recursive,
           if (region != null) 'region': region,
           if (withDecryption != null) 'with_decryption': withDecryption,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmParametersByPathSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');

  /// Reference to `types` attribute.
  TfRef<List<String>> get types => TfRef.attribute<List<String>>(this, 'types');

  /// Reference to `values` attribute.
  TfRef<List<String>> get values =>
      TfRef.attribute<List<String>>(this, 'values');
}
