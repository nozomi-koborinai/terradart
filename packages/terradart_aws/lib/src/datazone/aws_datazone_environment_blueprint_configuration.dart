// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_environment_blueprint_configuration`.
const Set<String> _awsDatazoneEnvironmentBlueprintConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_datazone_environment_blueprint_configuration`.
final class AwsDatazoneEnvironmentBlueprintConfiguration extends Resource {
  static const String tfType =
      'aws_datazone_environment_blueprint_configuration';

  AwsDatazoneEnvironmentBlueprintConfiguration({
    required super.localName,
    required TfArg<String> domainId,
    required TfArg<List<String>> enabledRegions,
    required TfArg<String> environmentBlueprintId,
    TfArg<Map<String, String>>? globalParameters,
    TfArg<String>? manageAccessRoleArn,
    TfArg<String>? provisioningRoleArn,
    TfArg<String>? region,
    TfArg<Map<String, Map<String, String>>>? regionalParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_id': domainId,
           'enabled_regions': enabledRegions,
           'environment_blueprint_id': environmentBlueprintId,
           if (globalParameters != null) 'global_parameters': globalParameters,
           if (manageAccessRoleArn != null)
             'manage_access_role_arn': manageAccessRoleArn,
           if (provisioningRoleArn != null)
             'provisioning_role_arn': provisioningRoleArn,
           if (region != null) 'region': region,
           if (regionalParameters != null)
             'regional_parameters': regionalParameters,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatazoneEnvironmentBlueprintConfigurationSensitive;
}
