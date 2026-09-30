// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_invocation`.
const Set<String> _awsLambdaInvocationSensitive = <String>{};

/// Lambda Invocation Lifecycle enum for `lifecycle_scope`.
enum LambdaInvocationLifecycleScope implements TerraformEnum {
  createOnly('CREATE_ONLY'),
  crud('CRUD');

  const LambdaInvocationLifecycleScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_lambda_invocation`.
final class AwsLambdaInvocation extends Resource {
  static const String tfType = 'aws_lambda_invocation';

  AwsLambdaInvocation({
    required super.localName,
    required RefTo<AwsLambdaFunction> functionName,
    required TfArg<String> input,
    TfArg<LambdaInvocationLifecycleScope>? lifecycleScope,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    TfArg<String>? tenantId,
    TfArg<String>? terraformKey,
    TfArg<Map<String, String>>? triggers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName.encodeAs('function_name'),
           'input': input,
           'lifecycle_scope': ?lifecycleScope,
           'qualifier': ?qualifier,
           'region': ?region,
           'tenant_id': ?tenantId,
           'terraform_key': ?terraformKey,
           'triggers': ?triggers,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaInvocationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaInvocation>`.
  RefTo<AwsLambdaInvocation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `result` attribute.
  TfRef<String> get result => TfRef.attribute<String>(this, 'result');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionNameRef =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `input` attribute.
  TfRef<String> get inputRef => TfRef.attribute<String>(this, 'input');

  /// Reference to `lifecycle_scope` attribute.
  TfRef<String> get lifecycleScopeRef =>
      TfRef.attribute<String>(this, 'lifecycle_scope');

  /// Reference to `qualifier` attribute.
  TfRef<String> get qualifierRef => TfRef.attribute<String>(this, 'qualifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantIdRef => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `terraform_key` attribute.
  TfRef<String> get terraformKeyRef =>
      TfRef.attribute<String>(this, 'terraform_key');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggersRef =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');
}
