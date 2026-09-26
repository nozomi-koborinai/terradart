// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_function_url`.
const Set<String> _awsLambdaFunctionUrlSensitive = <String>{};

/// Factory wrapper for `aws_lambda_function_url`.
final class DataAwsLambdaFunctionUrl extends Data {
  static const String tfType = 'aws_lambda_function_url';

  DataAwsLambdaFunctionUrl({
    required super.localName,
    required TfArg<String> functionName,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           if (qualifier != null) 'qualifier': qualifier,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionUrlSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_type` attribute.
  TfRef<String> get authorizationType =>
      TfRef.attribute<String>(this, 'authorization_type');

  /// Reference to `cors` attribute.
  TfRef<List<Map<String, Object?>>> get cors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cors');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `function_arn` attribute.
  TfRef<String> get functionArn =>
      TfRef.attribute<String>(this, 'function_arn');

  /// Reference to `function_url` attribute.
  TfRef<String> get functionUrl =>
      TfRef.attribute<String>(this, 'function_url');

  /// Reference to `invoke_mode` attribute.
  TfRef<String> get invokeMode => TfRef.attribute<String>(this, 'invoke_mode');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `url_id` attribute.
  TfRef<String> get urlId => TfRef.attribute<String>(this, 'url_id');
}
