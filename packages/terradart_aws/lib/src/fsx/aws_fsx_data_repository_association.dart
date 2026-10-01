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

  final FsxDataRepositoryAssociationAutoExportPolicy? autoExportPolicy;

  final FsxDataRepositoryAssociationAutoImportPolicy? autoImportPolicy;

  Map<String, Object?> encode() => {
    'auto_export_policy': ?autoExportPolicy?.encode(),
    'auto_import_policy': ?autoImportPolicy?.encode(),
  };
}

/// Typed helper for the `s3.auto_export_policy` block of
/// `aws_fsx_data_repository_association` (derived from provider schema).
@immutable
final class FsxDataRepositoryAssociationAutoExportPolicy {
  const FsxDataRepositoryAssociationAutoExportPolicy({this.events});

  final List<TfArg<FsxDataRepositoryAssociationEvents>>? events;

  Map<String, Object?> encode() => {
    if (events != null) 'events': [for (final e in events!) e.toTfJson()],
  };
}

/// `events` — derived from the provider schema description.
enum FsxDataRepositoryAssociationEvents implements TerraformEnum {
  newCase('NEW'),
  changed('CHANGED'),
  deleted('DELETED');

  const FsxDataRepositoryAssociationEvents(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `s3.auto_import_policy` block of
/// `aws_fsx_data_repository_association` (derived from provider schema).
@immutable
final class FsxDataRepositoryAssociationAutoImportPolicy {
  const FsxDataRepositoryAssociationAutoImportPolicy({this.events});

  final List<TfArg<FsxDataRepositoryAssociationEvents>>? events;

  Map<String, Object?> encode() => {
    if (events != null) 'events': [for (final e in events!) e.toTfJson()],
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
           'batch_import_meta_data_on_create': ?batchImportMetaDataOnCreate,
           'data_repository_path': dataRepositoryPath,
           'delete_data_in_filesystem': ?deleteDataInFilesystem,
           'file_system_id': fileSystemId,
           'file_system_path': fileSystemPath,
           'imported_file_chunk_size': ?importedFileChunkSize,
           'region': ?region,
           'tags': ?tags,
           if (s3 != null) 's3': TfArg.literal(s3.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxDataRepositoryAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxDataRepositoryAssociation>`.
  RefTo<AwsFsxDataRepositoryAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');

  /// Reference to `batch_import_meta_data_on_create` attribute.
  TfRef<bool> get batchImportMetaDataOnCreate =>
      TfRef.attribute<bool>(this, 'batch_import_meta_data_on_create');

  /// Reference to `data_repository_path` attribute.
  TfRef<String> get dataRepositoryPath =>
      TfRef.attribute<String>(this, 'data_repository_path');

  /// Reference to `delete_data_in_filesystem` attribute.
  TfRef<bool> get deleteDataInFilesystem =>
      TfRef.attribute<bool>(this, 'delete_data_in_filesystem');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `file_system_path` attribute.
  TfRef<String> get fileSystemPath =>
      TfRef.attribute<String>(this, 'file_system_path');

  /// Reference to `imported_file_chunk_size` attribute.
  TfRef<num> get importedFileChunkSize =>
      TfRef.attribute<num>(this, 'imported_file_chunk_size');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
