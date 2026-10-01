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

  AwsDatazoneEnvironmentBlueprintConfiguration(
    super.localName, {
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
           'global_parameters': ?globalParameters,
           'manage_access_role_arn': ?manageAccessRoleArn,
           'provisioning_role_arn': ?provisioningRoleArn,
           'region': ?region,
           'regional_parameters': ?regionalParameters,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatazoneEnvironmentBlueprintConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatazoneEnvironmentBlueprintConfiguration>`.
  RefTo<AwsDatazoneEnvironmentBlueprintConfiguration> get ref => RefTo.of(this);

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `enabled_regions` attribute.
  TfRef<List<String>> get enabledRegions =>
      TfRef.attribute<List<String>>(this, 'enabled_regions');

  /// Reference to `environment_blueprint_id` attribute.
  TfRef<String> get environmentBlueprintId =>
      TfRef.attribute<String>(this, 'environment_blueprint_id');

  /// Reference to `global_parameters` attribute.
  TfRef<Map<String, String>> get globalParameters =>
      TfRef.attribute<Map<String, String>>(this, 'global_parameters');

  /// Reference to `manage_access_role_arn` attribute.
  TfRef<String> get manageAccessRoleArn =>
      TfRef.attribute<String>(this, 'manage_access_role_arn');

  /// Reference to `provisioning_role_arn` attribute.
  TfRef<String> get provisioningRoleArn =>
      TfRef.attribute<String>(this, 'provisioning_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `regional_parameters` attribute.
  TfRef<Map<String, Map<String, String>>> get regionalParameters =>
      TfRef.attribute<Map<String, Map<String, String>>>(
        this,
        'regional_parameters',
      );
}
