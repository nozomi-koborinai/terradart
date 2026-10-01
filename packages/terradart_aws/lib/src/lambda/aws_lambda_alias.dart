// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_alias`.
const Set<String> _awsLambdaAliasSensitive = <String>{};

/// Typed helper for the `routing_config` block of
/// `aws_lambda_alias` (derived from provider schema).
@immutable
final class LambdaAliasRoutingConfig {
  const LambdaAliasRoutingConfig({this.additionalVersionWeights});

  final TfArg<Map<String, num>>? additionalVersionWeights;

  Map<String, Object?> encode() => {
    'additional_version_weights': ?additionalVersionWeights?.toTfJson(),
  };
}

/// Factory wrapper for `aws_lambda_alias`.
final class AwsLambdaAlias extends Resource {
  static const String tfType = 'aws_lambda_alias';

  AwsLambdaAlias(
    super.localName, {
    TfArg<String>? description,
    required RefTo<AwsLambdaFunction> functionName,
    required TfArg<String> functionVersion,
    required TfArg<String> name,
    TfArg<String>? region,
    LambdaAliasRoutingConfig? routingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'function_name': functionName.encodeAs('function_name'),
           'function_version': functionVersion,
           'name': name,
           'region': ?region,
           if (routingConfig != null)
             'routing_config': TfArg.literal(routingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaAliasSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaAlias>`.
  RefTo<AwsLambdaAlias> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `invoke_arn` attribute.
  TfRef<String> get invokeArn => TfRef.attribute<String>(this, 'invoke_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `function_version` attribute.
  TfRef<String> get functionVersion =>
      TfRef.attribute<String>(this, 'function_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
