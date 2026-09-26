// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_service_function`.
const Set<String> _awsResiliencehubv2ServiceFunctionSensitive = <String>{};

/// Factory wrapper for `aws_resiliencehubv2_service_function`.
final class AwsResiliencehubv2ServiceFunction extends Resource {
  static const String tfType = 'aws_resiliencehubv2_service_function';

  AwsResiliencehubv2ServiceFunction({
    required super.localName,
    required TfArg<String> criticality,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> serviceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'criticality': criticality,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'service_arn': serviceArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsResiliencehubv2ServiceFunctionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `service_function_id` attribute.
  TfRef<String> get serviceFunctionId =>
      TfRef.attribute<String>(this, 'service_function_id');
}
