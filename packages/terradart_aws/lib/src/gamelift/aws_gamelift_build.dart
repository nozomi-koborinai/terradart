// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_gamelift_build`.
const Set<String> _awsGameliftBuildSensitive = <String>{};

/// Typed helper for the `storage_location` block of
/// `aws_gamelift_build` (derived from provider schema).
@immutable
final class GameliftBuildStorageLocation {
  const GameliftBuildStorageLocation({
    required this.bucket,
    required this.key,
    this.objectVersion,
    required this.roleArn,
  });

  final TfArg<String> bucket;

  final TfArg<String> key;

  final TfArg<String>? objectVersion;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'key': key.toTfJson(),
    if (objectVersion != null) 'object_version': objectVersion!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_gamelift_build`.
final class AwsGameliftBuild extends Resource {
  static const String tfType = 'aws_gamelift_build';

  AwsGameliftBuild({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> operatingSystem,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? version,
    required GameliftBuildStorageLocation storageLocation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'operating_system': operatingSystem,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (version != null) 'version': version,
           'storage_location': TfArg.literal(storageLocation.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftBuildSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
