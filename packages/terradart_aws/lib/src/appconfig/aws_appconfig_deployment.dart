// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

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
    RefTo<AwsKmsKey>? kmsKeyIdentifier,
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
           'description': ?description,
           'environment_id': environmentId,
           'kms_key_identifier': ?kmsKeyIdentifier?.encodeAs('arn'),
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppconfigDeployment>`.
  RefTo<AwsAppconfigDeployment> get ref => RefTo.of(this);

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

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationIdRef =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `configuration_profile_id` attribute.
  TfRef<String> get configurationProfileIdRef =>
      TfRef.attribute<String>(this, 'configuration_profile_id');

  /// Reference to `configuration_version` attribute.
  TfRef<String> get configurationVersionRef =>
      TfRef.attribute<String>(this, 'configuration_version');

  /// Reference to `deployment_strategy_id` attribute.
  TfRef<String> get deploymentStrategyIdRef =>
      TfRef.attribute<String>(this, 'deployment_strategy_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentIdRef =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifierRef =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
