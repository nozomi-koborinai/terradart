// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_deployment_strategy`.
const Set<String> _awsAppconfigDeploymentStrategySensitive = <String>{};

/// Appconfig Deployment Strategy Growth enum for `growth_type`.
extension type const AppconfigDeploymentStrategyGrowthType._(TfArg<String> _)
    implements TfArg<String> {
  AppconfigDeploymentStrategyGrowthType.variable(String name)
    : this._(TfArg.variable(name));
  AppconfigDeploymentStrategyGrowthType.expression(String template)
    : this._(TfArg.expression(template));
  const AppconfigDeploymentStrategyGrowthType.arg(TfArg<String> arg)
    : this._(arg);

  static const linear = AppconfigDeploymentStrategyGrowthType._(
    TfArgLiteral('LINEAR'),
  );
  static const exponential = AppconfigDeploymentStrategyGrowthType._(
    TfArgLiteral('EXPONENTIAL'),
  );

  static const List<AppconfigDeploymentStrategyGrowthType> values = [
    linear,
    exponential,
  ];
}

/// Appconfig Deployment Strategy Replicate enum for `replicate_to`.
extension type const AppconfigDeploymentStrategyReplicateTo._(TfArg<String> _)
    implements TfArg<String> {
  AppconfigDeploymentStrategyReplicateTo.variable(String name)
    : this._(TfArg.variable(name));
  AppconfigDeploymentStrategyReplicateTo.expression(String template)
    : this._(TfArg.expression(template));
  const AppconfigDeploymentStrategyReplicateTo.arg(TfArg<String> arg)
    : this._(arg);

  static const none = AppconfigDeploymentStrategyReplicateTo._(
    TfArgLiteral('NONE'),
  );
  static const ssmDocument = AppconfigDeploymentStrategyReplicateTo._(
    TfArgLiteral('SSM_DOCUMENT'),
  );

  static const List<AppconfigDeploymentStrategyReplicateTo> values = [
    none,
    ssmDocument,
  ];
}

/// Factory wrapper for `aws_appconfig_deployment_strategy`.
final class AwsAppconfigDeploymentStrategy extends Resource {
  static const String tfType = 'aws_appconfig_deployment_strategy';

  AwsAppconfigDeploymentStrategy(
    super.localName, {
    required TfArg<num> deploymentDurationInMinutes,
    TfArg<String>? description,
    TfArg<num>? finalBakeTimeInMinutes,
    required TfArg<num> growthFactor,
    AppconfigDeploymentStrategyGrowthType? growthType,
    required TfArg<String> name,
    TfArg<String>? region,
    required AppconfigDeploymentStrategyReplicateTo replicateTo,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deployment_duration_in_minutes` attribute.
  TfRef<num> get deploymentDurationInMinutes =>
      TfRef.attribute<num>(this, 'deployment_duration_in_minutes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `final_bake_time_in_minutes` attribute.
  TfRef<num> get finalBakeTimeInMinutes =>
      TfRef.attribute<num>(this, 'final_bake_time_in_minutes');

  /// Reference to `growth_factor` attribute.
  TfRef<num> get growthFactor => TfRef.attribute<num>(this, 'growth_factor');

  /// Reference to `growth_type` attribute.
  TfRef<String> get growthType => TfRef.attribute<String>(this, 'growth_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replicate_to` attribute.
  TfRef<String> get replicateTo =>
      TfRef.attribute<String>(this, 'replicate_to');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
