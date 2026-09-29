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
           if (description != null) 'description': description,
           if (finalBakeTimeInMinutes != null)
             'final_bake_time_in_minutes': finalBakeTimeInMinutes,
           'growth_factor': growthFactor,
           if (growthType != null) 'growth_type': growthType,
           'name': name,
           if (region != null) 'region': region,
           'replicate_to': replicateTo,
           if (tags != null) 'tags': tags,
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
}
