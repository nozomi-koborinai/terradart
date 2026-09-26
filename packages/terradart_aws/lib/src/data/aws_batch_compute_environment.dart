// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_compute_environment`.
const Set<String> _awsBatchComputeEnvironmentSensitive = <String>{};

/// Factory wrapper for `aws_batch_compute_environment`.
final class DataAwsBatchComputeEnvironment extends Data {
  static const String tfType = 'aws_batch_compute_environment';

  DataAwsBatchComputeEnvironment({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBatchComputeEnvironmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ecs_cluster_arn` attribute.
  TfRef<String> get ecsClusterArn =>
      TfRef.attribute<String>(this, 'ecs_cluster_arn');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRole =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `update_policy` attribute.
  TfRef<List<Map<String, Object?>>> get updatePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'update_policy');
}
