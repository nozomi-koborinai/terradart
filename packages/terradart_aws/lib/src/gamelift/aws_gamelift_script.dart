// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_gamelift_script`.
const Set<String> _awsGameliftScriptSensitive = <String>{};

/// Exactly one of `storage_location`, `zip_file` on `aws_gamelift_script`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.storageLocation(...)`.
sealed class GameliftScriptStorageLocationOrZipFile {
  const GameliftScriptStorageLocationOrZipFile();

  /// Sets `storage_location`.
  const factory GameliftScriptStorageLocationOrZipFile.storageLocation(
    GameliftScriptStorageLocation storageLocation,
  ) = GameliftScriptStorageLocationOrZipFileStorageLocation;

  /// Sets `zip_file`.
  const factory GameliftScriptStorageLocationOrZipFile.zipFile(
    TfArg<String> zipFile,
  ) = GameliftScriptStorageLocationOrZipFileZipFile;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [GameliftScriptStorageLocationOrZipFile.storageLocation] choice: sets `storage_location`.
final class GameliftScriptStorageLocationOrZipFileStorageLocation
    extends GameliftScriptStorageLocationOrZipFile {
  const GameliftScriptStorageLocationOrZipFileStorageLocation(
    this.storageLocation,
  );

  final GameliftScriptStorageLocation storageLocation;

  @override
  String get blockKey => 'storage_location';

  @override
  Map<String, Object?> encode() => {
    'storage_location': storageLocation.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'storage_location': TfArg.literal(storageLocation.encode()),
  };
}

/// The [GameliftScriptStorageLocationOrZipFile.zipFile] choice: sets `zip_file`.
final class GameliftScriptStorageLocationOrZipFileZipFile
    extends GameliftScriptStorageLocationOrZipFile {
  const GameliftScriptStorageLocationOrZipFileZipFile(this.zipFile);

  final TfArg<String> zipFile;

  @override
  String get blockKey => 'zip_file';

  @override
  Map<String, Object?> encode() => {'zip_file': zipFile.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'zip_file': zipFile};
}

/// Typed helper for the `storage_location` block of
/// `aws_gamelift_script` (derived from provider schema).
@immutable
final class GameliftScriptStorageLocation {
  const GameliftScriptStorageLocation({
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

/// Factory wrapper for `aws_gamelift_script`.
final class AwsGameliftScript extends Resource {
  static const String tfType = 'aws_gamelift_script';

  AwsGameliftScript({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? version,
    required GameliftScriptStorageLocationOrZipFile storageLocationOrZipFile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (version != null) 'version': version,
           ...storageLocationOrZipFile.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftScriptSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGameliftScript>`.
  RefTo<AwsGameliftScript> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
