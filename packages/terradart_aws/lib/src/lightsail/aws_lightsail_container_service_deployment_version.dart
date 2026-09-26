// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_container_service_deployment_version`.
const Set<String> _awsLightsailContainerServiceDeploymentVersionSensitive =
    <String>{};

/// Typed helper for the `container` block of
/// `aws_lightsail_container_service_deployment_version` (derived from provider schema).
@immutable
final class LightsailContainerServiceDeploymentVersionContainer {
  const LightsailContainerServiceDeploymentVersionContainer({
    this.command,
    required this.containerName,
    this.environment,
    required this.image,
    this.ports,
  });

  final TfArg<List<Object?>>? command;

  final TfArg<String> containerName;

  final TfArg<Map<String, String>>? environment;

  final TfArg<String> image;

  final TfArg<Map<String, String>>? ports;

  Map<String, Object?> encode() => {
    if (command != null) 'command': command!.toTfJson(),
    'container_name': containerName.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    'image': image.toTfJson(),
    if (ports != null) 'ports': ports!.toTfJson(),
  };
}

/// Typed helper for the `public_endpoint` block of
/// `aws_lightsail_container_service_deployment_version` (derived from provider schema).
@immutable
final class LightsailContainerServiceDeploymentVersionPublicEndpoint {
  const LightsailContainerServiceDeploymentVersionPublicEndpoint({
    required this.containerName,
    required this.containerPort,
    required this.healthCheck,
  });

  final TfArg<String> containerName;

  final TfArg<num> containerPort;

  final LightsailContainerServiceDeploymentVersionPublicEndpointHealthCheck
  healthCheck;

  Map<String, Object?> encode() => {
    'container_name': containerName.toTfJson(),
    'container_port': containerPort.toTfJson(),
    'health_check': healthCheck.encode(),
  };
}

/// Typed helper for the `public_endpoint.health_check` block of
/// `aws_lightsail_container_service_deployment_version` (derived from provider schema).
@immutable
final class LightsailContainerServiceDeploymentVersionPublicEndpointHealthCheck {
  const LightsailContainerServiceDeploymentVersionPublicEndpointHealthCheck({
    this.healthyThreshold,
    this.intervalSeconds,
    this.path,
    this.successCodes,
    this.timeoutSeconds,
    this.unhealthyThreshold,
  });

  final TfArg<num>? healthyThreshold;

  final TfArg<num>? intervalSeconds;

  final TfArg<String>? path;

  final TfArg<String>? successCodes;

  final TfArg<num>? timeoutSeconds;

  final TfArg<num>? unhealthyThreshold;

  Map<String, Object?> encode() => {
    if (healthyThreshold != null)
      'healthy_threshold': healthyThreshold!.toTfJson(),
    if (intervalSeconds != null)
      'interval_seconds': intervalSeconds!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (successCodes != null) 'success_codes': successCodes!.toTfJson(),
    if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds!.toTfJson(),
    if (unhealthyThreshold != null)
      'unhealthy_threshold': unhealthyThreshold!.toTfJson(),
  };
}

/// Factory wrapper for `aws_lightsail_container_service_deployment_version`.
final class AwsLightsailContainerServiceDeploymentVersion extends Resource {
  static const String tfType =
      'aws_lightsail_container_service_deployment_version';

  AwsLightsailContainerServiceDeploymentVersion({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> serviceName,
    required List<LightsailContainerServiceDeploymentVersionContainer>
    container,
    LightsailContainerServiceDeploymentVersionPublicEndpoint? publicEndpoint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'service_name': serviceName,
           'container': TfArg.literal([for (final e in container) e.encode()]),
           if (publicEndpoint != null)
             'public_endpoint': TfArg.literal(publicEndpoint.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsLightsailContainerServiceDeploymentVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
