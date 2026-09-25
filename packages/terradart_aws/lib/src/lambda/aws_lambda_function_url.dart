// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_function_url`.
const Set<String> _awsLambdaFunctionUrlSensitive = <String>{};

/// Typed helper for the `cors` block of
/// `aws_lambda_function_url` (derived from provider schema).
@immutable
final class LambdaFunctionUrlCors {
  const LambdaFunctionUrlCors({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.exposeHeaders,
    this.maxAge,
  });

  final TfArg<bool>? allowCredentials;

  final TfArg<List<Object?>>? allowHeaders;

  final TfArg<List<Object?>>? allowMethods;

  final TfArg<List<Object?>>? allowOrigins;

  final TfArg<List<Object?>>? exposeHeaders;

  final TfArg<num>? maxAge;

  Map<String, Object?> encode() => {
    if (allowCredentials != null)
      'allow_credentials': allowCredentials!.toTfJson(),
    if (allowHeaders != null) 'allow_headers': allowHeaders!.toTfJson(),
    if (allowMethods != null) 'allow_methods': allowMethods!.toTfJson(),
    if (allowOrigins != null) 'allow_origins': allowOrigins!.toTfJson(),
    if (exposeHeaders != null) 'expose_headers': exposeHeaders!.toTfJson(),
    if (maxAge != null) 'max_age': maxAge!.toTfJson(),
  };
}

/// Factory wrapper for `aws_lambda_function_url`.
///
/// A dedicated HTTPS endpoint for an [AwsLambdaFunction], without API
/// Gateway in front.
///
/// `authorizationType: TfArg.literal('NONE')` makes the URL public;
/// `AWS_IAM` requires SigV4-signed callers. Read the endpoint through
/// [functionUrl].
final class AwsLambdaFunctionUrl extends Resource {
  static const String tfType = 'aws_lambda_function_url';

  AwsLambdaFunctionUrl({
    required super.localName,
    required TfArg<String> functionName,
    required TfArg<String> authorizationType,
    TfArg<String>? qualifier,
    TfArg<String>? invokeMode,
    LambdaFunctionUrlCors? cors,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           'authorization_type': authorizationType,
           if (qualifier != null) 'qualifier': qualifier,
           if (invokeMode != null) 'invoke_mode': invokeMode,
           if (cors != null) 'cors': TfArg.literal(cors.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionUrlSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `function_arn` attribute.
  TfRef<String> get functionArn =>
      TfRef.attribute<String>(this, 'function_arn');

  /// Reference to `function_url` attribute.
  TfRef<String> get functionUrl =>
      TfRef.attribute<String>(this, 'function_url');

  /// Reference to `url_id` attribute.
  TfRef<String> get urlId => TfRef.attribute<String>(this, 'url_id');
}
