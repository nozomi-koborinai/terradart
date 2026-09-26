// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_amplify_backend_environment`.
const Set<String> _awsAmplifyBackendEnvironmentSensitive = <String>{};

/// Factory wrapper for `aws_amplify_backend_environment`.
final class AwsAmplifyBackendEnvironment extends Resource {
  static const String tfType = 'aws_amplify_backend_environment';

  AwsAmplifyBackendEnvironment({
    required super.localName,
    required TfArg<String> appId,
    TfArg<String>? deploymentArtifacts,
    required TfArg<String> environmentName,
    TfArg<String>? region,
    TfArg<String>? stackName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           if (deploymentArtifacts != null)
             'deployment_artifacts': deploymentArtifacts,
           'environment_name': environmentName,
           if (region != null) 'region': region,
           if (stackName != null) 'stack_name': stackName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmplifyBackendEnvironmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
