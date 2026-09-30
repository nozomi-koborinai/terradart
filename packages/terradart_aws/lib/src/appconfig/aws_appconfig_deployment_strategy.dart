// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_deployment_strategy`.
const Set<String> _awsAppconfigDeploymentStrategySensitive = <String>{};

/// Appconfig Deployment Strategy Growth enum for `growth_type`.
enum AppconfigDeploymentStrategyGrowthType implements TerraformEnum {
  linear('LINEAR'),
  exponential('EXPONENTIAL');

  const AppconfigDeploymentStrategyGrowthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Appconfig Deployment Strategy Replicate enum for `replicate_to`.
enum AppconfigDeploymentStrategyReplicateTo implements TerraformEnum {
  none('NONE'),
  ssmDocument('SSM_DOCUMENT');

  const AppconfigDeploymentStrategyReplicateTo(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appconfig_deployment_strategy`.
final class AwsAppconfigDeploymentStrategy extends Resource {
  static const String tfType = 'aws_appconfig_deployment_strategy';

  AwsAppconfigDeploymentStrategy({
    required super.localName,
    required TfArg<num> deploymentDurationInMinutes,
    TfArg<String>? description,
    TfArg<num>? finalBakeTimeInMinutes,
    required TfArg<num> growthFactor,
    TfArg<AppconfigDeploymentStrategyGrowthType>? growthType,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<AppconfigDeploymentStrategyReplicateTo> replicateTo,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deployment_duration_in_minutes': deploymentDurationInMinutes,
           'description': ?description,
           'final_bake_time_in_minutes': ?finalBakeTimeInMinutes,
           'growth_factor': growthFactor,
           'growth_type': ?growthType,
           'name': name,
           'region': ?region,
           'replicate_to': replicateTo,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigDeploymentStrategySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppconfigDeploymentStrategy>`.
  RefTo<AwsAppconfigDeploymentStrategy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deployment_duration_in_minutes` attribute.
  TfRef<num> get deploymentDurationInMinutesRef =>
      TfRef.attribute<num>(this, 'deployment_duration_in_minutes');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `final_bake_time_in_minutes` attribute.
  TfRef<num> get finalBakeTimeInMinutesRef =>
      TfRef.attribute<num>(this, 'final_bake_time_in_minutes');

  /// Reference to `growth_factor` attribute.
  TfRef<num> get growthFactorRef => TfRef.attribute<num>(this, 'growth_factor');

  /// Reference to `growth_type` attribute.
  TfRef<String> get growthTypeRef =>
      TfRef.attribute<String>(this, 'growth_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `replicate_to` attribute.
  TfRef<String> get replicateToRef =>
      TfRef.attribute<String>(this, 'replicate_to');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
