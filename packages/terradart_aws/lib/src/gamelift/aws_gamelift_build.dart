// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_gamelift_build`.
const Set<String> _awsGameliftBuildSensitive = <String>{};

/// Gamelift Build Operating enum for `operating_system`.
extension type const GameliftBuildOperatingSystem._(TfArg<String> _)
    implements TfArg<String> {
  GameliftBuildOperatingSystem.variable(String name)
    : this._(TfArg.variable(name));
  GameliftBuildOperatingSystem.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftBuildOperatingSystem.arg(TfArg<String> arg) : this._(arg);

  static const windows2012 = GameliftBuildOperatingSystem._(
    TfArgLiteral('WINDOWS_2012'),
  );
  static const amazonLinux = GameliftBuildOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX'),
  );
  static const amazonLinux2 = GameliftBuildOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX_2'),
  );
  static const windows2016 = GameliftBuildOperatingSystem._(
    TfArgLiteral('WINDOWS_2016'),
  );
  static const amazonLinux2023 = GameliftBuildOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX_2023'),
  );
  static const windows2022 = GameliftBuildOperatingSystem._(
    TfArgLiteral('WINDOWS_2022'),
  );

  static const List<GameliftBuildOperatingSystem> values = [
    windows2012,
    amazonLinux,
    amazonLinux2,
    windows2016,
    amazonLinux2023,
    windows2022,
  ];
}

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

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String> key;

  final TfArg<String>? objectVersion;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'key': key.toTfJson(),
    'object_version': ?objectVersion?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_gamelift_build`.
final class AwsGameliftBuild extends Resource {
  static const String tfType = 'aws_gamelift_build';

  AwsGameliftBuild(
    super.localName, {
    required TfArg<String> name,
    required GameliftBuildOperatingSystem operatingSystem,
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
           'region': ?region,
           'tags': ?tags,
           'version': ?version,
           'storage_location': TfArg.literal(storageLocation.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftBuildSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGameliftBuild>`.
  RefTo<AwsGameliftBuild> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `operating_system` attribute.
  TfRef<String> get operatingSystem =>
      TfRef.attribute<String>(this, 'operating_system');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
