// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_data_repository_association`.
const Set<String> _awsFsxDataRepositoryAssociationSensitive = <String>{};

/// Typed helper for the `s3` block of
/// `aws_fsx_data_repository_association` (derived from provider schema).
@immutable
final class FsxDataRepositoryAssociationS3 {
  const FsxDataRepositoryAssociationS3({
    this.autoExportPolicy,
    this.autoImportPolicy,
  });

  final FsxDataRepositoryAssociationS3AutoExportPolicy? autoExportPolicy;

  final FsxDataRepositoryAssociationS3AutoImportPolicy? autoImportPolicy;

  Map<String, Object?> encode() => {
    if (autoExportPolicy != null)
      'auto_export_policy': autoExportPolicy!.encode(),
    if (autoImportPolicy != null)
      'auto_import_policy': autoImportPolicy!.encode(),
  };
}

/// Typed helper for the `s3.auto_export_policy` block of
/// `aws_fsx_data_repository_association` (derived from provider schema).
@immutable
final class FsxDataRepositoryAssociationS3AutoExportPolicy {
  const FsxDataRepositoryAssociationS3AutoExportPolicy({this.events});

  final TfArg<List<Object?>>? events;

  Map<String, Object?> encode() => {
    if (events != null) 'events': events!.toTfJson(),
  };
}

/// Typed helper for the `s3.auto_import_policy` block of
/// `aws_fsx_data_repository_association` (derived from provider schema).
@immutable
final class FsxDataRepositoryAssociationS3AutoImportPolicy {
  const FsxDataRepositoryAssociationS3AutoImportPolicy({this.events});

  final TfArg<List<Object?>>? events;

  Map<String, Object?> encode() => {
    if (events != null) 'events': events!.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_data_repository_association`.
final class AwsFsxDataRepositoryAssociation extends Resource {
  static const String tfType = 'aws_fsx_data_repository_association';

  AwsFsxDataRepositoryAssociation({
    required super.localName,
    TfArg<bool>? batchImportMetaDataOnCreate,
    required TfArg<String> dataRepositoryPath,
    TfArg<bool>? deleteDataInFilesystem,
    required TfArg<String> fileSystemId,
    required TfArg<String> fileSystemPath,
    TfArg<num>? importedFileChunkSize,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    FsxDataRepositoryAssociationS3? s3,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (batchImportMetaDataOnCreate != null)
             'batch_import_meta_data_on_create': batchImportMetaDataOnCreate,
           'data_repository_path': dataRepositoryPath,
           if (deleteDataInFilesystem != null)
             'delete_data_in_filesystem': deleteDataInFilesystem,
           'file_system_id': fileSystemId,
           'file_system_path': fileSystemPath,
           if (importedFileChunkSize != null)
             'imported_file_chunk_size': importedFileChunkSize,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (s3 != null) 's3': TfArg.literal(s3.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxDataRepositoryAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');
}
