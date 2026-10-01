// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_workspacesweb_session_logger`.
const Set<String> _awsWorkspaceswebSessionLoggerSensitive = <String>{};

/// Exactly one of `all`, `include` on the `event_filter` block of `aws_workspacesweb_session_logger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.all(...)`.
sealed class WorkspaceswebSessionLoggerEventFilter {
  const WorkspaceswebSessionLoggerEventFilter();

  /// Sets `all`.
  const factory WorkspaceswebSessionLoggerEventFilter.all(
    List<WorkspaceswebSessionLoggerAll> all,
  ) = WorkspaceswebSessionLoggerEventFilterAll;

  /// Sets `include`.
  const factory WorkspaceswebSessionLoggerEventFilter.include(
    List<TfArg<WorkspaceswebSessionLoggerInclude>> include,
  ) = WorkspaceswebSessionLoggerEventFilterInclude;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [WorkspaceswebSessionLoggerEventFilter.all] choice: sets `all`.
final class WorkspaceswebSessionLoggerEventFilterAll
    extends WorkspaceswebSessionLoggerEventFilter {
  const WorkspaceswebSessionLoggerEventFilterAll(this.all);

  final List<WorkspaceswebSessionLoggerAll> all;

  @override
  String get blockKey => 'all';

  @override
  Map<String, Object?> encode() => {
    'all': [for (final e in all) e.encode()],
  };
}

/// The [WorkspaceswebSessionLoggerEventFilter.include] choice: sets `include`.
final class WorkspaceswebSessionLoggerEventFilterInclude
    extends WorkspaceswebSessionLoggerEventFilter {
  const WorkspaceswebSessionLoggerEventFilterInclude(this.include);

  final List<TfArg<WorkspaceswebSessionLoggerInclude>> include;

  @override
  String get blockKey => 'include';

  @override
  Map<String, Object?> encode() => {
    'include': [for (final e in include) e.toTfJson()],
  };
}

/// `include` — derived from the provider schema description.
enum WorkspaceswebSessionLoggerInclude implements TerraformEnum {
  websiteinteract('WebsiteInteract'),
  filedownloadfromsecurebrowsertoremotedisk(
    'FileDownloadFromSecureBrowserToRemoteDisk',
  ),
  filetransferfromremotetolocaldisk('FileTransferFromRemoteToLocalDisk'),
  filetransferfromlocaltoremotedisk('FileTransferFromLocalToRemoteDisk'),
  fileuploadfromremotedisktosecurebrowser(
    'FileUploadFromRemoteDiskToSecureBrowser',
  ),
  contentpastetowebsite('ContentPasteToWebsite'),
  contenttransferfromlocaltoremoteclipboard(
    'ContentTransferFromLocalToRemoteClipboard',
  ),
  contentcopyfromwebsite('ContentCopyFromWebsite'),
  urlload('UrlLoad'),
  tabopen('TabOpen'),
  tabclose('TabClose'),
  printjobsubmit('PrintJobSubmit'),
  sessionconnect('SessionConnect'),
  sessionstart('SessionStart'),
  sessiondisconnect('SessionDisconnect'),
  sessionend('SessionEnd'),
  urlblockbycontentfilter('UrlBlockByContentFilter');

  const WorkspaceswebSessionLoggerInclude(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `event_filter.all` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerAll {
  const WorkspaceswebSessionLoggerAll();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `log_configuration` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerLogConfiguration {
  const WorkspaceswebSessionLoggerLogConfiguration({this.s3});

  final List<WorkspaceswebSessionLoggerS3>? s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `log_configuration.s3` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerS3 {
  const WorkspaceswebSessionLoggerS3({
    required this.bucket,
    this.bucketOwner,
    required this.folderStructure,
    this.keyPrefix,
    required this.logFileFormat,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String>? bucketOwner;

  final TfArg<WorkspaceswebSessionLoggerFolderStructure> folderStructure;

  final TfArg<String>? keyPrefix;

  final TfArg<WorkspaceswebSessionLoggerLogFileFormat> logFileFormat;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'bucket_owner': ?bucketOwner?.toTfJson(),
    'folder_structure': folderStructure.toTfJson(),
    'key_prefix': ?keyPrefix?.toTfJson(),
    'log_file_format': logFileFormat.toTfJson(),
  };
}

/// `folder_structure` — derived from the provider schema description.
enum WorkspaceswebSessionLoggerFolderStructure implements TerraformEnum {
  flat('Flat'),
  nestedbydate('NestedByDate');

  const WorkspaceswebSessionLoggerFolderStructure(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_file_format` — derived from the provider schema description.
enum WorkspaceswebSessionLoggerLogFileFormat implements TerraformEnum {
  jsonlines('JSONLines'),
  json('Json');

  const WorkspaceswebSessionLoggerLogFileFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_workspacesweb_session_logger`.
final class AwsWorkspaceswebSessionLogger extends Resource {
  static const String tfType = 'aws_workspacesweb_session_logger';

  AwsWorkspaceswebSessionLogger(
    super.localName, {
    TfArg<Map<String, String>>? additionalEncryptionContext,
    TfArg<String>? customerManagedKey,
    TfArg<String>? displayName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<WorkspaceswebSessionLoggerEventFilter>? eventFilter,
    List<WorkspaceswebSessionLoggerLogConfiguration>? logConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_encryption_context': ?additionalEncryptionContext,
           'customer_managed_key': ?customerManagedKey,
           'display_name': ?displayName,
           'region': ?region,
           'tags': ?tags,
           if (eventFilter != null)
             'event_filter': TfArg.literal([
               for (final e in eventFilter) e.encode(),
             ]),
           if (logConfiguration != null)
             'log_configuration': TfArg.literal([
               for (final e in logConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebSessionLoggerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebSessionLogger>`.
  RefTo<AwsWorkspaceswebSessionLogger> get ref => RefTo.of(this);

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `session_logger_arn` attribute.
  TfRef<String> get sessionLoggerArn =>
      TfRef.attribute<String>(this, 'session_logger_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `additional_encryption_context` attribute.
  TfRef<Map<String, String>> get additionalEncryptionContext =>
      TfRef.attribute<Map<String, String>>(
        this,
        'additional_encryption_context',
      );

  /// Reference to `customer_managed_key` attribute.
  TfRef<String> get customerManagedKey =>
      TfRef.attribute<String>(this, 'customer_managed_key');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
