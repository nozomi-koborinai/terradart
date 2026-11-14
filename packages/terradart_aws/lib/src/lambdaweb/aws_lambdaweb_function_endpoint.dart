// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambdaweb_function_endpoint`.
const Set<String> _awsLambdawebFunctionEndpointSensitive = <String>{};

/// Lambdaweb Function Endpoint Auth enum for `auth_type`.
extension type const LambdawebFunctionEndpointAuthType._(TfArg<String> _)
    implements TfArg<String> {
  LambdawebFunctionEndpointAuthType.variable(String name)
    : this._(TfArg.variable(name));
  LambdawebFunctionEndpointAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const LambdawebFunctionEndpointAuthType.arg(TfArg<String> arg) : this._(arg);

  static const applicationmanaged = LambdawebFunctionEndpointAuthType._(
    TfArgLiteral('ApplicationManaged'),
  );
  static const iamauth = LambdawebFunctionEndpointAuthType._(
    TfArgLiteral('IamAuth'),
  );

  static const List<LambdawebFunctionEndpointAuthType> values = [
    applicationmanaged,
    iamauth,
  ];
}

/// Lambdaweb Function Endpoint Auto Deployment enum for `auto_deployment_mode`.
extension type const LambdawebFunctionEndpointAutoDeploymentMode._(
  TfArg<String> _
)
    implements TfArg<String> {
  LambdawebFunctionEndpointAutoDeploymentMode.variable(String name)
    : this._(TfArg.variable(name));
  LambdawebFunctionEndpointAutoDeploymentMode.expression(String template)
    : this._(TfArg.expression(template));
  const LambdawebFunctionEndpointAutoDeploymentMode.arg(TfArg<String> arg)
    : this._(arg);

  static const latestrevision = LambdawebFunctionEndpointAutoDeploymentMode._(
    TfArgLiteral('LatestRevision'),
  );
  static const disabled = LambdawebFunctionEndpointAutoDeploymentMode._(
    TfArgLiteral('Disabled'),
  );

  static const List<LambdawebFunctionEndpointAutoDeploymentMode> values = [
    latestrevision,
    disabled,
  ];
}

/// Lambdaweb Function Endpoint enum for `endpoint_type`.
extension type const LambdawebFunctionEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  LambdawebFunctionEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  LambdawebFunctionEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const LambdawebFunctionEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const homeregion = LambdawebFunctionEndpointType._(
    TfArgLiteral('HomeRegion'),
  );
  static const multiregion = LambdawebFunctionEndpointType._(
    TfArgLiteral('MultiRegion'),
  );
  static const perregion = LambdawebFunctionEndpointType._(
    TfArgLiteral('PerRegion'),
  );

  static const List<LambdawebFunctionEndpointType> values = [
    homeregion,
    multiregion,
    perregion,
  ];
}

/// Typed helper for the `revision_weight` block of
/// `aws_lambdaweb_function_endpoint` (derived from provider schema).
@immutable
final class LambdawebFunctionEndpointRevisionWeight {
  const LambdawebFunctionEndpointRevisionWeight({
    required this.revisionId,
    required this.weight,
  });

  final TfArg<String> revisionId;

  final TfArg<num> weight;

  @internal
  Map<String, Object?> encode() => {
    'revision_id': revisionId.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Typed helper for the `scaling_config` block of
/// `aws_lambdaweb_function_endpoint` (derived from provider schema).
@immutable
final class LambdawebFunctionEndpointScalingConfig {
  const LambdawebFunctionEndpointScalingConfig({required this.maxEnvironments});

  final TfArg<num> maxEnvironments;

  @internal
  Map<String, Object?> encode() => {
    'max_environments': maxEnvironments.toTfJson(),
  };
}

/// Typed helper for the `throttle_config` block of
/// `aws_lambdaweb_function_endpoint` (derived from provider schema).
@immutable
final class LambdawebFunctionEndpointThrottleConfig {
  const LambdawebFunctionEndpointThrottleConfig({required this.rateLimit});

  final TfArg<num> rateLimit;

  @internal
  Map<String, Object?> encode() => {'rate_limit': rateLimit.toTfJson()};
}

/// Factory wrapper for `aws_lambdaweb_function_endpoint`.
final class AwsLambdawebFunctionEndpoint extends Resource {
  static const String tfType = 'aws_lambdaweb_function_endpoint';

  AwsLambdawebFunctionEndpoint(
    super.localName, {
    required LambdawebFunctionEndpointAuthType authType,
    LambdawebFunctionEndpointAutoDeploymentMode? autoDeploymentMode,
    TfArg<String>? description,
    required TfArg<String> endpointName,
    required LambdawebFunctionEndpointType endpointType,
    required RefTo<AwsLambdaFunction> functionName,
    TfArg<String>? region,
    TfArg<List<String>>? regions,
    List<LambdawebFunctionEndpointRevisionWeight>? revisionWeight,
    List<LambdawebFunctionEndpointScalingConfig>? scalingConfig,
    List<LambdawebFunctionEndpointThrottleConfig>? throttleConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_type': authType,
           'auto_deployment_mode': ?autoDeploymentMode,
           'description': ?description,
           'endpoint_name': endpointName,
           'endpoint_type': endpointType,
           'function_name': functionName.encodeAs('function_name'),
           'region': ?region,
           'regions': ?regions,
           if (revisionWeight != null)
             'revision_weight': TfArg.literal([
               for (final e in revisionWeight) e.encode(),
             ]),
           if (scalingConfig != null)
             'scaling_config': TfArg.literal([
               for (final e in scalingConfig) e.encode(),
             ]),
           if (throttleConfig != null)
             'throttle_config': TfArg.literal([
               for (final e in throttleConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdawebFunctionEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdawebFunctionEndpoint>`.
  RefTo<AwsLambdawebFunctionEndpoint> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `regional_domain_names` attribute.
  TfRef<Map<String, String>> get regionalDomainNames =>
      TfRef.attribute<Map<String, String>>(this, 'regional_domain_names');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authType => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `auto_deployment_mode` attribute.
  TfRef<String> get autoDeploymentMode =>
      TfRef.attribute<String>(this, 'auto_deployment_mode');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `endpoint_name` attribute.
  TfRef<String> get endpointName =>
      TfRef.attribute<String>(this, 'endpoint_name');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');
}
