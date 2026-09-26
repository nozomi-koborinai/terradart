// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<Object?>>? command;

  final TfArg<num>? containerPort;

  final TfArg<String> image;

  final List<EcsExpressGatewayServicePrimaryContainerEnvironment>? environment;

  final List<EcsExpressGatewayServicePrimaryContainerRepositoryCredentials>?
  repositoryCredentials;

  final List<EcsExpressGatewayServicePrimaryContainerSecret>? secret;

  Map<String, Object?> encode() => {
    if (awsLogsConfiguration != null)
      'aws_logs_configuration': awsLogsConfiguration!.toTfJson(),
    if (command != null) 'command': command!.toTfJson(),
    if (containerPort != null) 'container_port': containerPort!.toTfJson(),
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
final class EcsExpressGatewayServicePrimaryContainerEnvironment {
  const EcsExpressGatewayServicePrimaryContainerEnvironment({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `primary_container.repository_credentials` block of
/// `aws_ecs_express_gateway_service` (derived from provider schema).
@immutable
final class EcsExpressGatewayServicePrimaryContainerRepositoryCredentials {
  const EcsExpressGatewayServicePrimaryContainerRepositoryCredentials({
    required this.credentialsParameter,
  });

  final TfArg<String> credentialsParameter;

  Map<String, Object?> encode() => {
    'credentials_parameter': credentialsParameter.toTfJson(),
  };
}

/// Typed helper for the `primary_container.secret` block of
/// `aws_ecs_express_gateway_service` (derived from provider schema).
@immutable
final class EcsExpressGatewayServicePrimaryContainerSecret {
  const EcsExpressGatewayServicePrimaryContainerSecret({
    required this.name,
    required this.valueFrom,
  });

  final TfArg<String> name;

  final TfArg<String> valueFrom;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_from': valueFrom.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_express_gateway_service`.
final class AwsEcsExpressGatewayService extends Resource {
  static const String tfType = 'aws_ecs_express_gateway_service';

  AwsEcsExpressGatewayService({
    required super.localName,
    TfArg<String>? cluster,
    TfArg<String>? cpu,
    required TfArg<String> executionRoleArn,
    TfArg<String>? healthCheckPath,
    required TfArg<String> infrastructureRoleArn,
    TfArg<String>? memory,
    TfArg<List<Map<String, Object?>>>? networkConfiguration,
    TfArg<String>? region,
    TfArg<List<Map<String, Object?>>>? scalingTarget,
    TfArg<String>? serviceName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? taskRoleArn,
    TfArg<bool>? waitForSteadyState,
    List<EcsExpressGatewayServicePrimaryContainer>? primaryContainer,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cluster != null) 'cluster': cluster,
           if (cpu != null) 'cpu': cpu,
           'execution_role_arn': executionRoleArn,
           if (healthCheckPath != null) 'health_check_path': healthCheckPath,
           'infrastructure_role_arn': infrastructureRoleArn,
           if (memory != null) 'memory': memory,
           if (networkConfiguration != null)
             'network_configuration': networkConfiguration,
           if (region != null) 'region': region,
           if (scalingTarget != null) 'scaling_target': scalingTarget,
           if (serviceName != null) 'service_name': serviceName,
           if (tags != null) 'tags': tags,
           if (taskRoleArn != null) 'task_role_arn': taskRoleArn,
           if (waitForSteadyState != null)
             'wait_for_steady_state': waitForSteadyState,
           if (primaryContainer != null)
             'primary_container': TfArg.literal([
               for (final e in primaryContainer) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsExpressGatewayServiceSensitive;

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
}
