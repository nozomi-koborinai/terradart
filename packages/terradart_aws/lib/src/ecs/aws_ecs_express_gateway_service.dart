// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ecs/aws_ecs_cluster.dart' show AwsEcsCluster;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_ecs_express_gateway_service`.
const Set<String> _awsEcsExpressGatewayServiceSensitive = <String>{};

/// Typed helper for the `primary_container` block of
/// `aws_ecs_express_gateway_service` (derived from provider schema).
@immutable
final class EcsExpressGatewayServicePrimaryContainer {
  const EcsExpressGatewayServicePrimaryContainer({
    this.awsLogsConfiguration,
    this.command,
    this.containerPort,
    required this.image,
    this.environment,
    this.repositoryCredentials,
    this.secret,
  });

  final TfArg<List<Object?>>? awsLogsConfiguration;

  final TfArg<List<String>>? command;

  final TfArg<num>? containerPort;

  final TfArg<String> image;

  final List<EcsExpressGatewayServiceEnvironment>? environment;

  final List<EcsExpressGatewayServiceRepositoryCredentials>?
  repositoryCredentials;

  final List<EcsExpressGatewayServiceSecret>? secret;

  @internal
  Map<String, Object?> encode() => {
    'aws_logs_configuration': ?awsLogsConfiguration?.toTfJson(),
    'command': ?command?.toTfJson(),
    'container_port': ?containerPort?.toTfJson(),
    'image': image.toTfJson(),
    if (environment != null)
      'environment': [for (final e in environment!) e.encode()],
    if (repositoryCredentials != null)
      'repository_credentials': [
        for (final e in repositoryCredentials!) e.encode(),
      ],
    if (secret != null) 'secret': [for (final e in secret!) e.encode()],
  };
}

/// Typed helper for the `primary_container.environment` block of
/// `aws_ecs_express_gateway_service` (derived from provider schema).
@immutable
final class EcsExpressGatewayServiceEnvironment {
  const EcsExpressGatewayServiceEnvironment({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `primary_container.repository_credentials` block of
/// `aws_ecs_express_gateway_service` (derived from provider schema).
@immutable
final class EcsExpressGatewayServiceRepositoryCredentials {
  const EcsExpressGatewayServiceRepositoryCredentials({
    required this.credentialsParameter,
  });

  final TfArg<String> credentialsParameter;

  @internal
  Map<String, Object?> encode() => {
    'credentials_parameter': credentialsParameter.toTfJson(),
  };
}

/// Typed helper for the `primary_container.secret` block of
/// `aws_ecs_express_gateway_service` (derived from provider schema).
@immutable
final class EcsExpressGatewayServiceSecret {
  const EcsExpressGatewayServiceSecret({
    required this.name,
    required this.valueFrom,
  });

  final TfArg<String> name;

  final TfArg<String> valueFrom;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_from': valueFrom.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_express_gateway_service`.
final class AwsEcsExpressGatewayService extends Resource {
  static const String tfType = 'aws_ecs_express_gateway_service';

  AwsEcsExpressGatewayService(
    super.localName, {
    RefTo<AwsEcsCluster>? cluster,
    TfArg<String>? cpu,
    required RefTo<AwsIamRole> executionRoleArn,
    TfArg<String>? healthCheckPath,
    required RefTo<AwsIamRole> infrastructureRoleArn,
    TfArg<String>? memory,
    TfArg<List<Map<String, Object?>>>? networkConfiguration,
    TfArg<String>? region,
    TfArg<List<Map<String, Object?>>>? scalingTarget,
    TfArg<String>? serviceName,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsIamRole>? taskRoleArn,
    TfArg<bool>? waitForSteadyState,
    List<EcsExpressGatewayServicePrimaryContainer>? primaryContainer,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': ?cluster?.encodeAs('arn'),
           'cpu': ?cpu,
           'execution_role_arn': executionRoleArn.encodeAs('arn'),
           'health_check_path': ?healthCheckPath,
           'infrastructure_role_arn': infrastructureRoleArn.encodeAs('arn'),
           'memory': ?memory,
           'network_configuration': ?networkConfiguration,
           'region': ?region,
           'scaling_target': ?scalingTarget,
           'service_name': ?serviceName,
           'tags': ?tags,
           'task_role_arn': ?taskRoleArn?.encodeAs('arn'),
           'wait_for_steady_state': ?waitForSteadyState,
           if (primaryContainer != null)
             'primary_container': TfArg.literal([
               for (final e in primaryContainer) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsExpressGatewayServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsExpressGatewayService>`.
  RefTo<AwsEcsExpressGatewayService> get ref => RefTo.of(this);

  /// Reference to `current_deployment` attribute.
  TfRef<String> get currentDeployment =>
      TfRef.attribute<String>(this, 'current_deployment');

  /// Reference to `ingress_paths` attribute.
  TfRef<List<Map<String, Object?>>> get ingressPaths =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ingress_paths');

  /// Reference to `service_arn` attribute.
  TfRef<String> get serviceArn => TfRef.attribute<String>(this, 'service_arn');

  /// Reference to `service_revision_arn` attribute.
  TfRef<String> get serviceRevisionArn =>
      TfRef.attribute<String>(this, 'service_revision_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `cpu` attribute.
  TfRef<String> get cpu => TfRef.attribute<String>(this, 'cpu');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `health_check_path` attribute.
  TfRef<String> get healthCheckPath =>
      TfRef.attribute<String>(this, 'health_check_path');

  /// Reference to `infrastructure_role_arn` attribute.
  TfRef<String> get infrastructureRoleArn =>
      TfRef.attribute<String>(this, 'infrastructure_role_arn');

  /// Reference to `memory` attribute.
  TfRef<String> get memory => TfRef.attribute<String>(this, 'memory');

  /// Reference to `network_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get networkConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'network_configuration',
      );

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scaling_target` attribute.
  TfRef<List<Map<String, Object?>>> get scalingTarget =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scaling_target');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `task_role_arn` attribute.
  TfRef<String> get taskRoleArn =>
      TfRef.attribute<String>(this, 'task_role_arn');

  /// Reference to `wait_for_steady_state` attribute.
  TfRef<bool> get waitForSteadyState =>
      TfRef.attribute<bool>(this, 'wait_for_steady_state');
}
