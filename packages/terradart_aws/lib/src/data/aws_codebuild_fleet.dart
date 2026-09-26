// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_fleet`.
const Set<String> _awsCodebuildFleetSensitive = <String>{};

/// Factory wrapper for `aws_codebuild_fleet`.
final class DataAwsCodebuildFleet extends Data {
  static const String tfType = 'aws_codebuild_fleet';

  DataAwsCodebuildFleet({
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
  Set<String> get sensitiveFields => _awsCodebuildFleetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `base_capacity` attribute.
  TfRef<num> get baseCapacity => TfRef.attribute<num>(this, 'base_capacity');

  /// Reference to `compute_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get computeConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'compute_configuration',
      );

  /// Reference to `compute_type` attribute.
  TfRef<String> get computeType =>
      TfRef.attribute<String>(this, 'compute_type');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `environment_type` attribute.
  TfRef<String> get environmentType =>
      TfRef.attribute<String>(this, 'environment_type');

  /// Reference to `fleet_service_role` attribute.
  TfRef<String> get fleetServiceRole =>
      TfRef.attribute<String>(this, 'fleet_service_role');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `overflow_behavior` attribute.
  TfRef<String> get overflowBehavior =>
      TfRef.attribute<String>(this, 'overflow_behavior');

  /// Reference to `scaling_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get scalingConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'scaling_configuration',
      );

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `vpc_config` attribute.
  TfRef<List<Map<String, Object?>>> get vpcConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_config');
}
