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
    List<WorkspaceswebSessionLoggerEventFilterAll> all,
  ) = WorkspaceswebSessionLoggerEventFilterAllChoice;

  /// Sets `include`.
  const factory WorkspaceswebSessionLoggerEventFilter.include(
    List<TfArg<WorkspaceswebSessionLoggerEventFilterInclude>> include,
  ) = WorkspaceswebSessionLoggerEventFilterIncludeChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [WorkspaceswebSessionLoggerEventFilter.all] choice: sets `all`.
final class WorkspaceswebSessionLoggerEventFilterAllChoice
    extends WorkspaceswebSessionLoggerEventFilter {
  const WorkspaceswebSessionLoggerEventFilterAllChoice(this.all);

  final List<WorkspaceswebSessionLoggerEventFilterAll> all;

  @override
  String get blockKey => 'all';

  @override
  Map<String, Object?> encode() => {
    'all': [for (final e in all) e.encode()],
  };
}

/// The [WorkspaceswebSessionLoggerEventFilter.include] choice: sets `include`.
final class WorkspaceswebSessionLoggerEventFilterIncludeChoice
    extends WorkspaceswebSessionLoggerEventFilter {
  const WorkspaceswebSessionLoggerEventFilterIncludeChoice(this.include);

  final List<TfArg<WorkspaceswebSessionLoggerEventFilterInclude>> include;

  @override
  String get blockKey => 'include';

  @override
  Map<String, Object?> encode() => {
    'include': [for (final e in include) e.toTfJson()],
  };
}

/// `include` — derived from the provider schema description.
enum WorkspaceswebSessionLoggerEventFilterInclude implements TerraformEnum {
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

  const WorkspaceswebSessionLoggerEventFilterInclude(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `event_filter.all` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerEventFilterAll {
  const WorkspaceswebSessionLoggerEventFilterAll();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `log_configuration` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerLogConfiguration {
  const WorkspaceswebSessionLoggerLogConfiguration({this.s3});

  final List<WorkspaceswebSessionLoggerLogConfigurationS3>? s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `log_configuration.s3` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerLogConfigurationS3 {
  const WorkspaceswebSessionLoggerLogConfigurationS3({
    required this.bucket,
    this.bucketOwner,
    required this.folderStructure,
    this.keyPrefix,
    required this.logFileFormat,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String>? bucketOwner;

  final TfArg<WorkspaceswebSessionLoggerLogConfigurationS3FolderStructure>
  folderStructure;

  final TfArg<String>? keyPrefix;

  final TfArg<WorkspaceswebSessionLoggerLogConfigurationS3LogFileFormat>
  logFileFormat;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    if (bucketOwner != null) 'bucket_owner': bucketOwner!.toTfJson(),
    'folder_structure': folderStructure.toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
    'log_file_format': logFileFormat.toTfJson(),
  };
}

/// `folder_structure` — derived from the provider schema description.
enum WorkspaceswebSessionLoggerLogConfigurationS3FolderStructure
    implements TerraformEnum {
  flat('Flat'),
  nestedbydate('NestedByDate');

  const WorkspaceswebSessionLoggerLogConfigurationS3FolderStructure(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `log_file_format` — derived from the provider schema description.
enum WorkspaceswebSessionLoggerLogConfigurationS3LogFileFormat
    implements TerraformEnum {
  jsonlines('JSONLines'),
  json('Json');

  const WorkspaceswebSessionLoggerLogConfigurationS3LogFileFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_workspacesweb_session_logger`.
final class AwsWorkspaceswebSessionLogger extends Resource {
  static const String tfType = 'aws_workspacesweb_session_logger';

  AwsWorkspaceswebSessionLogger({
    required super.localName,
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
           if (additionalEncryptionContext != null)
             'additional_encryption_context': additionalEncryptionContext,
           if (customerManagedKey != null)
             'customer_managed_key': customerManagedKey,
           if (displayName != null) 'display_name': displayName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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
}
