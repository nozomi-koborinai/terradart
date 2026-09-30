// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../efs/aws_efs_access_point.dart';

/// Sensitive field paths for `aws_efs_access_point`.
const Set<String> _awsEfsAccessPointSensitive = <String>{};

/// Factory wrapper for `aws_efs_access_point`.
final class DataAwsEfsAccessPoint extends Data {
  static const String tfType = 'aws_efs_access_point';

  DataAwsEfsAccessPoint({
    required super.localName,
    required TfArg<String> accessPointId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_point_id': accessPointId,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsAccessPointSensitive;

  /// A reference to the `aws_efs_access_point` this data source reads, for
  /// arguments typed `RefTo<AwsEfsAccessPoint>`.
  RefTo<AwsEfsAccessPoint> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `file_system_arn` attribute.
  TfRef<String> get fileSystemArn =>
      TfRef.attribute<String>(this, 'file_system_arn');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `posix_user` attribute.
  TfRef<List<Map<String, Object?>>> get posixUser =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'posix_user');

  /// Reference to `root_directory` attribute.
  TfRef<List<Map<String, Object?>>> get rootDirectory =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'root_directory');

  /// Reference to `access_point_id` attribute.
  TfRef<String> get accessPointIdRef =>
      TfRef.attribute<String>(this, 'access_point_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
