// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../codebuild/aws_codebuild_fleet.dart';

/// Sensitive field paths for `aws_codebuild_fleet`.
const Set<String> _awsCodebuildFleetSensitive = <String>{};

/// Factory wrapper for `aws_codebuild_fleet`.
final class DataAwsCodebuildFleet extends Data {
  static const String tfType = 'aws_codebuild_fleet';

  DataAwsCodebuildFleet(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildFleetSensitive;

  /// A reference to the `aws_codebuild_fleet` this data source reads, for
  /// arguments typed `RefTo<AwsCodebuildFleet>`.
  RefTo<AwsCodebuildFleet> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
