// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_deployment`.
const Set<String> _awsAppconfigDeploymentSensitive = <String>{};

/// Factory wrapper for `aws_appconfig_deployment`.
final class AwsAppconfigDeployment extends Resource {
  static const String tfType = 'aws_appconfig_deployment';

  AwsAppconfigDeployment({
    required super.localName,
    required TfArg<String> applicationId,
    required TfArg<String> configurationProfileId,
    required TfArg<String> configurationVersion,
    required TfArg<String> deploymentStrategyId,
    TfArg<String>? description,
    required TfArg<String> environmentId,
    TfArg<String>? kmsKeyIdentifier,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'configuration_profile_id': configurationProfileId,
           'configuration_version': configurationVersion,
           'deployment_strategy_id': deploymentStrategyId,
           if (description != null) 'description': description,
           'environment_id': environmentId,
           if (kmsKeyIdentifier != null) 'kms_key_identifier': kmsKeyIdentifier,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deployment_number` attribute.
  TfRef<num> get deploymentNumber =>
      TfRef.attribute<num>(this, 'deployment_number');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
