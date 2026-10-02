// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_function_url`.
const Set<String> _awsLambdaFunctionUrlSensitive = <String>{};

/// Lambda Function Url Authorization enum for `authorization_type`.
extension type const LambdaFunctionUrlAuthorizationType._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionUrlAuthorizationType.variable(String name)
    : this._(TfArg.variable(name));
  LambdaFunctionUrlAuthorizationType.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionUrlAuthorizationType.arg(TfArg<String> arg) : this._(arg);

  static const none = LambdaFunctionUrlAuthorizationType._(
    TfArgLiteral('NONE'),
  );
  static const awsIam = LambdaFunctionUrlAuthorizationType._(
    TfArgLiteral('AWS_IAM'),
  );

  static const List<LambdaFunctionUrlAuthorizationType> values = [none, awsIam];
}

/// Lambda Function Url Invoke enum for `invoke_mode`.
extension type const LambdaFunctionUrlInvokeMode._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionUrlInvokeMode.variable(String name)
    : this._(TfArg.variable(name));
  LambdaFunctionUrlInvokeMode.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionUrlInvokeMode.arg(TfArg<String> arg) : this._(arg);

  static const buffered = LambdaFunctionUrlInvokeMode._(
    TfArgLiteral('BUFFERED'),
  );
  static const responseStream = LambdaFunctionUrlInvokeMode._(
    TfArgLiteral('RESPONSE_STREAM'),
  );

  static const List<LambdaFunctionUrlInvokeMode> values = [
    buffered,
    responseStream,
  ];
}

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

  final TfArg<List<String>>? allowHeaders;

  final TfArg<List<String>>? allowMethods;

  final TfArg<List<String>>? allowOrigins;

  final TfArg<List<String>>? exposeHeaders;

  final TfArg<num>? maxAge;

  @internal
  Map<String, Object?> encode() => {
    'allow_credentials': ?allowCredentials?.toTfJson(),
    'allow_headers': ?allowHeaders?.toTfJson(),
    'allow_methods': ?allowMethods?.toTfJson(),
    'allow_origins': ?allowOrigins?.toTfJson(),
    'expose_headers': ?exposeHeaders?.toTfJson(),
    'max_age': ?maxAge?.toTfJson(),
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

  AwsLambdaFunctionUrl(
    super.localName, {
    required LambdaFunctionUrlAuthorizationType authorizationType,
    required RefTo<AwsLambdaFunction> functionName,
    LambdaFunctionUrlInvokeMode? invokeMode,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    LambdaFunctionUrlCors? cors,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorization_type': authorizationType,
           'function_name': functionName.encodeAs('function_name'),
           'invoke_mode': ?invokeMode,
           'qualifier': ?qualifier,
           'region': ?region,
           if (cors != null) 'cors': TfArg.literal(cors.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionUrlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaFunctionUrl>`.
  RefTo<AwsLambdaFunctionUrl> get ref => RefTo.of(this);

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

  /// Reference to `authorization_type` attribute.
  TfRef<String> get authorizationType =>
      TfRef.attribute<String>(this, 'authorization_type');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `invoke_mode` attribute.
  TfRef<String> get invokeMode => TfRef.attribute<String>(this, 'invoke_mode');

  /// Reference to `qualifier` attribute.
  TfRef<String> get qualifier => TfRef.attribute<String>(this, 'qualifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
