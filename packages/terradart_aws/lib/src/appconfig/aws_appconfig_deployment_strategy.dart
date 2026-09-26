// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_deployment_strategy`.
const Set<String> _awsAppconfigDeploymentStrategySensitive = <String>{};

/// Factory wrapper for `aws_appconfig_deployment_strategy`.
final class AwsAppconfigDeploymentStrategy extends Resource {
  static const String tfType = 'aws_appconfig_deployment_strategy';

  AwsAppconfigDeploymentStrategy({
    required super.localName,
    required TfArg<num> deploymentDurationInMinutes,
    TfArg<String>? description,
    TfArg<num>? finalBakeTimeInMinutes,
    required TfArg<num> growthFactor,
    TfArg<String>? growthType,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> replicateTo,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
