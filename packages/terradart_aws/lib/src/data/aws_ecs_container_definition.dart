// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_container_definition`.
const Set<String> _awsEcsContainerDefinitionSensitive = <String>{};

/// Factory wrapper for `aws_ecs_container_definition`.
final class DataAwsEcsContainerDefinition extends Data {
  static const String tfType = 'aws_ecs_container_definition';

  DataAwsEcsContainerDefinition({
    required super.localName,
    required TfArg<String> containerName,
    TfArg<String>? region,
    required TfArg<String> taskDefinition,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_name': containerName,
           if (region != null) 'region': region,
           'task_definition': taskDefinition,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsContainerDefinitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cpu` attribute.
  TfRef<num> get cpu => TfRef.attribute<num>(this, 'cpu');

  /// Reference to `disable_networking` attribute.
  TfRef<bool> get disableNetworking =>
      TfRef.attribute<bool>(this, 'disable_networking');

  /// Reference to `docker_labels` attribute.
  TfRef<Map<String, String>> get dockerLabels =>
      TfRef.attribute<Map<String, String>>(this, 'docker_labels');

  /// Reference to `environment` attribute.
  TfRef<Map<String, String>> get environment =>
      TfRef.attribute<Map<String, String>>(this, 'environment');

  /// Reference to `image` attribute.
  TfRef<String> get image => TfRef.attribute<String>(this, 'image');

  /// Reference to `image_digest` attribute.
  TfRef<String> get imageDigest =>
      TfRef.attribute<String>(this, 'image_digest');

  /// Reference to `memory` attribute.
  TfRef<num> get memory => TfRef.attribute<num>(this, 'memory');

  /// Reference to `memory_reservation` attribute.
  TfRef<num> get memoryReservation =>
      TfRef.attribute<num>(this, 'memory_reservation');
}
