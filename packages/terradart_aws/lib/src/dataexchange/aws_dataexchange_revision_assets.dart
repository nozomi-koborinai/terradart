// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dataexchange_revision_assets`.
const Set<String> _awsDataexchangeRevisionAssetsSensitive = <String>{};

/// Typed helper for the `asset` block of
/// `aws_dataexchange_revision_assets` (derived from provider schema).
@immutable
final class DataexchangeRevisionAssetsAsset {
  const DataexchangeRevisionAssetsAsset({
    this.createS3DataAccessFromS3Bucket,
    this.importAssetsFromS3,
    this.importAssetsFromSignedUrl,
  });

  final List<DataexchangeRevisionAssetsAssetCreateS3DataAccessFromS3Bucket>?
  createS3DataAccessFromS3Bucket;

  final List<DataexchangeRevisionAssetsAssetImportAssetsFromS3>?
  importAssetsFromS3;

  final List<DataexchangeRevisionAssetsAssetImportAssetsFromSignedUrl>?
  importAssetsFromSignedUrl;

  Map<String, Object?> encode() => {
    if (createS3DataAccessFromS3Bucket != null)
      'create_s3_data_access_from_s3_bucket': [
        for (final e in createS3DataAccessFromS3Bucket!) e.encode(),
      ],
    if (importAssetsFromS3 != null)
      'import_assets_from_s3': [
        for (final e in importAssetsFromS3!) e.encode(),
      ],
    if (importAssetsFromSignedUrl != null)
      'import_assets_from_signed_url': [
        for (final e in importAssetsFromSignedUrl!) e.encode(),
      ],
  };
}

/// Typed helper for the `asset.create_s3_data_access_from_s3_bucket` block of
/// `aws_dataexchange_revision_assets` (derived from provider schema).
@immutable
final class DataexchangeRevisionAssetsAssetCreateS3DataAccessFromS3Bucket {
  const DataexchangeRevisionAssetsAssetCreateS3DataAccessFromS3Bucket({
    this.assetSource,
  });

  final List<
    DataexchangeRevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource
  >?
  assetSource;

  Map<String, Object?> encode() => {
    if (assetSource != null)
      'asset_source': [for (final e in assetSource!) e.encode()],
  };
}

/// Typed helper for the `asset.create_s3_data_access_from_s3_bucket.asset_source` block of
/// `aws_dataexchange_revision_assets` (derived from provider schema).
@immutable
final class DataexchangeRevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource {
  const DataexchangeRevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource({
    required this.bucket,
    this.keyPrefixes,
    this.keys,
    this.kmsKeysToGrant,
  });

  final TfArg<String> bucket;

  final TfArg<List<Object?>>? keyPrefixes;

  final TfArg<List<Object?>>? keys;

  final List<
    DataexchangeRevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant
  >?
  kmsKeysToGrant;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (keyPrefixes != null) 'key_prefixes': keyPrefixes!.toTfJson(),
    if (keys != null) 'keys': keys!.toTfJson(),
    if (kmsKeysToGrant != null)
      'kms_keys_to_grant': [for (final e in kmsKeysToGrant!) e.encode()],
  };
}

/// Typed helper for the `asset.create_s3_data_access_from_s3_bucket.asset_source.kms_keys_to_grant` block of
/// `aws_dataexchange_revision_assets` (derived from provider schema).
@immutable
final class DataexchangeRevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant {
  const DataexchangeRevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant({
    required this.kmsKeyArn,
  });

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Typed helper for the `asset.import_assets_from_s3` block of
/// `aws_dataexchange_revision_assets` (derived from provider schema).
@immutable
final class DataexchangeRevisionAssetsAssetImportAssetsFromS3 {
  const DataexchangeRevisionAssetsAssetImportAssetsFromS3({this.assetSource});

  final List<DataexchangeRevisionAssetsAssetImportAssetsFromS3AssetSource>?
  assetSource;

  Map<String, Object?> encode() => {
    if (assetSource != null)
      'asset_source': [for (final e in assetSource!) e.encode()],
  };
}

/// Typed helper for the `asset.import_assets_from_s3.asset_source` block of
/// `aws_dataexchange_revision_assets` (derived from provider schema).
@immutable
final class DataexchangeRevisionAssetsAssetImportAssetsFromS3AssetSource {
  const DataexchangeRevisionAssetsAssetImportAssetsFromS3AssetSource({
    required this.bucket,
    required this.key,
  });

  final TfArg<String> bucket;

  final TfArg<String> key;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Typed helper for the `asset.import_assets_from_signed_url` block of
/// `aws_dataexchange_revision_assets` (derived from provider schema).
@immutable
final class DataexchangeRevisionAssetsAssetImportAssetsFromSignedUrl {
  const DataexchangeRevisionAssetsAssetImportAssetsFromSignedUrl({
    required this.filename,
  });

  final TfArg<String> filename;

  Map<String, Object?> encode() => {'filename': filename.toTfJson()};
}

/// Factory wrapper for `aws_dataexchange_revision_assets`.
final class AwsDataexchangeRevisionAssets extends Resource {
  static const String tfType = 'aws_dataexchange_revision_assets';

  AwsDataexchangeRevisionAssets({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<String> dataSetId,
    TfArg<bool>? finalized,
    TfArg<bool>? forceDestroy,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataexchangeRevisionAssetsAsset>? asset,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'data_set_id': dataSetId,
           if (finalized != null) 'finalized': finalized,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (asset != null)
             'asset': TfArg.literal([for (final e in asset) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDataexchangeRevisionAssetsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
