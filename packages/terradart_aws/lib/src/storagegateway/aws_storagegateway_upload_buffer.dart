// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_upload_buffer`.
const Set<String> _awsStoragegatewayUploadBufferSensitive = <String>{};

/// Exactly one of `disk_id`, `disk_path` on `aws_storagegateway_upload_buffer`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class StoragegatewayUploadBufferDiskIdOrDiskPath {
  const StoragegatewayUploadBufferDiskIdOrDiskPath();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `disk_id` (one of the [StoragegatewayUploadBufferDiskIdOrDiskPath] choices).
final class StoragegatewayUploadBufferDiskIdOption
    extends StoragegatewayUploadBufferDiskIdOrDiskPath {
  const StoragegatewayUploadBufferDiskIdOption({required this.diskId});

  final TfArg<String> diskId;

  @override
  String get blockKey => 'disk_id';

  @override
  Map<String, Object?> encode() => {'disk_id': diskId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'disk_id': diskId};
}

/// Sets `disk_path` (one of the [StoragegatewayUploadBufferDiskIdOrDiskPath] choices).
final class StoragegatewayUploadBufferDiskPathOption
    extends StoragegatewayUploadBufferDiskIdOrDiskPath {
  const StoragegatewayUploadBufferDiskPathOption({required this.diskPath});

  final TfArg<String> diskPath;

  @override
  String get blockKey => 'disk_path';

  @override
  Map<String, Object?> encode() => {'disk_path': diskPath.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'disk_path': diskPath};
}

/// Factory wrapper for `aws_storagegateway_upload_buffer`.
final class AwsStoragegatewayUploadBuffer extends Resource {
  static const String tfType = 'aws_storagegateway_upload_buffer';

  AwsStoragegatewayUploadBuffer({
    required super.localName,
    required StoragegatewayUploadBufferDiskIdOrDiskPath diskIdOrDiskPath,
    required TfArg<String> gatewayArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...diskIdOrDiskPath.argMap,
           'gateway_arn': gatewayArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewayUploadBufferSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
