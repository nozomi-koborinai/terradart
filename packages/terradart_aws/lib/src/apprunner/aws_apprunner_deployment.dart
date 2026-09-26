// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apprunner_deployment`.
const Set<String> _awsApprunnerDeploymentSensitive = <String>{};

/// Factory wrapper for `aws_apprunner_deployment`.
final class AwsApprunnerDeployment extends Resource {
  static const String tfType = 'aws_apprunner_deployment';

  AwsApprunnerDeployment({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> serviceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'service_arn': serviceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApprunnerDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
