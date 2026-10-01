// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_m2_deployment`.
const Set<String> _awsM2DeploymentSensitive = <String>{};

/// Factory wrapper for `aws_m2_deployment`.
final class AwsM2Deployment extends Resource {
  static const String tfType = 'aws_m2_deployment';

  AwsM2Deployment({
    required super.localName,
    required TfArg<String> applicationId,
    required TfArg<num> applicationVersion,
    required TfArg<String> environmentId,
    TfArg<bool>? forceStop,
    TfArg<String>? region,
    required TfArg<bool> start,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'application_version': applicationVersion,
           'environment_id': environmentId,
           'force_stop': ?forceStop,
           'region': ?region,
           'start': start,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsM2DeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsM2Deployment>`.
  RefTo<AwsM2Deployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `application_version` attribute.
  TfRef<num> get applicationVersion =>
      TfRef.attribute<num>(this, 'application_version');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `force_stop` attribute.
  TfRef<bool> get forceStop => TfRef.attribute<bool>(this, 'force_stop');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `start` attribute.
  TfRef<bool> get start => TfRef.attribute<bool>(this, 'start');
}
